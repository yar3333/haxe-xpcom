package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIWebBrowserPersist") extern class NsIWebBrowserPersist extends NsICancelable
{
	/**
	 * Current state of the persister object. Read only.
	 */
	var currentState : ULong;
	/**
	 * Flags governing how data is fetched and saved from the network. It is best to set this value explicitly unless you are prepared to accept the default values.
	 */
	var persistFlags : ULong;
	/**
	 * Callback listener for progress notifications. The object that the embbedder supplies may also implement nsIInterfaceRequestor and be prepared to return nsIAuthPrompt or other interfaces that may be required to download data.
	 */
	var progressListener : NsIWebProgressListener;
	/**
	 * Value indicating the success or failure of the persist operation. Read only.
	 */
	var result : ULong;
}
