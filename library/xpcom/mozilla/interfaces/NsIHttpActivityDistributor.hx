package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIHttpActivityDistributor") extern class NsIHttpActivityDistributor extends NsIHttpActivityObserver
{
	function addObserver(aObserver:NsIHttpActivityObserver) : Void;
	function removeObserver(aObserver:NsIHttpActivityObserver) : Void;
}
