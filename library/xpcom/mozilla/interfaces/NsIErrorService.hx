package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIErrorService") extern class NsIErrorService extends NsISupports
{
	public static inline function getService() : NsIErrorService
	{
		return xpcom.Components.classes[cast "@mozilla.org/xpcom/error-service;1"].getService(NsIErrorService);
	}
	
	function getErrorStringBundle(errorModule:Short) : String;
	function getErrorStringBundleKey(error:Nsresult) : String;
	function registerErrorStringBundle(errorModule:Short, stringBundleURL:String) : Void;
	function registerErrorStringBundleKey(error:Nsresult, stringBundleKey:String) : Void;
	function unregisterErrorStringBundle(errorModule:Short) : Void;
	function unregisterErrorStringBundleKey(error:Nsresult) : Void;
}
