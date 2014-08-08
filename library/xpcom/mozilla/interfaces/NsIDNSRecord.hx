package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDNSRecord") extern class NsIDNSRecord extends NsISupports
{
	/**
	 * for example, www.mozilla.org --> rheet.mozilla.org. Read only.
	 */
	var canonicalName : ACString;
	
	function getNextAddr(aPort:PRUint16) : PRNetAddr;
	function getNextAddrAsString() : ACString;
	function hasMore() : Bool;
	function rewind() : Void;
}
