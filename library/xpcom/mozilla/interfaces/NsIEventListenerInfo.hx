package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIEventListenerInfo") extern class NsIEventListenerInfo extends NsISupports
{
	/**
	 * Indicates whether or not the event listener allows untrusted events. Read only.
	 */
	var allowsUntrusted : Bool;
	/**
	 * Indicates whether or not the event listener is in capture mode. Read only.
	 */
	var capturing : Bool;
	/**
	 * Indicates whether or not the event listener is in the system event group. Read only.
	 */
	var inSystemEventGroup : Bool;
	/**
	 * The type of the event for which the listener was added. Read only.
	 */
	var type : AString;
	
	function getDebugObject() : NsISupports;
	function toSource() : AString;
}
