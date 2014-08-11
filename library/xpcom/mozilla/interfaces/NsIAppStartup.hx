package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAppStartup") extern class NsIAppStartup extends NsISupports
{
	public static inline function getService() : NsIAppStartup
	{
		return xpcom.Components.classes[cast "@mozilla.org/toolkit/app-startup;1"].getService(NsIAppStartup);
	}
	
	/**
	 * Attempt to quit if all windows are closed.
	 */
	static inline var eConsiderQuit = 0x01;
	/**
	 * Try to close all windows, then quit if successful.
	 */
	static inline var eAttemptQuit = 0x02;
	/**
	 * Force all windows to close, then quit.
	 */
	static inline var eForceQuit = 0x03;
	/**
	 * Restart the application after quitting. The application will be restarted with the same profile and an empty command line.
	 */
	static inline var eRestart = 0x10;
	
	/**
	 * true if the startup process was interrupted by an interactive prompt. This can be used, for example, when doing performance testing of the startup process to discount numbers for tests that were interrupted by a user prompt.
	 */
	var interrupted : Bool;
	/**
	 * Getter for "native application support." Read only. Obsolete since Gecko 1.9.1
	 */
	var nativeAppSupport : NsINativeAppSupport;
	
	function createHiddenWindow() : Void;
	function createStartupState(aWindowWidth:Long, aWindowHeight:Long) : Bool;
	function destroyHiddenWindow() : Void;
	function doProfileStartup(aCmdLineService:NsICmdLineService, canInteract:Bool) : Void;
	function ensure1Window(aCmdLineService:NsICmdLineService) : Void;
	function enterLastWindowClosingSurvivalArea() : Void;
	function exitLastWindowClosingSurvivalArea() : Void;
	function getStartupInfo() : Void;
	function hideSplashScreen() : Void;
	function initialize(nativeAppSupportOrSplashScreen:NsISupports) : Void;
	function quit(aMode:PRUint32) : Void;
	function run() : Void;
}
