package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIClipboardHelper") extern class NsIClipboardHelper extends NsISupports
{
	public static inline function getService() : NsIClipboardHelper
	{
		return xpcom.Components.classes[cast "@mozilla.org/widget/clipboardhelper;1"].getService(NsIClipboardHelper);
	}
	
	function copyString(aString:AString) : Void;
	function copyStringToClipboard(aString:AString, aClipboardID:Long) : Void;
}
