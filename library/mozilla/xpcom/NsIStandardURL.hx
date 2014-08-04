package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIStandardURL") extern class NsIStandardURL extends NsIMutable
{
	/**
	 * Control whether or not this URL can be modified. Protocol handlers can set this flag before handing out an URL to ensure that it is not inadvertently modified. Obsolete since Gecko 1.9
	 */
	var mutable : Bool;
}
