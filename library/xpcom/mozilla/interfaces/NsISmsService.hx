package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsISmsService") extern class NsISmsService extends NsISupports
{
	public static inline function createInstance() : NsISmsService
	{
		return xpcom.Components.classes[cast "@mozilla.org/sms/smsservice;1"].createInstance(NsISmsService);
	}
	
	function createSmsMessage(id:Long, delivery:DOMString, sender:DOMString, receiver:DOMString, body:DOMString, timestamp:JSVal, read:Bool) : NsIDOMMozSmsMessage;
	function getNumberOfMessagesForText(text:DOMString) : UShort;
	function hasSupport() : Bool;
	function send(number:DOMString, message:DOMString, requestId:Long, ?processId:ULongLong) : Void;
}
