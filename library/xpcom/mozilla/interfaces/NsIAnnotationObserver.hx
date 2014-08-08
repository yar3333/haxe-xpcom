package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAnnotationObserver") extern class NsIAnnotationObserver extends NsISupports
{
	function onItemAnnotationRemoved(aItemId:LongLong, aName:AUTF8String) : Void;
	function onItemAnnotationSet(aItemId:LongLong, aName:AUTF8String) : Void;
	function onPageAnnotationRemoved(aURI:NsIURI, aName:AUTF8String) : Void;
	function onPageAnnotationSet(aPage:NsIURI, aName:AUTF8String) : Void;
}
