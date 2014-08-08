package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIWebBrowserChrome3") extern class NsIWebBrowserChrome3 extends NsIWebBrowserChrome2
{
	function onBeforeLinkTraversal(originalTarget:AString, linkURI:NsIURI, linkNode:NsIDOMNode, isAppTab:PRBool) : AString;
}
