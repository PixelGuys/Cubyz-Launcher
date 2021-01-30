package io.cubyz;

import io.cubyz.github.GitHubConnection;
import io.cubyz.ui.MainGUI;

public class Main {
	public static void main(String[] args) {
		AutoUpdater.tryUpdate();
		new MainGUI(GitHubConnection.downloadReleaseData("https://api.github.com/repos/PixelGuys/Cubyz/releases?per_page=100"));
	}
}
