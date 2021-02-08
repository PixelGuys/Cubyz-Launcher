package io.cubyz.ui;

import java.awt.BorderLayout;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

import io.cubyz.OSInfo;
import io.cubyz.dependency.DependencyManager;
import io.cubyz.github.GithubAsset;
import io.cubyz.github.GithubRelease;

import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JScrollPane;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;
import java.net.URL;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JComboBox;
import javax.swing.GroupLayout;
import javax.swing.GroupLayout.Alignment;
import javax.swing.LayoutStyle.ComponentPlacement;

public class MainGUI extends JFrame implements ActionListener {

	private JPanel contentPane;
	private final JPanel playPanel = new JPanel();
	private final JPanel infoPanel = new JPanel();
	private final JPanel scrollPanel = new JPanel();
	private final JButton play = new JButton("Play");
	private final JScrollPane scrollPane = new JScrollPane(scrollPanel, JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED, JScrollPane.HORIZONTAL_SCROLLBAR_NEVER);
	private final JLabel latestVersions = new JLabel("Latest Versions:");
	private final JLabel currentVersion = new JLabel("Current Version:");
	private final JComboBox<String> comboBox = new JComboBox<String>();
	private final ReleaseInfoPanel[] releases;

	public MainGUI(GithubRelease[] releases) {
		super("Cubyz Launcher");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 800, 600);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(new BorderLayout(0, 0));
		
		contentPane.add(playPanel, BorderLayout.SOUTH);
		GroupLayout layout = new GroupLayout(playPanel);
		layout.setHorizontalGroup(
			layout.createParallelGroup(Alignment.LEADING)
				.addGroup(layout.createSequentialGroup()
					.addContainerGap()
					.addComponent(currentVersion)
					.addPreferredGap(ComponentPlacement.RELATED)
					.addComponent(comboBox, GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE, GroupLayout.PREFERRED_SIZE)
					.addPreferredGap(ComponentPlacement.RELATED, 535, Short.MAX_VALUE)
					.addComponent(play)
					.addContainerGap())
		);
		layout.setVerticalGroup(
			layout.createParallelGroup(Alignment.LEADING)
				.addGroup(Alignment.TRAILING, layout.createSequentialGroup()
					.addContainerGap(GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
					.addGroup(layout.createParallelGroup(Alignment.BASELINE)
						.addComponent(play)
						.addComponent(currentVersion)
						.addComponent(comboBox, GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE, GroupLayout.PREFERRED_SIZE)))
		);
		playPanel.setLayout(layout);
		
		for(GithubRelease release : releases) {
			comboBox.addItem(release.version);
		}
		
		play.addActionListener(this);

		contentPane.add(infoPanel, BorderLayout.CENTER);
		infoPanel.setLayout(new GridLayout(1, 1));
		
		infoPanel.add(scrollPane);
		
		scrollPane.setColumnHeaderView(latestVersions);
		scrollPane.getVerticalScrollBar().setUnitIncrement(16);
		int width = scrollPane.getWidth();
		scrollPanel.setLayout(new BoxLayout(scrollPanel, BoxLayout.Y_AXIS));
		
		this.releases = new ReleaseInfoPanel[releases.length];
		for(int i = 0; i < releases.length; i++) {
			this.releases[i] = new ReleaseInfoPanel(releases[i], this, width);
			scrollPanel.add(this.releases[i]);
		}
		this.releases[0].moreInfo.setSelected(true);
		setVisible(true);
	}

	// Listen if the play button is pressed:
	@Override
	public void actionPerformed(ActionEvent e) {
		// Search the selected release:
		GithubRelease selected = null;
		for(ReleaseInfoPanel release : releases) {
			if(release.release.version == comboBox.getSelectedItem()) {
				selected = release.release;
				break;
			}
		}
		// Check if the files already exist, otherwise download them:
		try {
			String path = URLDecoder.decode(MainGUI.class.getProtectionDomain().getCodeSource().getLocation().getPath(), "UTF-8");
			if(path.endsWith(".jar")) { // Make sure to cut off the last bit of the path if packaged inside a jar file.
				path = path.substring(0, path.lastIndexOf('/'));
			}
			File dir = new File(path+"/"+selected.version);
			if(!dir.exists()) {
				dir.mkdir();
			}
			File runnableJar = new File(dir.getAbsolutePath()+"/main.jar");
			if(!runnableJar.exists()) {
				// Find the correct executable jar:
				GithubAsset exec = null;
				for(GithubAsset asset : selected.assets) {
					if(asset.name.contains(".jar")) {
						exec = asset;
						break;
					}
				}
				if(exec == null) {
					JOptionPane.showMessageDialog(this, "Sorry. This version is not available for your OS. Please contact us on github or on our discord server.");
					return;
				}
				exec.downloadToFile(dir.getAbsolutePath()+"/main.jar");
			}
			// Download assets and addons:
			File assetsFolder = new File(dir.getAbsolutePath()+"/assets");
			if(!assetsFolder.exists()) {
				// Find the correct github asset:
				GithubAsset assets = null;
				for(GithubAsset asset : selected.assets) {
					if(asset.name.equals("assets.zip")) {
						assets = asset;
						break;
					}
				}
				// Maybe in future version the assets folder doesn't exist anymore? So just checking, to be sure.
				if(assets != null) {
					// Download and unzip the file:
					downloadAndUnzip(assets.url, dir.getAbsolutePath());
				}
			}
			File addonsFolder = new File(dir.getAbsolutePath()+"/addons");
			if(!addonsFolder.exists()) {
				// Find the correct github asset:
				GithubAsset addons = null;
				for(GithubAsset asset : selected.assets) {
					if(asset.name.equals("addons.zip")) {
						addons = asset;
						break;
					}
				}
				// Past versions of cubyz didn't have addons folder.
				if(addons != null) {
					// Download and unzip the file:
					downloadAndUnzip(addons.url, dir.getAbsolutePath());
				}
			}
			// Download libraries:
			GithubAsset pom = null;
			for(GithubAsset asset : selected.assets) {
				if(asset.name.equals("pom.xml")) {
					pom = asset;
					break;
				}
			}
			ArrayList<String> libs = DependencyManager.fetchDependencies(pom, path);
			// Put it all together as a classpath attribute:
			char classpathSeperator = OSInfo.OS_FAMILY.equals("windows") ? ';' : ':';
			String classpath = "";
			for(String lib : libs) {
				classpath += lib+classpathSeperator;
			}
			// Add the executable jar to the classpath:
			classpath += dir.getAbsolutePath()+"/main.jar";
			
			ProcessBuilder pb = new ProcessBuilder("java", "-cp", classpath, "io.cubyz.client.GameLauncher");
			pb.directory(dir);
			pb.redirectOutput(Redirect.INHERIT);
			pb.redirectError(Redirect.INHERIT);
			pb.start();
		} catch (IOException e1) {
			e1.printStackTrace();
		}
	}
	
	private static void downloadAndUnzip(String url, String outputPath) throws IOException {
		File destDir = new File(outputPath);
		if (!destDir.exists()) {
			destDir.mkdir();
		}
		ZipInputStream zipIn = new ZipInputStream(new URL(url).openStream());
		ZipEntry entry = zipIn.getNextEntry();
		// iterates over entries in the zip file
		while(entry != null) {
			String filePath = outputPath + File.separator + entry.getName();
			if(!entry.isDirectory()) {
				// if the entry is a file, extract it
				BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream(filePath));
				byte[] bytesIn = new byte[4096];
				int read = 0;
				while((read = zipIn.read(bytesIn)) != -1) {
					bos.write(bytesIn, 0, read);
				}
				bos.close();
			} else {
				// if the entry is a directory, make the directory
				File dir = new File(filePath);
				dir.mkdirs();
			}
			zipIn.closeEntry();
			entry = zipIn.getNextEntry();
		}
		zipIn.close();
	}
}
