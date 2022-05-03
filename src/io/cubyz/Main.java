package io.cubyz;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintStream;
import java.net.URL;

import javax.swing.JOptionPane;

import io.cubyz.github.GitHubConnection;
import io.cubyz.ui.MainGUI;

public class Main {
	public static final int RELEASE_NUMBER = 8;
	
	public static void main(String[] args) {
		// Change System.out to write to a file.
		PrintStream log;
		try {
			new File(System.getProperty("user.home") + "/.cubyz").mkdirs();
			System.out.println("Writing log file into " + System.getProperty("user.home") + "/.cubyz/launcher.log");
			log = new PrintStream(new File(System.getProperty("user.home") + "/.cubyz/launcher.log"));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
			return;
		}
		System.setOut(log);
		System.setErr(log);
		// Check if a new version is available:
		try {
			String link = "https://github.com/PixelGuys/Cubyz-Launcher/releases/download/R"+(RELEASE_NUMBER + 1)+"/cubyz-launcher.jar";
			URL url = new URL(link);
			url.openStream().close();
			// If no exception was thrown, there is a new launcher version.
			// Prompt the user to update:
			JOptionPane.showMessageDialog(null, "A new update of launcher is available.", "information", JOptionPane.INFORMATION_MESSAGE);
		} catch(Exception e) {}
		GitHubConnection.downloadReleaseData();
		new MainGUI();
	}
}
