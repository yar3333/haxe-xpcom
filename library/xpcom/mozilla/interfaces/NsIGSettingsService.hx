package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIGSettingsService") extern class NsIGSettingsService extends NsISupports
{
	public static inline function getService() : NsIGSettingsService
	{
		return xpcom.Components.classes[cast "@mozilla.org/gsettings-service;1"].getService(NsIGSettingsService);
	}
	
	function getCollectionForSchema(schema:AUTF8String) : NsIGSettingsCollection;
}
