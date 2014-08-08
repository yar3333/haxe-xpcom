package xpcom.mozilla.modules.os;

import xpcom.mozilla.modules.os.File;

@:native("OS.Constants.Path") extern class PathConstants
{
	/**
	 * The full path to the directory containing the libraries of Firefox (libxul, libnss, etc.)
	 */
	public static var libDir(default, never) : String;
	/**
	 * The full path to the directory containing the profile of the current user. Some operating systems have both a local profile directory and a roaming profile directory. On such operating systems, this is the roaming profile directory.
	 */
	public static var profileDir(default, never) : String;
	/**
	 * The full path to the system temporary directory.
	 */
	public static var tmpDir(default, never) : String;
	/**
	 * The full path to the user's home directory.
	 */
	public static var homeDir(default, never) : String;
	/**
	 * The full path to the user's desktop directory.
	 */
	public static var desktopDir(default, never) : String;
	/**
	 * The full path to the user's application data directory.
	 */
	public static var winAppDataDir(default, never) : String;
	/**
	 * The full path to the "Programs" subdirectory in the user's start menu directory.
	 */
	public static var winStartMenuProgsDir(default, never) : String;
	/**
	 * The full path to the user's Library directory.
	 */
	public static var macUserLibDir(default, never) : String;
	/**
	 * The full path to the Applications directory.
	 */
	public static var macLocalApplicationsDir(default, never) : String;
}
