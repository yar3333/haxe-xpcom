package xpcom.mozilla.interfaces;

import xpcom.Components;
import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsISmsRequestManager") extern class NsISmsRequestManager extends NsISupports
{
	public static inline function createInstance() : NsISmsRequestManager return Components.Constructor("@mozilla.org/sms/smsrequestmanager;1", Components.interfaces.nsISmsRequestManager);
	
	function addRequest(aRequest:NsIDOMMozSmsRequest) : Long;
	function createRequest(aManager:NsIDOMMozSmsManager, aRequest:NsIDOMMozSmsRequest) : Long;
	function notifyCreateMessageList(aRequestId:Long, aListId:Long, aMessage:NsIDOMMozSmsMessage) : Void;
	function notifyGetSmsFailed(aRequestId:Long, aError:Long) : Void;
	function notifyGotNextMessage(aRequestId:Long, aMessage:NsIDOMMozSmsMessage) : Void;
	function notifyGotSms(aRequestId:Long, aMessage:NsIDOMMozSmsMessage) : Void;
	function notifyMarkedMessageRead(aRequestId:Long, aRead:Bool) : Void;
	function notifyMarkMessageReadFailed(aRequestId:Long, aError:Long) : Void;
	function notifyNoMessageInList(aRequestId:Long) : Void;
	function notifyReadMessageListFailed(aRequestId:Long, aError:Long) : Void;
	function notifySmsDeleted(aRequestId:Long, aDeleted:Bool) : Void;
	function notifySmsDeleteFailed(aRequestId:Long, aError:Long) : Void;
	function notifySmsSendFailed(aRequestId:Long, aError:Long) : Void;
	function notifySmsSent(aRequestId:Long, aMessage:NsIDOMMozSmsMessage) : Void;
}
