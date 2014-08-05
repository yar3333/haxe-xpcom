package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIContentFrameMessageManager") extern class NsIContentFrameMessageManager extends NsISyncMessageSender
{
	/**
	 * The current top level window in the frame or null. Read only.
	 */
	var content : NsIDOMWindow;
	/**
	 * The top level docshell or null. Read only.
	 */
	var docShell : NsIDocShell;
}
