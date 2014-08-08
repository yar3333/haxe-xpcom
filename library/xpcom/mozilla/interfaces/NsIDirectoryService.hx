package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDirectoryService") extern class NsIDirectoryService extends NsISupports
{
	public static inline function getService() : NsIDirectoryService
	{
		var r : NsIDirectoryService = xpcom.Components.classes[cast "@mozilla.org/file/directory_service;1"].getService(NsIDirectoryService);
		r.init();
		return r;
	}
	
	function init() : Void;
	function registerProvider(prov:NsIDirectoryServiceProvider) : Void;
	function unregisterProvider(prov:NsIDirectoryServiceProvider) : Void;
}
