package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIScriptableInputStream") extern class NsIScriptableInputStream extends NsISupports
{
	function available() : ULong;
	function close() : Void;
	function init(aInputStream:NsIInputStream) : Void;
	function read(aCount:ULong) : String;
	function readBytes(aCount:ULong) : ACString;
}
