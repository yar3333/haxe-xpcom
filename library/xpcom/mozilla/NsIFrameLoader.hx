package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIFrameLoader") extern class NsIFrameLoader extends NsISupports
{
	/**
	 * Mobile Only in Gecko 2.0
	 */
	var delayRemoteDialogs : Bool;
	/**
	 * Find out whether the loader's frame is at too great a depth in the frame tree. This can be used to decide what operations may or may not be allowed on the loader's docshell. Read only.
	 */
	var depthTooGreat : Bool;
	/**
	 * Get the docshell from the frame loader. Read only.
	 */
	var docShell : NsIDocShell;
	/**
	 * The message manager handling messages for this frame. Read only.
	 */
	var messageManager : NsIChromeFrameMessageManager;
}
