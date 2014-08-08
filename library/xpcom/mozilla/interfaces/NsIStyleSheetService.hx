package xpcom.mozilla.interfaces;

import xpcom.Components;
import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIStyleSheetService") extern class NsIStyleSheetService extends NsISupports
{
	public static inline function createInstance() : NsIStyleSheetService return Components.Constructor("@mozilla.org/content/style-sheet-service;1", Components.interfaces.nsIStyleSheetService);
	
	/**
	 *  
	 */
	static inline var AGENT_SHEET = 0;
	/**
	 *  
	 */
	static inline var USER_SHEET = 1;
	/**
	 *  
	 */
	static inline var AUTHOR_SHEET = 2;
	
	function loadAndRegisterSheet(sheetURI:NsIURI, type:ULong) : Void;
	function sheetRegistered(sheetURI:NsIURI, type:ULong) : Bool;
	function unregisterSheet(sheetURI:NsIURI, type:ULong) : Void;
}
