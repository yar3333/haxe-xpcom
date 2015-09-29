package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

/**
 * This interface is supported by command events, which are dispatched to
 * XUL elements as a result of mouse or keyboard activation.
 */
@:native("Components.interfaces.nsIDOMXULCommandEvent")
extern class NsIDOMXULCommandEvent extends NsIDOMUIEvent // builtinclass
{
	/**
	 * Command events support the same set of modifier keys as mouse and key
	 * events.
	 */
	var ctrlKey : Bool;
	var shiftKey : Bool;
	var altKey : Bool;
	var metaKey : Bool;

	/**
	 * If the command event was redispatched because of a command= attribute
	 * on the original target, sourceEvent will be set to the original DOM Event.
	 * Otherwise, sourceEvent is null.
	 */
	var sourceEvent : NsIDOMEvent;

	/**
	 * Creates a new command event with the given attributes.
	 */
	function initCommandEvent(typeArg:DOMString,
												canBubbleArg:Bool,
												cancelableArg:Bool,
												viewArg:NsIDOMWindow,
												detailArg:Int,
												ctrlKeyArg:Bool,
												altKeyArg:Bool,
												shiftKeyArg:Bool,
												metaKeyArg:Bool,
												sourceEvent:NsIDOMEvent) : Void;
}