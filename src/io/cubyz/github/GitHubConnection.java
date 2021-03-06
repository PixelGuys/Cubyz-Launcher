package io.cubyz.github;
import java.io.ByteArrayOutputStream;
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
	 * Function to remove comments(as [[comment]]) from the description and to ensure the result isn't null.
	 */
	private static String getDescription(JsonElement e) {
		if(e.isJsonNull()) return "";
		return e.getAsString().replaceAll("\\[\\[(.|\\R)*\\]\\]", "").replace("\n", "<br>");
	}
	/**
	 * Connect to github and get an array of all existing releases.
	 */
	public static GithubRelease[] downloadReleaseData(String link) {
		String json = "";
		try {
			URL url = new URL(link);
			HttpsURLConnection connection = (HttpsURLConnection) url.openConnection();
			connection.connect();
			InputStream stream = connection.getInputStream();
			json = new String(readAllBytes(stream));
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
        	release.version = obj.get("tag_name").getAsString();
        	release.description = getDescription(obj.get("body"));
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
        return list.toArray(new GithubRelease[0]);
	}
	public static byte[] readAllBytes(InputStream inputStream) throws IOException {
		final int bufLen = 1024;
		byte[] buf = new byte[bufLen];
		int readLen;

		ByteArrayOutputStream outputStream = new ByteArrayOutputStream();

		while ((readLen = inputStream.read(buf, 0, bufLen)) != -1)
			outputStream.write(buf, 0, readLen);

		return outputStream.toByteArray();
	}
}
