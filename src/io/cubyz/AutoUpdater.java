package io.cubyz;

import java.io.File;
import java.lang.ProcessBuilder.Redirect;
import java.net.URLDecoder;

import io.cubyz.github.GitHubConnection;
import io.cubyz.github.GithubRelease;
import io.cubyz.ui.MainGUI;

public class AutoUpdater {
	public static final String versionString = "0.1";
	public static void tryUpdate() {
		try {
			GithubRelease newest = GitHubConnection.downloadReleaseData("https://api.github.com/repos/PixelGuys/Cubyz-Launcher/releases?per_page=1")[0];
			if(!newest.version.equals(versionString)) {
				// Update if a newer version is available:
				System.out.println("Updating launcher...");
				String path = URLDecoder.decode(MainGUI.class.getProtectionDomain().getCodeSource().getLocation().getPath(), "UTF-8");
				newest.assets[0].downloadToFile(path+"/launcher.jar");
				ProcessBuilder pb = new ProcessBuilder("java", "-jar", path+"/launcher.jar");
				pb.directory(new File(path));
				pb.redirectOutput(Redirect.INHERIT);
				pb.redirectError(Redirect.INHERIT);
				pb.start();
				System.exit(1);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}
