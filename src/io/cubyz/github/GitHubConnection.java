package io.cubyz.github;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import java.net.URL;
import java.net.URLClassLoader;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;

import javax.swing.JOptionPane;

import io.cubyz.SystemInfo;
import io.cubyz.dependency.DependencyManager;
import io.cubyz.util.DownloadAndFileManager;

/**
 * Connect to github and get an array of all existing releases.
 */
public class GitHubConnection {
	/**
	 * Downloads the general information about every available release.
	 * Creates new folders for the results.
	 */
	public static void downloadReleaseData() {
		try {
			for(int i = 1; ; i++) {
				// If the folder already exists, there is no need to try and download the data again:
				File file = new File(System.getProperty("user.home") + "/.cubyz/" + "R" + i + "/release_info");
				if(file.exists()) continue;
				
				// Tests if the version `i` is available if so reads the file, otherwise throws an Exception.
				String link = "https://github.com/PixelGuys/Cubyz/releases/download/R"+i+"/release_info";
				URL url = new URL(link);
				ReadableByteChannel rbc = Channels.newChannel(url.openStream());
				new File(System.getProperty("user.home") + "/.cubyz/" + "R" + i).mkdirs(); // Create the directory.
				// Stores the release info:
				FileOutputStream fos = new FileOutputStream(file);
				fos.getChannel().transferFrom(rbc, 0, Long.MAX_VALUE);
				fos.close();
			}
		} catch(Exception e) {}
	}
	/**
	 * Reads the title image of a release to be displayed alongside the changelog.
	 */
	public static BufferedImage readOrDownloadImage(File folder) {
		File imageLocation = new File(folder, "image.png");
		if(!imageLocation.exists()) {
			// Download the image:
			String tag = folder.getName();
			String link = "https://github.com/PixelGuys/Cubyz/releases/download/"+tag+"/image.png";
			try {
				DownloadAndFileManager.downloadToFile(imageLocation, link);
			} catch(IOException e) {
				System.err.println("Couldn't load the image of release \""+tag+"\"");
			}
		}
		return DownloadAndFileManager.readImage(imageLocation);
	}
	/**
	 * Downloads the executables, assets and such, if necessary and launches the jar file.
	 */
	public static void downloadAndLaunchRelease(File folder) {
		File jarLocation = new File(folder, "main.jar");
		String tag = folder.getName();
		if(!jarLocation.exists()) {
			// The game files need to be downloaded.
			
			// Addons folder:
			String link = "https://github.com/PixelGuys/Cubyz/releases/download/"+tag+"/addons.zip";
			try {
				DownloadAndFileManager.downloadAndUnzip(folder, link);
			} catch(IOException e) {
				// That's normal behaviour. Not every release needs this folder.
			}
			
			// Assets folder:
			link = "https://github.com/PixelGuys/Cubyz/releases/download/"+tag+"/assets.zip";
			try {
				DownloadAndFileManager.downloadAndUnzip(folder, link);
			} catch(IOException e) {
				// That's normal behaviour. Not every release needs this folder.
			}
			
			// Dependencies:
			link = "https://github.com/PixelGuys/Cubyz/releases/download/"+tag+"/pom.xml";
			DependencyManager.fetchDependencies(link, System.getProperty("user.home") + "/.cubyz", new File(folder, "pom.xml"));
			
			// And finally the jar file. This is downloaded last to reduce potential issues when the user closes the application before everything is done.
			link = "https://github.com/PixelGuys/Cubyz/releases/download/"+tag+"/Cubyz.jar";
			try {
				DownloadAndFileManager.downloadToFile(jarLocation, link);
			} catch(IOException e) {
				try {
					// The old version 0.6.0 packaged the libraries into the jar file, so there are multiple files for each OS and arch:
					if(SystemInfo.OS_FAMILY.equals("windows")) {
						if(SystemInfo.OS_ARCH.contains("64")) {
							link = "https://github.com/PixelGuys/Cubyz/releases/download/"+tag+"/Cubyz_win_64.jar";
						} else {
							link = "https://github.com/PixelGuys/Cubyz/releases/download/"+tag+"/Cubyz_win_x86.jar";
						}
						DownloadAndFileManager.downloadToFile(jarLocation, link);
					} else if(SystemInfo.OS_FAMILY.equals("unix")) {
						if(SystemInfo.OS_ARCH.contains("64")) {
							link = "https://github.com/PixelGuys/Cubyz/releases/download/"+tag+"/Cubyz_win_64.jar";
							DownloadAndFileManager.downloadToFile(jarLocation, link);
						}
					}
				} catch(IOException e2) {}
			}
		}
		if(!jarLocation.exists()) {
			// Something went wrong in the download.
			JOptionPane.showInternalMessageDialog(null, "Couldn't download file. Please check your internet connection.", "information", JOptionPane.INFORMATION_MESSAGE);
			return;
		}
		
		// Build the classpath:
		ArrayList<String> libs = DependencyManager.fetchDependencies("https://github.com/PixelGuys/Cubyz/releases/download/"+tag+"/pom.xml", System.getProperty("user.home") + "/.cubyz", new File(folder, "pom.xml"));

		int minJavaVersion = DependencyManager.findJavaVersion(new File(folder, "pom.xml"));
		if(minJavaVersion > SystemInfo.JAVA_VERSION) {
			JOptionPane.showInternalMessageDialog(null, "You need to install a higher java version to run this version of Cubyz. Your current version is java "+SystemInfo.JAVA_VERSION+". You require at least java "+minJavaVersion+".", "Error", JOptionPane.INFORMATION_MESSAGE);
			return;
		}
		
		// Put it all together as a classpath attribute:
		ArrayList<String> classPath = new ArrayList<>();
		for(String lib : libs) {
			classPath.add(lib);
		}
		// Add the executable jar to the classpath:
		classPath.add(folder.getAbsolutePath()+"/main.jar");
		runGame(classPath, folder.getAbsolutePath()+"/main.jar", folder.getAbsolutePath());
		System.gc(); // GC away the loaded classes.
	}
	
	public static void runGame(ArrayList<String> classPath, String pathToGame, String folder) {
		try {
			JarFile jarFile = new JarFile(pathToGame);
			Enumeration<JarEntry> jarEntries = jarFile.entries();
			URL[] urls = new URL[classPath.size()];
			for(int i = 0; i < classPath.size(); i++) {
				urls[i] =new URL("jar:file:" + classPath.get(i) + "!/");
			}
			URLClassLoader cl = URLClassLoader.newInstance(urls);
	
			// Find the main class:
			Class<?> main = null;
			while (jarEntries.hasMoreElements()) {
				JarEntry je = jarEntries.nextElement();
				if(je.getName().endsWith("GameLauncher.class")) {
					// -6 because of .class
					String className = je.getName().substring(0, je.getName().length()-6);
					className = className.replace('/', '.');
					main = cl.loadClass(className);
					break;
				}
			}
			jarFile.close();
			
			if(main == null) {
				System.out.println("Couldn't find GameLauncher class.");
				return;
			}
			String oldCWD = System.getProperty("user.dir");
			SystemInfo.changeWorkingDirectory(folder);
			try {
				Method meth = main.getMethod("main", String[].class);
				meth.invoke(null, (Object) new String[0]);
			} catch(Exception e) {
				e.printStackTrace();
			}
			SystemInfo.changeWorkingDirectory(oldCWD);
		} catch(IOException | ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
}
