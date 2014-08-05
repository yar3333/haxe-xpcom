package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIWebContentHandlerRegistrar") extern class NsIWebContentHandlerRegistrar extends NsISupports
{
	public static inline function getService() : NsIWebContentHandlerRegistrar return Components.classes[cast "@mozilla.org/embeddor.implemented/web-content-handler-registrar;1"].getService(Components.interfaces.nsIWebContentHandlerRegistrar);
}
