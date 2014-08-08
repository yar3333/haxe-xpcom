package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIMsgWindowCommands") extern class NsIMsgWindowCommands extends NsISupports
{
	function selectFolder(folderUri:ACString) : Void;
	function selectMessage(messageUri:ACString) : Void;
	function clearMsgPane() : Void;
}
