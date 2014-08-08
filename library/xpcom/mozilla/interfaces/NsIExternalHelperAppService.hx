package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIExternalHelperAppService") extern class NsIExternalHelperAppService extends NsISupports
{
	public static inline function getService() : NsIExternalHelperAppService
	{
		return xpcom.Components.classes[cast "@mozilla.org/uriloader/external-helper-app-service;1"].getService(NsIExternalHelperAppService);
	}
	
	function applyDecodingForExtension(aExtension:AUTF8String, aEncodingType:ACString) : Bool;
	function doContent(aMimeContentType:ACString, aRequest:NsIRequest, aWindowContext:NsIInterfaceRequestor, aForceSave:Bool) : NsIStreamListener;
}
