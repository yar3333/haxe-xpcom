package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIContentPrefObserver") extern class NsIContentPrefObserver extends NsISupports
{
	function onContentPrefRemoved(aGroup:AString, aName:AString) : Void;
	function onContentPrefSet(aGroup:AString, aName:AString, aValue:NsIVariant) : Void;
}
