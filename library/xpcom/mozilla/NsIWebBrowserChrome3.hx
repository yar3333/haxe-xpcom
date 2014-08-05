package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIWebBrowserChrome3") extern class NsIWebBrowserChrome3 extends NsIWebBrowserChrome2
{
	function onBeforeLinkTraversal(originalTarget:AString, linkURI:NsIURI, linkNode:NsIDOMNode, isAppTab:PRBool) : AString;
}
