package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIClipboardHelper") extern class NsIClipboardHelper extends NsISupports
{
	function copyString(aString:AString) : Void;
	function copyStringToClipboard(aString:AString, aClipboardID:Long) : Void;
}
