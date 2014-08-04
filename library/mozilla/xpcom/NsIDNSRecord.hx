package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIDNSRecord") extern class NsIDNSRecord extends NsISupports
{
	/**
	 * for example, www.mozilla.org --> rheet.mozilla.org. Read only.
	 */
	var canonicalName : ACString;
}
