package io.cubyz;

import java.util.Locale;
import com.sun.jna.Library;
import com.sun.jna.Native;

// Stores OS and arch-type to download the correct natives.

public class SystemInfo {
	public static final String OS_NAME = System.getProperty("os.name").toLowerCase(Locale.US);
	public static final String OS_ARCH = System.getProperty("os.arch").toLowerCase(Locale.US);
	public static final String OS_FAMILY = getOSFamily();
	
	public static final int JAVA_VERSION = Integer.parseInt(System.getProperty("java.version").replaceAll("^1\\.", "").replaceAll("\\..*", ""));
	
	private static String getOSFamily() {
		if(OS_NAME.contains("win")) return "windows";
		if(OS_NAME.contains("mac")) return "mac";
		return "unix";
	}

	public static boolean isArch(String arch) {
		if(arch.equals("amd64")) {
			return OS_ARCH.contains("amd64") || OS_ARCH.contains("x86_64");
		} else {
			return OS_ARCH.contains(arch);
		}
	}
	
	public static void changeWorkingDirectory(String newDir) {
		if(OS_FAMILY.equals("windows")) {
			MyKernel32.INSTANCE.SetCurrentDirectoryW(newDir.toCharArray());
		} else {
			MyCLibrary.INSTANCE.chdir(newDir);
		}
	}
	
	private static interface MyKernel32 extends Library {
		public MyKernel32 INSTANCE = (MyKernel32) Native.loadLibrary("Kernel32", MyKernel32.class);
	
		/** BOOL SetCurrentDirectory( LPCTSTR lpPathName ); */
		int SetCurrentDirectoryW(char[] pathName);
	}
	
	private interface MyCLibrary extends Library {
		MyCLibrary INSTANCE = (MyCLibrary) Native.loadLibrary("c", MyCLibrary.class);
	
		/** int chdir(const char *path); */
		int chdir( String path );
	}
	
}
