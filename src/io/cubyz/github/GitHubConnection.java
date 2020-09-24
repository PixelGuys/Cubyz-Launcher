package io.cubyz.github;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;

import javax.net.ssl.HttpsURLConnection;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

/**
 * Connect to github and get an array of all existing releases.
 */
public class GitHubConnection {
	/**
	 * @return The string value of this JsonObject or "" if json is null.
	 */
	private static String getJsonAsString(JsonElement e) {
		if(e.isJsonNull()) return "";
		return e.getAsString();
	}
	/**
	 * Connect to github and get an array of all existing releases.
	 */
	public static GithubRelease[] downloadReleaseData() {
		String json = "";
		try {
			URL url = new URL("https://api.github.com/repos/PixelGuys/Cubyz/releases?per_page=100");
			HttpsURLConnection connection = (HttpsURLConnection) url.openConnection();
			connection.connect();
			InputStream stream = connection.getInputStream();
			json = new String(stream.readAllBytes());
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		JsonElement jo = JsonParser.parseString(json);
        JsonArray jsonArray = jo.getAsJsonArray();
        ArrayList<GithubRelease> list = new ArrayList<>();
        jsonArray.forEach((elem) -> {
        	JsonObject obj = elem.getAsJsonObject();
        	GithubRelease release = new GithubRelease();
        	release.preRelease = obj.get("prerelease").getAsBoolean();
        	release.date = obj.get("published_at").getAsString();
        	release.name = obj.get("name").getAsString();
        	release.description = getJsonAsString(obj.get("body"));
        	ArrayList<GithubAsset> assets = new ArrayList<>();
        	obj.get("assets").getAsJsonArray().forEach((elem2) -> {
            	JsonObject obj2 = elem2.getAsJsonObject();
            	GithubAsset asset = new GithubAsset();
            	asset.name = obj2.get("name").getAsString();
            	asset.url = obj2.get("browser_download_url").getAsString();
            	assets.add(asset);
        	});
        	release.assets = assets.toArray(new GithubAsset[0]);
        	list.add(release);
        });
        for(GithubRelease release : list) {
        	System.out.println(release.preRelease+" "+release.date+" "+release.name+" "+release.description);
        	for(GithubAsset asset : release.assets) {
        		System.out.println("    "+asset.name+" "+asset.url);
        	}
        }
        return list.toArray(new GithubRelease[0]);
	}
	
	public static void main(String[] args) {
		downloadReleaseData();
	}
}
