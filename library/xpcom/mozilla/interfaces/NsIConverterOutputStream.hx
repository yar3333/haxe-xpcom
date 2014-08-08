package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIConverterOutputStream") extern class NsIConverterOutputStream extends NsIUnicharOutputStream
{
	public static inline function createInstance() : NsIConverterOutputStream return xpcom.Components.Constructor("@mozilla.org/intl/converter-output-stream;1", xpcom.Components.interfaces.nsIConverterOutputStream);
	
	function init(aOutStream:NsIOutputStream, aCharset:String, aBufferSize:ULong, aReplacementCharacter:PRUnichar) : Void;
}
