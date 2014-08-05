package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIAutoCompleteObserver") extern class NsIAutoCompleteObserver extends NsISupports
{
	function onSearchResult(search:NsIAutoCompleteSearch, result:NsIAutoCompleteResult) : Void;
	function onUpdateSearchResult(search:NsIAutoCompleteSearch, result:NsIAutoCompleteResult) : Void;
}
