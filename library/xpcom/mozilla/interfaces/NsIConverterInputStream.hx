package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIConverterInputStream") extern class NsIConverterInputStream extends NsIUnicharInputStream
{
	public static inline function createInstance() : NsIConverterInputStream return xpcom.Components.Constructor("@mozilla.org/intl/converter-input-stream;1", xpcom.Components.interfaces.nsIConverterInputStream);
	
	/**
	 * Default replacement character value.
	 */
	static inline var DEFAULT_REPLACEMENT_CHARACTER = 0xFFFD;
	
	function init(aStream:NsIInputStream, aCharset:String, aBufferSize:Long, aReplacementChar:PRUnichar) : Void;
}
