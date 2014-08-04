package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsISupportsPriority") extern class NsISupportsPriority extends NsISupports
{
	/**
	 * The object's priority. It can be modified to change the priority of the object. Typical priority values are defined in the idl file as PRIORITY_HIGHEST ... PRIORITY_LOWEST. The implementation is free to truncate a given priority value to whatever limits are appropriate. Typically this attribute is initialized to PRIORITY_NORMAL, but implementations may choose to assign a different initial value.
	 */
	var priority : Long;
}
