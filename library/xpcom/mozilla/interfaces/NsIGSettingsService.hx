package xpcom.mozilla.interfaces;

import xpcom.Components;
import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIGSettingsService") extern class NsIGSettingsService extends NsISupports
{
	public static inline function getService() : NsIGSettingsService return Components.classes[cast "@mozilla.org/gsettings-service;1"].getService(Components.interfaces.nsIGSettingsService);
	
	function getCollectionForSchema(schema:AUTF8String) : NsIGSettingsCollection;
}
