package io.cubyz.github;

import java.awt.image.BufferedImage;

/**
 * A simple holder for the data of a github release.
 */

public class GithubRelease {
	public boolean preRelease;
	public String date;
	public String name;
	public String version;
	public String description;
	public GithubAsset[] assets;
	private BufferedImage image = null;
	public BufferedImage getImage() {
		if(image == null) {
			for(GithubAsset asset : assets) {
				if(asset.name.equals("image.png")) {
					image = asset.downloadAsImage();
				}
			}
		}
		return image;
	}
}
