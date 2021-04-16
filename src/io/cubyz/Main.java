package io.cubyz;

import javax.swing.JOptionPane;

import io.cubyz.github.GitHubConnection;
import io.cubyz.github.GithubRelease;
import io.cubyz.ui.MainGUI;

public class Main {
	public static final String versionString = "0.2.1";
	public static void main(String[] args) {
		// Check if a new version is available:
		try {
			GithubRelease newest = GitHubConnection.downloadReleaseData("https://api.github.com/repos/PixelGuys/Cubyz-Launcher/releases?per_page=1")[0];
			if(!newest.version.equals(versionString)) {
				// Prompt the user to update:
				JOptionPane.showInternalMessageDialog(null, "A new update of launcher is available.", "information", JOptionPane.INFORMATION_MESSAGE);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		new MainGUI(GitHubConnection.downloadReleaseData("https://api.github.com/repos/PixelGuys/Cubyz/releases?per_page=100"));
	}
}
