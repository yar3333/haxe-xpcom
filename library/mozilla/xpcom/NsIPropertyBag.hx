package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIPropertyBag") extern class NsIPropertyBag extends NsISupports
{
	/**
	 * Get a nsISimpleEnumerator whose elements are nsIProperty objects. Read only.
	 */
	var enumerator : NsISimpleEnumerator;
}
