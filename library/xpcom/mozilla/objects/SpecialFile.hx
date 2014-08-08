package xpcom.mozilla.objects;

class SpecialFile
{
	/**
	 * %CurProcD%/chrome
	 */
	public static inline var AChrom = "AChrom";
	/**
	 * %CurProcD%/plugins
	 */
	public static inline var APlugns = "APlugns";
	/**
	 * %CurProcD%/components
	 */
	public static inline var ComsD = "ComsD";
	/**
	 * Current working directory (usually the application's installation directory).
	 */
	public static inline var CurProcD = "CurProcD";
	/**
	 * The root of the default profile directory (for example /root/.mozilla).
	 */
	public static inline var DefProfRt = "DefProfRt";
	/**
	 * %CurProcD%/defaults
	 */
	public static inline var DefRt = "DefRt";
	/**
	 * The user's desktop directory (for example ~/Desktop on Linux or Mac OS X, C:\Documents and Settings\username\Desktop on Windows).
	 */
	public static inline var Desk = "Desk";
	/**
	 * The default Downloads directory (for example, ~/Downloads on Mac OS X).
	 */
	public static inline var DfltDwnld = "DfltDwnld";
	/**
	 * The user's home directory (for example, /home/username).
	 */
	public static inline var Home = "Home";
	/**
	 * %installation%/defaults/pref
	 */
	public static inline var PrfDef = "PrfDef";
	/**
	 * The profile directory.
	 */
	public static inline var ProfD = "ProfD";
	/**
	 * %installation%/defaults/profile
	 */
	public static inline var ProfDefNoLoc = "ProfDefNoLoc";
	/**
	 * Local Settings on Windows; where the network cache and fastload files are stored.
	 */
	public static inline var ProfLD = "ProfLD";
	/**
	 * User Start menu programs directory (for example, C:\Documents and Settings\username\Start Menu\Programs). This is a Windows-specific value.
	 */
	public static inline var Progs = "Progs";
	/**
	 * The operating system's temporary files directory (for example, /tmp on Mac OS X and Linux).
	 */
	public static inline var TmpD = "TmpD";
	/**
	 * The user chrome directory in their profile: %profile%/chrome.
	 */
	public static inline var UChrm = "UChrm";
	/**
	 * The application directory in a XULRunner application.
	 */
	public static inline var ResourceApp = "resource:app";
}