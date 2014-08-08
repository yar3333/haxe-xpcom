package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIConverterOutputStream") extern class NsIConverterOutputStream extends NsIUnicharOutputStream
{
	public static inline function createInstance(aOutStream:NsIOutputStream, aCharset:String, aBufferSize:ULong, aReplacementCharacter:PRUnichar) : NsIConverterOutputStream
	{
		var r : NsIConverterOutputStream = xpcom.Components.classes[cast "@mozilla.org/intl/converter-output-stream;1"].createInstance(NsIConverterOutputStream);
		r.init(aOutStream, aCharset, aBufferSize, aReplacementCharacter);
		return r;
	}
	
	function init(aOutStream:NsIOutputStream, aCharset:String, aBufferSize:ULong, aReplacementCharacter:PRUnichar) : Void;
}
