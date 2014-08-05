package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsICurrentCharsetListener") extern class NsICurrentCharsetListener extends NsISupports
{
	public static inline function createInstance() : NsICurrentCharsetListener return Components.Constructor("@mozilla.org/intl/currentcharsetlistener;1", Components.interfaces.nsICurrentCharsetListener);
	
	function SetCurrentCharset(charset:Wstring) : Void;
	function SetCurrentComposerCharset(charset:Wstring) : Void;
	function SetCurrentMailCharset(charset:Wstring) : Void;
}
