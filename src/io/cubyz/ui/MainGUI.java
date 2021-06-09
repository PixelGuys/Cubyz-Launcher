package io.cubyz.ui;

import java.awt.BorderLayout;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

import io.cubyz.github.GitHubConnection;

import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JScrollPane;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;

import javax.swing.JLabel;
import javax.swing.JComboBox;
import javax.swing.GroupLayout;
import javax.swing.GroupLayout.Alignment;
import javax.swing.LayoutStyle.ComponentPlacement;

@SuppressWarnings("serial")
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
	private final ArrayList<ReleaseInfoPanel> releases = new ArrayList<>();

	public MainGUI() {
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
		
		play.addActionListener(this);

		contentPane.add(infoPanel, BorderLayout.CENTER);
		infoPanel.setLayout(new GridLayout(1, 1));
		
		infoPanel.add(scrollPane);
		
		scrollPane.setColumnHeaderView(latestVersions);
		scrollPane.getVerticalScrollBar().setUnitIncrement(16);
		int width = scrollPane.getWidth();
		scrollPanel.setLayout(new BoxLayout(scrollPanel, BoxLayout.Y_AXIS));
		
		// Get the release selection:
		File home = new File(System.getProperty("user.home") + "/.cubyz");
		for(File file : home.listFiles()) {
			if(new File(file, "release_info").exists()) {
				releases.add(new ReleaseInfoPanel(new File(file, "release_info"), this, width));
			}
		}
		releases.sort(new Comparator<ReleaseInfoPanel>() {
			@Override
			public int compare(ReleaseInfoPanel r1, ReleaseInfoPanel r2) {
				return -r1.folder.getName().compareTo(r2.folder.getName());
			}
		});
		releases.get(0).moreInfo.setSelected(true);
		
		// Add the version selection:
		for(ReleaseInfoPanel release : releases) {
			scrollPanel.add(release);
			comboBox.addItem(release.tag);
		}
		
		setVisible(true);
	}

	// Listen if the play button is pressed:
	@Override
	public void actionPerformed(ActionEvent e) {
		// Search the selected release:
		ReleaseInfoPanel selected = null;
		for(ReleaseInfoPanel release : releases) {
			if(release.tag == comboBox.getSelectedItem()) {
				selected = release;
				break;
			}
		}
		
		if(selected != null)
			GitHubConnection.downloadAndLaunchRelease(selected.folder);
	}
}
