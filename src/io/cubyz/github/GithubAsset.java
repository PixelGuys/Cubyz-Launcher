package io.cubyz.github;

import java.awt.image.BufferedImage;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URL;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;

import javax.imageio.ImageIO;

/**
 * A simple holder for the data of a github release asset.
 */
public class GithubAsset {
	public String name;
	public String url;
	BufferedImage downloadAsImage() {
		try {
		    URL url = new URL(this.url);
		    return ImageIO.read(url);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public void downloadToFile(String file) {
		try {
			URL website = new URL(url);
			ReadableByteChannel rbc = Channels.newChannel(website.openStream());
			FileOutputStream fos = new FileOutputStream(file);
			fos.getChannel().transferFrom(rbc, 0, Long.MAX_VALUE);
			fos.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
