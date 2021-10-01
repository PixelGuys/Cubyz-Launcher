package io.cubyz;

import java.net.URL;

import javax.swing.JOptionPane;

import io.cubyz.github.GitHubConnection;
import io.cubyz.ui.MainGUI;

public class Main {
	public static final int RELEASE_NUMBER = 2;
	public static void main(String[] args) {
		// Check if a new version is available:
		try {
			String link = "https://github.com/PixelGuys/Cubyz-Launcher/releases/download/R"+(RELEASE_NUMBER + 1)+"/cubyz-launcher.jar";
			URL url = new URL(link);
			url.openStream().close();
			// If no exception was thrown, there is a new launcher version.
			// Prompt the user to update:
			JOptionPane.showInternalMessageDialog(null, "A new update of launcher is available.", "information", JOptionPane.INFORMATION_MESSAGE);
		} catch(Exception e) {}
		GitHubConnection.downloadReleaseData();
		new MainGUI();
	}
}
