package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIWebContentHandlerRegistrar") extern class NsIWebContentHandlerRegistrar extends NsISupports
{
	public static inline function getService() : NsIWebContentHandlerRegistrar return xpcom.Components.classes[cast "@mozilla.org/embeddor.implemented/web-content-handler-registrar;1"].getService(xpcom.Components.interfaces.nsIWebContentHandlerRegistrar);
	
	function registerContentHandler(mimeType:DOMString, uri:DOMString, title:DOMString, contentWindow:NsIDOMWindow) : Void;
	function registerProtocolHandler(protocol:DOMString, uri:DOMString, title:DOMString, contentWindow:NsIDOMWindow) : Void;
}
