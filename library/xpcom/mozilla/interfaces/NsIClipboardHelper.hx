package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIClipboardHelper") extern class NsIClipboardHelper extends NsISupports
{
	function copyString(aString:AString) : Void;
	function copyStringToClipboard(aString:AString, aClipboardID:Long) : Void;
}
