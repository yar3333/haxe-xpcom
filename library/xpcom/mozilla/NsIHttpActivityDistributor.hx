package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIHttpActivityDistributor") extern class NsIHttpActivityDistributor extends NsIHttpActivityObserver
{
	function addObserver(aObserver:NsIHttpActivityObserver) : Void;
	function removeObserver(aObserver:NsIHttpActivityObserver) : Void;
}
