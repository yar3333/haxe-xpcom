package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIExternalHelperAppService") extern class NsIExternalHelperAppService extends NsISupports
{
	public static inline function getService() : NsIExternalHelperAppService return Components.classes[cast "@mozilla.org/uriloader/external-helper-app-service;1"].getService(Components.interfaces.nsIExternalHelperAppService);
	
	function applyDecodingForExtension(aExtension:AUTF8String, aEncodingType:ACString) : Bool;
	function doContent(aMimeContentType:ACString, aRequest:NsIRequest, aWindowContext:NsIInterfaceRequestor, aForceSave:Bool) : NsIStreamListener;
}
