package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDroppedLinkHandler") extern class NsIDroppedLinkHandler extends NsISupports
{
	function canDropLink(aEvent:NsIDOMDragEvent, aAllowSameDocument:PRBool) : Bool;
	function dropLink(aEvent:NsIDOMDragEvent, aName:AString) : AString;
}
