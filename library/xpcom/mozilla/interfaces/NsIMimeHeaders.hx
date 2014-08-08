package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIMimeHeaders") extern class NsIMimeHeaders extends NsISupports
{
	/**
	 * Read only.
	 */
	var allHeaders : String;
	
	function extractHeader(headerName:String, getAllOfThem:Bool) : String;
	function initialize(allHeaders:String, allHeadersSize:Long) : Void;
}
