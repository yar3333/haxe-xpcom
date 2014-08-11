package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.imgIEncoder") extern class ImgIEncoder extends NsIAsyncInputStream
{
	/**
	 * Input is RGB each pixel is represented by three bytes: R, G, and B (in that order, regardless of host endianness)
	 */
	static inline var INPUT_FORMAT_RGB = 0;
	/**
	 * <p>Input is RGB each pixel is represented by four bytes: R, G, and B (in that order, regardless of host endianness).</p> POST-MULTIPLIED alpha us used (For example 50% transparent red is 0xff000080)
	 */
	static inline var INPUT_FORMAT_RGBA = 1;
	/**
	 * <p>Input is host-endian ARGB: On big-endian machines each pixel is therefore ARGB, and for little-endian machiens (Intel) each pixel is BGRA (This is used by canvas to match it's internal representation)</p> PRE-MULTIPLIED alpha is used (That is, 50% transparent red is 0x80800000, not 0x80ff0000)
	 */
	static inline var INPUT_FORMAT_HOSTARGB = 2;
	
	function addImageFrame(data:Array<PRUint8>, length:ULong, width:PRUint32, height:PRUint32, stride:PRUint32, frameFormat:PRUint32, frameOptions:AString) : Void;
	function encodeClipboardImage(aClipboardImage:NsIClipboardImage, aImageFile:{value:NsIFile}) : Void;
	function endImageEncode() : Void;
	function initFromData(data:Array<PRUint8>, length:ULong, width:PRUint32, height:PRUint32, stride:PRUint32, inputFormat:PRUint32, outputOptions:AString) : Void;
	function startImageEncode(width:PRUint32, height:PRUint32, inputFormat:PRUint32, outputOptions:AString) : Void;
}
