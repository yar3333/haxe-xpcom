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
	
	function dump(aStr:DOMString) : Void;
	function sendSyncMessage(messageName:String, JSON:String, jsObjects:Array<Dynamic>) : Void;
	function atob(aAsciiString:DOMString) : DOMString;
	function btoa(aBase64Data:DOMString) : DOMString;
}
