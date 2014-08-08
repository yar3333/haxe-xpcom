package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAutoCompleteListener") extern class NsIAutoCompleteListener extends NsISupports
{
	/**
	 * Private parameter used by the autocomplete widget.
	 */
	var param : NsISupports;
	
	function onAutoComplete(result:NsIAutoCompleteResults, status:AutoCompleteStatus) : Void;
	function onStatus(statusText:Wstring) : Void;
}
