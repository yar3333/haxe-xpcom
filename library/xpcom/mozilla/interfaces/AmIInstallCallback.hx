package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.amIInstallCallback") extern class AmIInstallCallback extends NsISupports
{
	function onInstallEnded(aUrl:AString, aStatus:PRInt32) : Void;
}
