package xpcom.mozilla.interfaces;

import xpcom.Components;
import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsICurrentCharsetListener") extern class NsICurrentCharsetListener extends NsISupports
{
	public static inline function createInstance() : NsICurrentCharsetListener return Components.Constructor("@mozilla.org/intl/currentcharsetlistener;1", Components.interfaces.nsICurrentCharsetListener);
	
	function SetCurrentCharset(charset:Wstring) : Void;
	function SetCurrentComposerCharset(charset:Wstring) : Void;
	function SetCurrentMailCharset(charset:Wstring) : Void;
}
