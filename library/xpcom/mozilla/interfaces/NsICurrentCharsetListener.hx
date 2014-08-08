package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsICurrentCharsetListener") extern class NsICurrentCharsetListener extends NsISupports
{
	public static inline function createInstance() : NsICurrentCharsetListener
	{
		return xpcom.Components.classes[cast "@mozilla.org/intl/currentcharsetlistener;1"].createInstance(NsICurrentCharsetListener);
	}
	
	function SetCurrentCharset(charset:Wstring) : Void;
	function SetCurrentComposerCharset(charset:Wstring) : Void;
	function SetCurrentMailCharset(charset:Wstring) : Void;
}
