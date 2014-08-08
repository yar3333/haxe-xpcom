package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAutoCompleteObserver") extern class NsIAutoCompleteObserver extends NsISupports
{
	function onSearchResult(search:NsIAutoCompleteSearch, result:NsIAutoCompleteResult) : Void;
	function onUpdateSearchResult(search:NsIAutoCompleteSearch, result:NsIAutoCompleteResult) : Void;
}
