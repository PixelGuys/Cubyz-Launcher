package io.cubyz;

// Stores OS and arch-type to download the correct natives.

public class OSInfo {
    public static final String OS_NAME = System.getProperty("os.name").toLowerCase();
    public static final String OS_ARCH = System.getProperty("os.arch").toLowerCase();
    public static final String OS_FAMILY = getOSFamily();
    private static String getOSFamily() {
    	if(OS_NAME.toLowerCase().contains("win")) return "windows";
    	if(OS_NAME.toLowerCase().contains("mac")) return "mac";
    	return "unix";
    }
}
