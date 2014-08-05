package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIAccessibleEvent") extern class NsIAccessibleEvent extends NsISupports
{
	/**
	 * The nsIAccessible associated with the event. May return null if no accessible is available. Read only.
	 */
	var accessible : NsIAccessible;
	/**
	 * The nsIAccessibleDocument that the event target nsIAccessible resides in. This can be used to get the DOM window, the DOM document and the window handler, among other things. Read only.
	 */
	var accessibleDocument : NsIAccessibleDocument;
	/**
	 * The nsIDOMNode associated with the event. May return null if accessible for event has been shut down. Read only.
	 */
	var DOMNode : NsIDOMNode;
	/**
	 * The type of event, based on the enumerated event values defined in this interface. Read only.
	 */
	var eventType : ULong;
	/**
	 * Returns true if the event was caused by explicit user input, as opposed to purely originating from a timer or mouse movement.
	 */
	var isFromUserInput : Bool;
}
