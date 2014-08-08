package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIHTTPHeaderListener") extern class NsIHTTPHeaderListener extends NsISupports
{
	function newResponseHeader(headerName:String, headerValue:String) : Void;
	function statusLine(line:String) : Void;
}
