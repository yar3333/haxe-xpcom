package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIClipboardCommands") extern class NsIClipboardCommands extends NsISupports
{
	function canCopyImageContents() : Bool;
	function canCopyImageLocation() : Bool;
	function canCopyLinkLocation() : Bool;
	function canCopySelection() : Bool;
	function canCutSelection() : Bool;
	function canPaste() : Bool;
	function copyImageContents() : Void;
	function copyImageLocation() : Void;
	function copyLinkLocation() : Void;
	function copySelection() : Void;
	function cutSelection() : Void;
	function paste() : Void;
	function selectAll() : Void;
	function selectNone() : Void;
}
