package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsISmsService") extern class NsISmsService extends NsISupports
{
	public static inline function createInstance() : NsISmsService return Components.Constructor("@mozilla.org/sms/smsservice;1", Components.interfaces.nsISmsService);
	
	function createSmsMessage(id:Long, delivery:DOMString, sender:DOMString, receiver:DOMString, body:DOMString, timestamp:JSVal, read:Bool) : NsIDOMMozSmsMessage;
	function getNumberOfMessagesForText(text:DOMString) : UShort;
	function hasSupport() : Bool;
	function send(number:DOMString, message:DOMString, requestId:Long, ?processId:ULongLong) : Void;
}
