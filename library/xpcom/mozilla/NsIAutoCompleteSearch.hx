package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIAutoCompleteSearch") extern class NsIAutoCompleteSearch extends NsISupports
{
	function startSearch(searchString:AString, searchParam:AString, previousResult:NsIAutoCompleteResult, listener:NsIAutoCompleteObserver) : Void;
	function stopSearch() : Void;
}
