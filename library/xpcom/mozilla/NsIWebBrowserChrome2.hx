package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIWebBrowserChrome2") extern class NsIWebBrowserChrome2 extends NsIWebBrowserChrome
{
	function setStatusWithContext(statusType:ULong, statusText:AString, statusContext:NsISupports) : Void;
}
