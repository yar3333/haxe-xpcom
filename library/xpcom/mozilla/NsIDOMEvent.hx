package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDOMEvent") extern class NsIDOMEvent extends NsISupports
{
	/**
	 * Used to indicate whether or not an event is a bubbling event. If the event can bubble the value is true, else the value is false. Read only.
	 */
	var bubbles : Bool;
	/**
	 * Used to indicate whether or not an event can have its default action prevented. If the default action can be prevented the value is true, else the value is false. Read only.
	 */
	var cancelable : Bool;
	/**
	 * Used to indicate the EventTarget whose EventListeners are currently being processed. This is particularly useful during capturing and bubbling. Read only.
	 */
	var currentTarget : NsIDOMEventTarget;
	/**
	 * Used to indicate whether preventDefault() has been called for this event. Read only.
	 */
	var defaultPrevented : Bool;
	/**
	 * Used to indicate which phase of event flow is currently being evaluated. Read only.
	 */
	var eventPhase : UShort;
	/**
	 * The explicit original target of the event. If the event was retargeted for some reason other than an anonymous boundary crossing, this will be set to the target before the retargeting occurs. For example, mouse events are retargeted to their parent node when they happen over text nodes (bug 185889), and in that case .target will show the parent and .explicitOriginalTarget will show the text node. .explicitOriginalTarget differs from .originalTarget in that it will never contain anonymous content. Read only.
	 */
	var explicitOriginalTarget : NsIDOMEventTarget;
	/**
	 * Read only.
	 */
	var isTrusted : Bool;
	/**
	 * The original target of the event, before any retargetings. Read only.
	 */
	var originalTarget : NsIDOMEventTarget;
	/**
	 * Used to indicate the EventTarget to which the event was originally dispatched. Read only.
	 */
	var target : NsIDOMEventTarget;
	/**
	 * Used to specify the time (in milliseconds relative to the epoch) at which the event was created. Due to the fact that some systems may not provide this information the value of timeStamp may be not available for all events. When not available, a value of 0 will be returned. Examples of epoch time are the time of the system start or 0:0:0 UTC 1st January 1970. Read only.
	 */
	var timeStamp : DOMTimeStamp;
	/**
	 * The name of the event (case-insensitive). The name must be an XML name. Read only.
	 */
	var type : DOMString;
}
