package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIMsgThread") extern class NsIMsgThread extends NsISupports
{
	/**
	 * unsigned long key designating this thread.
	 */
	var threadKey : NsMsgKey;
	/**
	 * Flags attached to the thread.
	 */
	var flags : ULong;
	/**
	 * Subject of the thread
	 */
	var subject : ACString;
	var newestMsgDate : ULong;
	/**
	 * Readonly:  Number of messages in the thread.
	 */
	var numChildren : ULong;
	/**
	 * Readonly:  Number of unread messages in the thread.
	 */
	var numUnreadChildren : ULong;
	
	function addChild(child:NsIMsgDBHdr, inReplyTo:NsIMsgDBHdr, threadInThread:Bool, announcer:NsIDBChangeAnnouncer) : Void;
	function getChildAt(index:Long) : NsIMsgDBHdr;
	function getChildKeyAt(index:Long) : NsMsgKey;
	function getChild(msgKey:NsMsgKey) : NsIMsgDBHdr;
	function getChildHdrAt(index:Long) : NsIMsgDBHdr;
	function getRootHdr(index:Long) : NsIMsgDBHdr;
	function removeChildAt(index:Long) : Void;
	function removeChildHdr(child:NsIMsgDBHdr, announcer:NsIDBChangeAnnouncer) : Void;
	function markChildRead(bRead:Bool) : Void;
	function getFirstUnreadChild() : NsIMsgDBHdr;
	function enumerateMessages(parent:NsMsgKey) : NsISimpleEnumerator;
}
