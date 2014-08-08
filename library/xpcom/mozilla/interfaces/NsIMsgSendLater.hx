package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIMsgSendLater") extern class NsIMsgSendLater extends NsIStreamListener
{
	public static inline function createInstance() : NsIMsgSendLater
	{
		return xpcom.Components.classes[cast "@mozilla.org/messengercompose/sendlater;1"].createInstance(NsIMsgSendLater);
	}
	
	var msgWindow : NsIMsgWindow;
	
	function SendUnsentMessages(identity:NsIMsgIdentity) : Void;
	function RemoveListener(listener:NsIMsgSendLaterListener) : Void;
	function AddListener(listener:NsIMsgSendLaterListener) : Void;
}
