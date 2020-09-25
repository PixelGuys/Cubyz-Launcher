package io.cubyz;

import io.cubyz.github.GitHubConnection;
import io.cubyz.ui.MainGUI;

public class Main {
	public static void main(String[] args) {
		new MainGUI(GitHubConnection.downloadReleaseData());
	}
}
