package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIBinaryInputStream") extern class NsIBinaryInputStream extends NsIInputStream
{
	public static inline function createInstance() : NsIBinaryInputStream
	{
		return xpcom.Components.classes[cast "@mozilla.org/binaryinputstream;1"].createInstance(NsIBinaryInputStream);
	}
	
	function read8() : PRUint8;
	function read16() : PRUint16;
	function read32() : PRUint32;
	function read64() : PRUint64;
	function readBoolean() : PRBool;
	function readByteArray(aLength:PRUint32) : Array<PRUint8>;
	function readBytes(aLength:PRUint32, aString:{value:String}) : Void;
	function readCString() : ACString;
	function readDouble() : Float;
	function readFloat() : Float;
	function readString() : AString;
	function setInputStream(aInputStream:NsIInputStream) : Void;
	
    /**
     * Read opaque bytes from the stream, storing the results in an ArrayBuffer.
     *
     * @param aLength the number of bytes that must be read
     * @param aArrayBuffer the arraybuffer in which to store the results
     * Note: passing view.buffer, where view is an ArrayBufferView of an
     *       ArrayBuffer, is not valid unless view.byteOffset == 0.
     *
     * @return The number of bytes actually read into aArrayBuffer.
     */
    function readArrayBuffer(aLength:Int, aArrayBuffer:js.html.ArrayBuffer) : Int;
}
