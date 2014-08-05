package xpcom.mozilla;

import xpcom.types.*;

@:native("imgIDecoder") extern class ImgIDecoder extends NsISupports
{
	function close() : Void;
	function flush() : Void;
	function init(aLoad:ImgILoad) : Void;
	function writeFrom(inStr:NsIInputStream, count:ULong) : ULong;
}
