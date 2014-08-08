package xpcom.mozilla.interfaces;

import xpcom.Components;
import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIChromeRegistry") extern class NsIChromeRegistry extends NsISupports
{
	public static inline function getService() : NsIChromeRegistry return Components.classes[cast "@mozilla.org/chrome/chrome-registry;1"].getService(Components.interfaces.nsIChromeRegistry);
	
	/**
	 *  
	 */
	static inline var NONE = 0;
	/**
	 *  
	 */
	static inline var PARTIAL = 1;
	/**
	 *  
	 */
	static inline var FULL = 2;
	
	function canonify(aChromeURL:NsIURI) : Void;
	function checkForNewChrome() : Void;
	function convertChromeURL(aChromeURL:NsIURI) : NsIURI;
	function wrappersEnabled(aURI:NsIURI) : Bool;
}
