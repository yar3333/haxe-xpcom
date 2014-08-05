package xpcom.mozilla;

import xpcom.types.*;

@:native("nsICancelable") extern class NsICancelable extends NsISupports
{
	function cancel(aReason:Nsresult) : Void;
}
