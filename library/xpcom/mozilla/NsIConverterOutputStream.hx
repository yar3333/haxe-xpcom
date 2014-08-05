package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIConverterOutputStream") extern class NsIConverterOutputStream extends NsIUnicharOutputStream
{
	public static inline function createInstance() : NsIConverterOutputStream return Components.Constructor("@mozilla.org/intl/converter-output-stream;1", Components.interfaces.nsIConverterOutputStream);
	
	function init(aOutStream:NsIOutputStream, aCharset:String, aBufferSize:ULong, aReplacementCharacter:PRUnichar) : Void;
}
