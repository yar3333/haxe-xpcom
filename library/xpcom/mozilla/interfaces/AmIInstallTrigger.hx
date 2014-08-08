package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.amIInstallTrigger") extern class AmIInstallTrigger extends NsISupports
{
	function enabled() : Bool;
	function install(aArgs:NsIVariant, ?aCallback:AmIInstallCallback) : Bool;
	function installChrome(aType:PRUint32, aUrl:AString, aSkin:AString) : Bool;
	function startSoftwareUpdate(aUrl:AString, ?aFlags:PRInt32) : Bool;
	function updateEnabled() : Bool;
}
