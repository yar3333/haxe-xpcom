package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAutoCompleteSearch") extern class NsIAutoCompleteSearch extends NsISupports
{
	function startSearch(searchString:AString, searchParam:AString, previousResult:NsIAutoCompleteResult, listener:NsIAutoCompleteObserver) : Void;
	function stopSearch() : Void;
}
