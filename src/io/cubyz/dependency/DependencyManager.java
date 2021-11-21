package io.cubyz.dependency;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URL;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;
import java.util.ArrayList;
import java.util.HashMap;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import io.cubyz.OSInfo;
import io.cubyz.util.DownloadAndFileManager;
import io.cubyz.util.SimpleMap;

/**
 * Downloads dependencies from information in the pom.xml.
 */

public class DependencyManager {
	/**
	 * The w3c API doesn't allow me to manipulate the tree easily, so I have to parse it into my own data structure.
	 */
	private static class MyNode {
		String name = "";
		String value = "";
		ArrayList<MyNode> childs = new ArrayList<>();
		public MyNode(String name) {
			this.name = name;
		}
		public void add(MyNode node) {
			childs.add(node);
		}
		public MyNode get(String name) {
			for(MyNode node : childs) {
				if(node.name.equals(name)) return node;
			}
			return new MyNode(name); // Make sure there are no nullpointer exceptions if the pom is not as expected.
		}
	}
	private static class Dependency {
		String groupId, artifactId, version, classifier;
		public Dependency(String groupId, String artifactId, String version, String classifier) {
			this.groupId = groupId;
			this.artifactId = artifactId;
			this.version = version;
			this.classifier = classifier;
		}
	}
	private static MyNode root;
	public static ArrayList<String> fetchDependencies(String pomURL, String absolutePath, File pom) {
		if(!absolutePath.endsWith("/")) absolutePath += "/";
		ArrayList<String> paths = new ArrayList<>(); // Paths to dependency location on disk.
		try {
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			factory.setIgnoringComments(true);
			factory.setIgnoringElementContentWhitespace(true);
			DocumentBuilder builder = factory.newDocumentBuilder();
			Document doc = builder.parse(DownloadAndFileManager.downloadToStream(pomURL, pom));
			parse(doc);
			insertVariables();
			ArrayList<Dependency> dependencies = getDependencyList();
			for(Dependency dep : dependencies) {
				String path = absolutePath+"lib/"+dep.groupId+"."+dep.artifactId+"."+dep.version;
				if(!dep.classifier.isEmpty()) path += "-"+dep.classifier;
				path += ".jar";
				paths.add(path);
			}
			downloadDependencies(dependencies, paths, root.get("project").get("repositories").get("repository").get("url").value);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return paths;
	}

	public static String findMainClass() {
		MyNode plugins = root.get("project").get("build").get("plugins");
		for(MyNode plugin : plugins.childs) {
			if(plugin.get("artifactId").value.equals("maven-jar-plugin")) {
				return plugin.get("configuration").get("archive").get("manifest").get("mainClass").value;
			}
		}
		return "io.cubyz.client.GameLauncher";
	}
	
	private static void downloadDependencies(ArrayList<Dependency> dependencies, ArrayList<String> paths, String url) {
		for(int i = 0; i < dependencies.size(); i++) {
			// Check if the library is already present, otherwise download it:
			File file = new File(paths.get(i));
			if(!file.exists()) {
				Dependency dep = dependencies.get(i);
				file.getParentFile().mkdirs();
				try {
					String depURL = url + "/" + dep.groupId.replaceAll("\\.", "/") + "/" + dep.artifactId.replaceAll("\\.", "/") + "/" + dep.version + "/" + dep.artifactId + "-" + dep.version;
					if(!dep.classifier.isEmpty()) depURL += "-"+dep.classifier;
					depURL += ".jar";
					URL website = new URL(depURL);
					ReadableByteChannel rbc = Channels.newChannel(website.openStream());
					FileOutputStream fos = new FileOutputStream(file);
					fos.getChannel().transferFrom(rbc, 0, Long.MAX_VALUE);
					fos.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}
	
	private static ArrayList<Dependency> getDependencyList() {
		// First get predefined versions from the dependencyManagement tag:
		HashMap<String, String> versions = new HashMap<String, String>();
		MyNode dependencyManagement = root.get("project").get("dependencyManagement").get("dependencies");
		for(MyNode dependency : dependencyManagement.childs) {
			versions.put(dependency.get("groupId").value, dependency.get("version").value);
		}
		
		ArrayList<Dependency> dependencies = new ArrayList<>();
		MyNode deps = root.get("project").get("dependencies");
		for(MyNode dependency : deps.childs) {
			Dependency dep = new Dependency(dependency.get("groupId").value, dependency.get("artifactId").value, dependency.get("version").value, dependency.get("classifier").value);
			if(dep.version.isEmpty()) {
				dep.version = versions.get(dep.groupId);
			}
			dependencies.add(dep);
		}
		return dependencies;
	}
	
	private static void insertVariables() {
		SimpleMap<String, String> variables = new SimpleMap<String, String>();
		// Get all variables:
		MyNode project = root.get("project");
		// properties:
		addProperties(variables, project.get("properties"));
		// conditional properties (profiles):
		MyNode profiles = project.get("profiles");
		for(MyNode profile : profiles.childs) {
			MyNode activation = profile.get("activation");
			if(checkActivation(activation)) {
				addProperties(variables, profile.get("properties"));
			}
		}
		
		// Replace all variables:
		replaceVariables(variables, root);
	}
	
	private static void replaceVariables(SimpleMap<String, String> variables, MyNode node) {
		// Replace variables:
		for(int i = 0; i < variables.values.size(); i++) {
			String key = variables.keys.get(i);
			String value = variables.values.get(i);
			node.value = node.value.replace("${"+key+"}", value);
		}
		// Go deeper:
		for(MyNode child: node.childs) {
			replaceVariables(variables, child);
		}
	}
	
	private static void addProperties(SimpleMap<String, String> variables, MyNode properties) {
		for(MyNode property : properties.childs) {
			variables.add(property.name, property.value);
		}
	}
	
	private static boolean checkActivation(MyNode activation) {
		boolean activated = true;
		for(MyNode condition : activation.childs) {
			activated &= checkCondition(condition);
		}
		return activated;
	}
	
	private static boolean checkCondition(MyNode condition) {
		if(condition.name.equals("os")) {
			boolean ret = true;
			for(MyNode osProperty : condition.childs) {
				if(osProperty.name.equals("family")) {
					ret &= OSInfo.OS_FAMILY.equals(osProperty.value.toLowerCase());
				} else if(osProperty.name.equals("arch")) {
					ret &= OSInfo.isArch(osProperty.value.toLowerCase());
				} else if(osProperty.name.equals("name")) {
					ret &= OSInfo.OS_NAME.contains(osProperty.value.toLowerCase());
				} else {
					System.out.println("Unsupported OS property "+osProperty.name+"! Assuming it is false.");
					return false;
				}
			}
			return ret;
		} else {
			System.out.println("Unsupported activation condition "+condition.name+"! Assuming it is false.");
			return false;
		}
	}
	
	private static void parse(Document doc) {
		root = new MyNode("");
		parse(root, doc.getChildNodes());
	}
	
	private static void parse(MyNode parent, NodeList nodes) {
		for(int i = 0; i < nodes.getLength(); i++) {
			Node node = nodes.item(i);
			if(node.getNodeName().equals("#text")) {
				if(!node.getNodeValue().trim().isEmpty()) {
					parent.value = node.getNodeValue();
				}
			} else {
				MyNode myNode = new MyNode(node.getNodeName());
				parent.add(myNode);
				parse(myNode, node.getChildNodes());
			}
		}
	}
}
