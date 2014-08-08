package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.imgIDecoder") extern class ImgIDecoder extends NsISupports
{
	function close() : Void;
	function flush() : Void;
	function init(aLoad:ImgILoad) : Void;
	function writeFrom(inStr:NsIInputStream, count:ULong) : ULong;
}
