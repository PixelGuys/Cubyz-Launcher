package io.cubyz.github;

/**
 * A simple holder for the data of a github release.
 */

public class GithubRelease {
	public boolean preRelease;
	public String date;
	public String name;
	public String description;
	public GithubAsset[] assets;
}
