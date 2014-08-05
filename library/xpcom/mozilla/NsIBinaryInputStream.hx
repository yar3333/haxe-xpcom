package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIBinaryInputStream") extern class NsIBinaryInputStream extends NsIInputStream
{
	function read8() : PRUint8;
	function read16() : PRUint16;
	function read32() : PRUint32;
	function read64() : PRUint64;
	function readBoolean() : PRBool;
	function readByteArray(aLength:PRUint32, aBytes:Array<PRUint8>) : Void;
	function readBytes(aLength:PRUint32, aString:String) : Void;
	function readCString() : ACString;
	function readDouble() : Float;
	function readFloat() : Float;
	function readString() : AString;
	function setInputStream(aInputStream:NsIInputStream) : Void;
}
