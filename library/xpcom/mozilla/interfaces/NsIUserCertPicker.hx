package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIUserCertPicker") extern class NsIUserCertPicker extends NsISupports
{
	function pickByUsage(ctx:NsIInterfaceRequestor, selectedNickname:Wstring, certUsage:Long, allowInvalid:Bool, allowDuplicateNicknames:Bool, canceled:{value:Bool}) : NsIX509Cert;
}
