package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIDialogParamBlock") extern class NsIDialogParamBlock extends NsISupports
{
	/**
	 * A place where you can store an nsIMutableArray to pass nsISupports.
	 */
	var objects : NsIMutableArray;
}
