package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIConverterInputStream") extern class NsIConverterInputStream extends NsIUnicharInputStream
{
	public static inline function createInstance() : NsIConverterInputStream return Components.Constructor("@mozilla.org/intl/converter-input-stream;1", Components.interfaces.nsIConverterInputStream);
	
	/**
	 * Default replacement character value.
	 */
	static inline var DEFAULT_REPLACEMENT_CHARACTER = 0xFFFD;
	
	function init(aStream:NsIInputStream, aCharset:String, aBufferSize:Long, aReplacementChar:PRUnichar) : Void;
}
