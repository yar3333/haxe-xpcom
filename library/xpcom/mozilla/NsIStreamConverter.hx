package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIStreamConverter") extern class NsIStreamConverter extends NsIStreamListener
{
	function asyncConvertData(aFromType:String, aToType:String, aListener:NsIStreamListener, aCtxt:NsISupports) : Void;
	function convert(aFromStream:NsIInputStream, aFromType:String, aToType:String, aCtxt:NsISupports) : NsIInputStream;
}
