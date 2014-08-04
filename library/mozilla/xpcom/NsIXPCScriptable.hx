package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIXPCScriptable") extern class NsIXPCScriptable
{
	var className : String;
	/**
	 * The bitwise or'd set of flags (define below) that indicate the behavior of this object.
	 */
	var scriptableFlags : PRUint32;
}
