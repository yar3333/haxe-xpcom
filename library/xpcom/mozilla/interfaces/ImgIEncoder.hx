package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.imgIEncoder") extern class ImgIEncoder extends NsIAsyncInputStream
{
	function addImageFrame(data:Array<PRUint8>, length:ULong, width:PRUint32, height:PRUint32, stride:PRUint32, frameFormat:PRUint32, frameOptions:AString) : Void;
	function encodeClipboardImage(aClipboardImage:NsIClipboardImage, aImageFile:{value:NsIFile}) : Void;
	function endImageEncode() : Void;
	function initFromData(data:Array<PRUint8>, length:ULong, width:PRUint32, height:PRUint32, stride:PRUint32, inputFormat:PRUint32, outputOptions:AString) : Void;
	function startImageEncode(width:PRUint32, height:PRUint32, inputFormat:PRUint32, outputOptions:AString) : Void;
}
