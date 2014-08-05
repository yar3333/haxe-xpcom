package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIMsgSendLater") extern class NsIMsgSendLater extends NsIStreamListener
{
	public static inline function createInstance() : NsIMsgSendLater return Components.Constructor("@mozilla.org/messengercompose/sendlater;1", Components.interfaces.nsIMsgSendLater);
	
	var msgWindow : NsIMsgWindow;
	
	function SendUnsentMessages(identity:NsIMsgIdentity) : Void;
	function RemoveListener(listener:NsIMsgSendLaterListener) : Void;
	function AddListener(listener:NsIMsgSendLaterListener) : Void;
}
