package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIAutoCompleteListener") extern class NsIAutoCompleteListener extends NsISupports
{
	/**
	 * Private parameter used by the autocomplete widget.
	 */
	var param : NsISupports;
}
