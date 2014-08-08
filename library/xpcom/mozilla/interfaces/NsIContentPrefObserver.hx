package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIContentPrefObserver") extern class NsIContentPrefObserver extends NsISupports
{
	function onContentPrefRemoved(aGroup:AString, aName:AString) : Void;
	function onContentPrefSet(aGroup:AString, aName:AString, aValue:NsIVariant) : Void;
}
