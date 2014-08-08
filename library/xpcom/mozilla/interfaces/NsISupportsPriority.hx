package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsISupportsPriority") extern class NsISupportsPriority extends NsISupports
{
	/**
	 * The highest priority.
	 */
	static inline var PRIORITY_HIGHEST = -20;
	/**
	 * Higher than normal priority.
	 */
	static inline var PRIORITY_HIGH = -10;
	/**
	 * The default priority.
	 */
	static inline var PRIORITY_NORMAL = 0;
	/**
	 * Lower than normal priority.
	 */
	static inline var PRIORITY_LOW = 10;
	/**
	 * The lowest priority.
	 */
	static inline var PRIORITY_LOWEST = 20;
	
	/**
	 * The object's priority. It can be modified to change the priority of the object. Typical priority values are defined in the idl file as PRIORITY_HIGHEST ... PRIORITY_LOWEST. The implementation is free to truncate a given priority value to whatever limits are appropriate. Typically this attribute is initialized to PRIORITY_NORMAL, but implementations may choose to assign a different initial value.
	 */
	var priority : Long;
	
	function adjustPriority(delta:Long) : Void;
}
