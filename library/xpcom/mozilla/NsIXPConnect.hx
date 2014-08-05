package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIXPConnect") extern class NsIXPConnect extends NsISupports
{
	/**
	 * Obsolete since Gecko 1.9
	 */
	var collectGarbageOnMainThreadOnly : PRBool;
	/**
	 * Read only.
	 */
	var CurrentJSStack : NsIStackFrame;
	/**
	 * Read only.
	 */
	var CurrentNativeCallContext : NsAXPCNativeCallContextPtr;
	/**
	 * Obsolete since Gecko 1.9
	 */
	var deferReleasesUntilAfterGarbageCollection : PRBool;
	var PendingException : NsIException;
}
