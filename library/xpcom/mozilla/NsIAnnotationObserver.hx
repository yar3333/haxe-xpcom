package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIAnnotationObserver") extern class NsIAnnotationObserver extends NsISupports
{
	function onItemAnnotationRemoved(aItemId:LongLong, aName:AUTF8String) : Void;
	function onItemAnnotationSet(aItemId:LongLong, aName:AUTF8String) : Void;
	function onPageAnnotationRemoved(aURI:NsIURI, aName:AUTF8String) : Void;
	function onPageAnnotationSet(aPage:NsIURI, aName:AUTF8String) : Void;
}
