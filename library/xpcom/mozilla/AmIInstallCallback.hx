package xpcom.mozilla;

import xpcom.types.*;

@:native("amIInstallCallback") extern class AmIInstallCallback extends NsISupports
{
	function onInstallEnded(aUrl:AString, aStatus:PRInt32) : Void;
}
