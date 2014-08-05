package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIStyleSheetService") extern class NsIStyleSheetService extends NsISupports
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
}
