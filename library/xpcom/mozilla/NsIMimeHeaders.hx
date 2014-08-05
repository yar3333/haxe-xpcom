package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIMimeHeaders") extern class NsIMimeHeaders extends NsISupports
{
	/**
	 * Read only.
	 */
	var allHeaders : String;
	
	function extractHeader(headerName:String, getAllOfThem:Bool) : String;
	function initialize(allHeaders:String, allHeadersSize:Long) : Void;
}
