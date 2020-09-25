package io.cubyz.ui;

import java.awt.BorderLayout;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

import io.cubyz.github.GithubRelease;

import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JScrollPane;
import java.awt.GridLayout;
import javax.swing.JLabel;
import javax.swing.JComboBox;

public class MainGUI extends JFrame {

	private JPanel contentPane;
	private final JPanel playPanel = new JPanel();
	private final JPanel infoPanel = new JPanel();
	private final JPanel scrollPanel = new JPanel();
	private final JButton btnPlay = new JButton("Play");
	private final JScrollPane scrollPane = new JScrollPane(scrollPanel, JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED, JScrollPane.HORIZONTAL_SCROLLBAR_NEVER);
	private final JLabel latestVersions = new JLabel("Latest Versions:");
	private final JLabel currentVersion = new JLabel("Current Version: ");
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
		playPanel.setLayout(new GridLayout(0, 3, 0, 0));
		playPanel.add(currentVersion);
		playPanel.add(comboBox);
		playPanel.add(btnPlay);
		
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

}
