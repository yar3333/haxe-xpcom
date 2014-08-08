package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAccessibleTextChangeEvent") extern class NsIAccessibleTextChangeEvent extends NsISupports
{
	/**
	 * Returns length of changed text. Read only.
	 */
	var length : ULong;
	/**
	 * The inserted or removed text. Read only.
	 */
	var modifiedText : DOMString;
	/**
	 * Returns offset of changed text in accessible. Read only.
	 */
	var start : Long;
	
	function isInserted() : Bool;
}
