package io.cubyz.util;

import java.awt.image.BufferedImage;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;
import java.util.Scanner;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

import javax.imageio.ImageIO;

public class DownloadAndFileManager {
	/**
	 * Downloads a file and stores it locally.
	 * @param file
	 * @param url
	 * @throws IOException
	 */
	public static void downloadToFile(File file, String url) throws IOException {
		URL website = new URL(url);
		ReadableByteChannel rbc = Channels.newChannel(website.openStream());
		FileOutputStream fos = new FileOutputStream(file);
		fos.getChannel().transferFrom(rbc, 0, Long.MAX_VALUE);
		fos.close();
	}
	/**
	 * Downloads a file from the web(if not present in the file system) and puts it into a stream.
	 * @return
	 */
	public static InputStream downloadToStream(String url, File file) throws IOException {
		if(file.exists()) {
			return new FileInputStream(file);
		}
		downloadToFile(file, url);
		return new FileInputStream(file);
	}
	/**
	 * Downloads a zip file und unzips into `outputFolder`.
	 * @param outputPath
	 * @param url
	 * @throws IOException
	 */
	public static void downloadAndUnzip(File outputFolder, String url) throws IOException {
		if (!outputFolder.exists()) {
			outputFolder.mkdir();
		}
		ZipInputStream zipIn = new ZipInputStream(new URL(url).openStream());
		ZipEntry entry = zipIn.getNextEntry();
		// iterates over entries in the zip file
		while(entry != null) {
			String filePath = outputFolder.getAbsolutePath() + File.separator + entry.getName();
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
	public static BufferedImage readImage(File file) {
		try {
			return ImageIO.read(file);
		} catch(IOException e) {
			return new BufferedImage(0, 0, 0);
		}
	}
	public static String readToString(File file) {
		String result = "";
		try (Scanner s = new Scanner(file).useDelimiter("\\Z")) {
			result = s.next();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		return result;
	}
}
