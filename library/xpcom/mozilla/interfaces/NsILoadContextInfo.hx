package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

/**
 * Helper interface to carry informatin about the load context
 * encapsulating an AppID, IsInBrowser and IsPrivite properties.
 * It shall be used where nsILoadContext cannot be used or is not
 * available.
 */
@:native("Components.interfaces.nsILoadContextInfo") extern class NsILoadContextInfo extends NsISupports
{
	/**
	 * Whether the context belongs under an App
	 */
	static var NO_APP_ID : Int;
	static var UNKNOWN_APP_ID : Int;
	
	/**
	 * Whether the context is in a Private Browsing mode
	 */
	var isPrivate : Bool;
	
	var appId : Int;
	
	/**
	 * Whether the context is in a browser tag
	 */
	var isInBrowserElement : Bool;
	
	/**
	 * Whether the load is initiated as anonymous
	 */
	var isAnonymous : Bool;
}