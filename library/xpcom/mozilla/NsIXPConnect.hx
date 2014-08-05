package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIXPConnect") extern class NsIXPConnect extends NsISupports
{
	static inline var INIT_JS_STANDARD_CLASSES = 1 << 0;
	static inline var FLAG_SYSTEM_GLOBAL_OBJECT = 1 << 1;
	static inline var OMIT_COMPONENTS_OBJECT = 1 << 2;
	/**
	 * Tells <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIXPConnect#updateXOWs()">updateXOWs()</a></code> to clear the scope of all of the XOWs it finds.  <span class="inlineIndicator obsolete obsoleteInline" title="(Firefox 4 / Thunderbird 3.3 / SeaMonkey 2.1)">Obsolete since Gecko 2.0</span>
	 */
	static inline var XPC_XOW_CLEARSCOPE = 1;
	
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
