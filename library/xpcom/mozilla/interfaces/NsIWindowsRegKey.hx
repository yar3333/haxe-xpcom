package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIWindowsRegKey") extern class NsIWindowsRegKey extends NsISupports
{
	/**
	 * This attribute returns the number of child keys. Read only.
	 */
	var childCount : ULong;
	/**
	 * This attribute exposes the native HKEY and is available to provide C++ consumers with the flexibility of making other Windows registry API calls that are not exposed via this interface.
	 * It is possible to initialize this object by setting an HKEY on it. In that case, it is the responsibility of the consumer setting the HKEY to ensure that it is a valid HKEY.
	 * WARNING: Setting the key does not close() the old key. Native code only!
	 */
	var key : HKEY;
	/**
	 * This attribute returns the number of values under this key. Read only.
	 */
	var valueCount : ULong;
	
	function close() : Void;
	function create(rootKey:ULong, relPath:AString, mode:ULong) : Void;
	function createChild(relPath:AString, mode:ULong) : NsIWindowsRegKey;
	function getChildName(index:ULong) : AString;
	function getValueName(index:ULong) : AString;
	function getValueType(name:AString) : ULong;
	function hasChanged() : Bool;
	function hasChild(name:AString) : Bool;
	function hasValue(name:AString) : Bool;
	function isWatching() : Bool;
	function open(rootKey:ULong, relPath:AString, mode:ULong) : Void;
	function openChild(relPath:AString, mode:ULong) : NsIWindowsRegKey;
	function readBinaryValue(name:AString) : ACString;
	function readInt64Value(name:AString) : ULongLong;
	function readIntValue(name:AString) : ULong;
	function readStringValue(name:AString) : AString;
	function removeChild(relPath:AString) : Void;
	function removeValue(name:AString) : Void;
	function startWatching(recurse:Bool) : Void;
	function stopWatching() : Void;
	function writeBinaryValue(name:AString, data:ACString) : Void;
	function writeInt64Value(name:AString, data:ULongLong) : Void;
	function writeIntValue(name:AString, data:ULong) : Void;
	function writeStringValue(name:AString, data:AString) : Void;
}
