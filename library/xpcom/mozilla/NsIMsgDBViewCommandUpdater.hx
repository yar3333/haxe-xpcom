package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIMsgDBViewCommandUpdater") extern class NsIMsgDBViewCommandUpdater extends NsISupports
{
	function updateCommandStatus() : Void;
	function displayMessageChanged(aFolder:NsIMsgFolder, aSubject:AString, aKeywords:ACString) : Void;
	function updateNextMessageAfterDelete() : Void;
}
