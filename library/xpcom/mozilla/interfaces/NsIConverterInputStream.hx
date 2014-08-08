package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIConverterInputStream") extern class NsIConverterInputStream extends NsIUnicharInputStream
{
	public static inline function createInstance(aStream:NsIInputStream, aCharset:String, aBufferSize:Long, aReplacementChar:PRUnichar) : NsIConverterInputStream
	{
		var r : NsIConverterInputStream = xpcom.Components.classes[cast "@mozilla.org/intl/converter-input-stream;1"].createInstance(NsIConverterInputStream);
		r.init(aStream, aCharset, aBufferSize, aReplacementChar);
		return r;
	}
	
	/**
	 * Default replacement character value.
	 */
	static inline var DEFAULT_REPLACEMENT_CHARACTER = 0xFFFD;
	
	function init(aStream:NsIInputStream, aCharset:String, aBufferSize:Long, aReplacementChar:PRUnichar) : Void;
}
