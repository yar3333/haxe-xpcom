package xpcom.mozilla;

import xpcom.types.*;

@:native("amIInstallTrigger") extern class AmIInstallTrigger extends NsISupports
{
	function enabled() : Bool;
	function install(aArgs:NsIVariant, ?aCallback:AmIInstallCallback) : Bool;
	function installChrome(aType:PRUint32, aUrl:AString, aSkin:AString) : Bool;
	function startSoftwareUpdate(aUrl:AString, ?aFlags:PRInt32) : Bool;
	function updateEnabled() : Bool;
}
