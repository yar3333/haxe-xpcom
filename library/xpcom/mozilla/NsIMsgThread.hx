package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIMsgThread") extern class NsIMsgThread
{
	/**
	 * unsigned long key designating this thread.
	 */
	var threadKey
 : NsMsgKey;
	/**
	 * Flags attached to the thread.
	 */
	var flags
 : ULong;
	/**
	 * Subject of the thread
	 */
	var subject
 : ACString;
	var newestMsgDate
 : ULong;
	/**
	 * Readonly:  Number of messages in the thread.
	 */
	var numChildren
 : ULong;
	/**
	 * Readonly:  Number of unread messages in the thread.
	 */
	var numUnreadChildren
 : ULong;
}
