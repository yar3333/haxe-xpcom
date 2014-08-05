package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDOMProgressEvent") extern class NsIDOMProgressEvent extends NsIDOMEvent
{
	/**
	 * Specifies whether or not the total size of the transfer is known. Read only.
	 */
	var lengthComputable : Bool;
	/**
	 * The number of bytes transferred since the beginning of the operation. This doesn't include headers and other overhead, but only the content itself. Read only.
	 */
	var loaded : ULongLong;
	/**
	 * The total number of bytes of content that will be transferred during the operation. If the total size is unknown, this value is zero. Read only.
	 */
	var total : ULongLong;
	
	function initProgressEvent(typeArg:DOMString, canBubbleArg:Bool, cancelableArg:Bool, lengthComputableArg:Bool, loadedArg:ULongLong, totalArg:ULongLong) : Void;
}
