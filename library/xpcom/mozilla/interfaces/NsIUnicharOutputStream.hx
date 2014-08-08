package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIUnicharOutputStream") extern class NsIUnicharOutputStream
{
	public function close() : Void;
	/**
	 * It does NOT flush the underlying stream.
	 */
	function flush() : Void;
	function write(aCount:ULong, c:Array<PRUnichar>) : Bool;
	function writeString(str:AString) : Bool;
}
