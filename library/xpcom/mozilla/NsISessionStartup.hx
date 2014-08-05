package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsISessionStartup") extern class NsISessionStartup extends NsISupports
{
	public static inline function getService() : NsISessionStartup return Components.classes[cast "@mozilla.org/browser/sessionstartup;1"].getService(Components.interfaces.nsISessionStartup);
	
	/**
	 * The type of session being restored; this will be one of the Session type constants. Read only.
	 */
	var sessionType : ULong;
	/**
	 * The session state, as a JavaScript object. Read only. Note: Prior to Gecko 8.0 (Firefox 8.0 / Thunderbird 8.0 / SeaMonkey 2.5), this was a string. It was changed in order to improve performance, which was suffering due to the need to parse and stringify the data.
	 */
	var state : Jsval;
}
