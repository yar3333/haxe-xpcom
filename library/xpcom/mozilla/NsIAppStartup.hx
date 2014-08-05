package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIAppStartup") extern class NsIAppStartup extends NsISupports
{
	public static inline function getService() : NsIAppStartup return Components.classes[cast "@mozilla.org/toolkit/app-startup;1"].getService(Components.interfaces.nsIAppStartup);
	
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
