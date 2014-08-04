package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIAppStartup") extern class NsIAppStartup extends NsISupports
{
	/**
	 * true if the startup process was interrupted by an interactive prompt. This can be used, for example, when doing performance testing of the startup process to discount numbers for tests that were interrupted by a user prompt.
	 */
	var interrupted : Bool;
	/**
	 * Getter for "native application support." Read only. Obsolete since Gecko 1.9.1
	 */
	var nativeAppSupport : NsINativeAppSupport;
}
