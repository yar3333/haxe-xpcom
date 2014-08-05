package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIUserCertPicker") extern class NsIUserCertPicker extends NsISupports
{
	function pickByUsage(ctx:NsIInterfaceRequestor, selectedNickname:Wstring, certUsage:Long, allowInvalid:Bool, allowDuplicateNicknames:Bool, canceled:Bool) : NsIX509Cert;
}
