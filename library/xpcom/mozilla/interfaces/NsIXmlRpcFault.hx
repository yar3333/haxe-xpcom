package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIXmlRpcFault") extern class NsIXmlRpcFault extends NsISupports
{
	/**
	 * Read only.
	 */
	var faultCode : PRInt32;
	/**
	 * Read only.
	 */
	var faultString : String;
	
	function init(faultCode:PRInt32, faultSring:String) : Void;
	function toString() : String;
}
