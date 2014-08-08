package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMEvent") extern class NsIDOMEvent extends NsISupports
{
	/**
	 * The event is not being dispatched. 
	 */
	static inline var NONE = 0;
	/**
	 * The current event phase is the capturing phase.
	 */
	static inline var CAPTURING_PHASE = 1;
	/**
	 * The event is currently being evaluated at the target EventTarget.
	 */
	static inline var AT_TARGET = 2;
	/**
	 * The current event phase is the bubbling phase.
	 */
	static inline var BUBBLING_PHASE = 3;
	static inline var MOUSEDOWN = 0x00000001;
	static inline var MOUSEUP = 0x00000002;
	static inline var MOUSEOVER = 0x00000004;
	static inline var MOUSEOUT = 0x00000008;
	static inline var MOUSEMOVE = 0x00000010;
	static inline var MOUSEDRAG = 0x00000020;
	static inline var CLICK = 0x00000040;
	static inline var DBLCLICK = 0x00000080;
	static inline var KEYDOWN = 0x00000100;
	static inline var KEYUP = 0x00000200;
	static inline var KEYPRESS = 0x00000400;
	static inline var DRAGDROP = 0x00000800;
	static inline var FOCUS = 0x00001000;
	static inline var BLUR = 0x00002000;
	static inline var SELECT = 0x00004000;
	static inline var CHANGE = 0x00008000;
	static inline var RESET = 0x00010000;
	static inline var SUBMIT = 0x00020000;
	static inline var SCROLL = 0x00040000;
	static inline var LOAD = 0x00080000;
	static inline var UNLOAD = 0x00100000;
	static inline var XFER_DONE = 0x00200000;
	static inline var ABORT = 0x00400000;
	static inline var ERROR = 0x00800000;
	static inline var LOCATE = 0x01000000;
	static inline var MOVE = 0x02000000;
	static inline var RESIZE = 0x04000000;
	static inline var FORWARD = 0x08000000;
	static inline var HELP = 0x10000000;
	static inline var BACK = 0x20000000;
	static inline var TEXT = 0x40000000;
	static inline var ALT_MASK = 0x00000001;
	static inline var CONTROL_MASK = 0x00000002;
	static inline var SHIFT_MASK = 0x00000004;
	static inline var META_MASK = 0x00000008;
	
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
	
	function Deserialize(aMsg:ConstIPCMessagePtr, aIter:VoidPtr) : Bool;
	function duplicatePrivateData() : Void;
	function GetInternalNSEvent() : NsEventPtr;
	function getPreventDefault() : Bool;
	function initEvent(eventTypeArg:DOMString, canBubbleArg:Bool, cancelableArg:Bool) : Void;
	function IsDispatchStopped() : Bool;
	function preventBubble() : Void;
	function preventCapture() : Void;
	function preventDefault() : Void;
	function Serialize(aMsg:IPCMessagePtr, aSerializeInterfaceType:Bool) : Void;
	function setTarget(aTarget:NsIDOMEventTarget) : Void;
	function SetTrusted(aTrusted:Bool) : Void;
	function stopImmediatePropagation() : Void;
	function stopPropagation() : Void;
}
