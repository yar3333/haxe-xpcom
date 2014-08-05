package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDNSListener") extern class NsIDNSListener extends NsISupports
{
	function onLookupComplete(aRequest:NsICancelable, aRecord:NsIDNSRecord, aStatus:Nsresult) : Void;
}
