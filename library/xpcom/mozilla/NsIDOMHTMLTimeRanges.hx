package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDOMHTMLTimeRanges") extern class NsIDOMHTMLTimeRanges extends NsISupports
{
	/**
	 * The number of ranges represented by the nsIDOMHTMLTimeRanges object. Read only.
	 */
	var length : ULong;
	
	function start(index:ULong) : Float;
	function end(index:ULong) : Float;
}
