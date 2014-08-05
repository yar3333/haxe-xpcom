package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIHTTPHeaderListener") extern class NsIHTTPHeaderListener extends NsISupports
{
	function newResponseHeader(headerName:String, headerValue:String) : Void;
	function statusLine(line:String) : Void;
}
