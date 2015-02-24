package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIBinaryOutputStream") extern class NsIBinaryOutputStream extends NsIOutputStream
{
	public static inline function createInstance() : NsIBinaryOutputStream
	{
		return xpcom.Components.classes[cast "@mozilla.org/binaryoutputstream;1"].createInstance(NsIBinaryOutputStream);
	}
	
	function setOutputStream(aOutputStream:NsIOutputStream) : Void;
	function write8(aByte:PRUint8) : Void;
	function write16(a16:PRUint16) : Void;
	function write32(a32:PRUint32) : Void;
	function write64(a64:PRUint64) : Void;
	function writeBoolean(aBoolean:PRBool) : Void;
	function writeByteArray(aBytes:Array<PRUint8>, aLength:PRUint32) : Void;
	function writeBytes(aString:Array<String>, aLength:PRUint32) : Void;
	function writeDouble(aDouble:Float) : Void;
	function writeFloat(aFloat:Float) : Void;
	function writeStringZ(aString:String) : Void;
	function writeUtf8Z(aString:Wstring) : Void;
	function writeWStringZ(aString:Wstring) : Void;
}
