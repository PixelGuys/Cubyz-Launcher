package io.cubyz;

// Stores OS and arch-type to download the correct natives.

public class OSInfo {
	public static final String OS;
	public static final String ARCH;
	
	static {
		String os = System.getProperty("os.name").toLowerCase();
		if(os.contains("linux")) OS = "linux";
		else if(os.contains("windows")) OS = "win";
		else if(os.contains("mac")) OS = "mac";
		else throw new java.lang.ExceptionInInitializerError("Unsupported Operation system: "+os);
		String archType = System.getProperty("os.arch");
		if(archType.contains("64")) ARCH = "64";
		else if(archType.contains("x86")) ARCH = "x86";
		else throw new java.lang.ExceptionInInitializerError("Unsupported processor architecture: "+archType);
	}
}
