package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIRequest") extern class NsIRequest extends NsISupports
{
	/**
	 * No special load flags.
	 */
	static inline var LOAD_NORMAL = 0;
	/**
	 * Do not deliver status notifications to the <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIProgressEventSink" title="">nsIProgressEventSink</a></code>, or keep this load from completing the <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsILoadGroup" title="">nsILoadGroup</a></code> it may belong to.
	 */
	static inline var LOAD_BACKGROUND = 1 << 0;
	
	/**
	 * The load flags of this request. Bits 0-15 are reserved. When added to a load group, this request's load flags are merged with the load flags of the load group.
	 */
	var loadFlags : NsLoadFlags;
	/**
	 * The load group of this request. While pending, the request is a member of the load group. It is the responsibility of the request to implement this policy.
	 */
	var loadGroup : NsILoadGroup;
	/**
	 * The name of the request. Often this is the URI of the request. Read only.
	 */
	var name : AUTF8String;
	/**
	 * The error status associated with the request. Read only.
	 */
	var status : Nsresult;
	
	function cancel(aStatus:Nsresult) : Void;
	function isPending() : Bool;
	function resume() : Void;
	function suspend() : Void;
}
