package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIGSettingsCollection") extern class NsIGSettingsCollection extends NsISupports
{
	function getBoolean(key:AUTF8String) : Bool;
	function getInt(key:AUTF8String) : Long;
	function getString(key:AUTF8String) : AUTF8String;
	function setBoolean(key:AUTF8String, value:Bool) : Void;
	function setInt(key:AUTF8String, value:Long) : Void;
	function setString(key:AUTF8String, value:AUTF8String) : Void;
}
