package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIAsyncVerifyRedirectCallback") extern class NsIAsyncVerifyRedirectCallback extends NsISupports
{
	function onRedirectVerifyCallback(result:Nsresult) : Void;
}
