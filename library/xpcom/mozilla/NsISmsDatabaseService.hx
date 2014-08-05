package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsISmsDatabaseService") extern class NsISmsDatabaseService extends NsISupports
{
	public static inline function createInstance() : NsISmsDatabaseService return Components.Constructor("@mozilla.org/sms/smsdatabaseservice;1", Components.interfaces.nsISmsDatabaseService);
	
	function saveReceivedMessage(aSender:DOMString, aBody:DOMString, aDate:ULongLong) : Long;
	function saveSentMessage(aReceiver:DOMString, aBody:DOMString, aDate:ULongLong) : Long;
	function getMessage(messageId:Long, requestId:Long, ?processId:ULongLong) : Void;
	function deleteMessage(messageId:Long, requestId:Long, ?processId:ULongLong) : Void;
	function createMessageList(filter:NsIDOMMozSmsFilter, reverse:Bool, requestId:Long, ?processId:ULongLong) : Void;
	function getNextMessageInList(listId:Long, requestId:Long, ?processId:ULongLong) : Void;
	function clearMessageList(listId:Long) : Void;
	function markMessageRead(messageId:Long, value:Bool, requestId:Long, ?processId:ULongLong) : Void;
}
