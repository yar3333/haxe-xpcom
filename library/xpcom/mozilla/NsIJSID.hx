package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIJSID") extern class NsIJSID extends NsISupports
{
	/**
	 * Read only. Native code only! Obsolete since Gecko 1.9 The internal nsID.
	 */
	var id : NsIDPtr;
	/**
	 * Read only. The name of the JSID, if it was set.
	 */
	var name : String;
	/**
	 * Read only. The string representation of the internal nsID.
	 */
	var number : String;
	/**
	 * Read only. Returns true if the JSID has been initialised.
	 */
	var valid : Bool;
}
