package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDroppedLinkHandler") extern class NsIDroppedLinkHandler extends NsISupports
{
	function canDropLink(aEvent:NsIDOMDragEvent, aAllowSameDocument:PRBool) : Bool;
	function dropLink(aEvent:NsIDOMDragEvent, aName:AString) : AString;
}
