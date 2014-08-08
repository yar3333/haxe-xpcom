package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIMsgDBViewCommandUpdater") extern class NsIMsgDBViewCommandUpdater extends NsISupports
{
	function updateCommandStatus() : Void;
	function displayMessageChanged(aFolder:NsIMsgFolder, aSubject:AString, aKeywords:ACString) : Void;
	function updateNextMessageAfterDelete() : Void;
}
