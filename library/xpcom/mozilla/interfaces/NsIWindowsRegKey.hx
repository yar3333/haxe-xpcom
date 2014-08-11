package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIWindowsRegKey") extern class NsIWindowsRegKey extends NsISupports
{
	static inline var ROOT_KEY_CLASSES_ROOT = 0x80000000;
	static inline var ROOT_KEY_CURRENT_USER = 0x80000001;
	static inline var ROOT_KEY_LOCAL_MACHINE = 0x80000002;
	static inline var ACCESS_BASIC = 0x00020000;
	static inline var ACCESS_QUERY_VALUE = 0x00000001;
	static inline var ACCESS_SET_VALUE = 0x00000002;
	static inline var ACCESS_CREATE_SUB_KEY = 0x00000004;
	static inline var ACCESS_ENUMERATE_SUB_KEYS = 0x00000008;
	static inline var ACCESS_NOTIFY = 0x00000010;
	static inline var WOW64_32 = 0x00000200;
	static inline var WOW64_64 = 0x00000100;
	/**
	 * REG_NONE
	 */
	static inline var TYPE_NONE = 0;
	/**
	 * REG_SZ
	 */
	static inline var TYPE_STRING = 1;
	/**
	 * REG_BINARY
	 */
	static inline var TYPE_BINARY = 3;
	/**
	 * REG_DWORD
	 */
	static inline var TYPE_INT = 4;
	/**
	 * REG_QWORD
	 */
	static inline var TYPE_INT64 = 11;
	
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
