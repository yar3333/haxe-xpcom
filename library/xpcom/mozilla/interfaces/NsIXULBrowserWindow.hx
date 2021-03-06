package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIXULBrowserWindow") extern class NsIXULBrowserWindow extends NsISupports
{
	function onBeforeLinkTraversal(originalTarget:AString, linkURI:NsIURI, linkNode:NsIDOMNode, isAppTab:PRBool) : AString;
	function setJSDefaultStatus(status:AString) : Void;
	function setJSStatus(status:AString) : Void;
	function setOverLink(link:AString, element:NsIDOMElement) : Void;
}
