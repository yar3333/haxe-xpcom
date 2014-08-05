package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIMsgWindowCommands") extern class NsIMsgWindowCommands extends NsISupports
{
	function selectFolder(folderUri:ACString) : Void;
	function selectMessage(messageUri:ACString) : Void;
	function clearMsgPane() : Void;
}
