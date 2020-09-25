package io.cubyz.github;

import java.awt.image.BufferedImage;
import java.net.URL;

import javax.imageio.ImageIO;

/**
 * A simple holder for the data of a github release asset.
 */
public class GithubAsset {
	String name;
	String url;
	BufferedImage downloadAsImage() {
		try {
		    URL url = new URL(this.url);
		    return ImageIO.read(url);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
