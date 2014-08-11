package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIStyleSheetService") extern class NsIStyleSheetService extends NsISupports
{
	public static inline function getService() : NsIStyleSheetService
	{
		return xpcom.Components.classes[cast "@mozilla.org/content/style-sheet-service;1"].getService(NsIStyleSheetService);
	}
	
	static inline var AGENT_SHEET = 0;
	static inline var USER_SHEET = 1;
	static inline var AUTHOR_SHEET = 2;
	
	function loadAndRegisterSheet(sheetURI:NsIURI, type:ULong) : Void;
	function sheetRegistered(sheetURI:NsIURI, type:ULong) : Bool;
	function unregisterSheet(sheetURI:NsIURI, type:ULong) : Void;
}
