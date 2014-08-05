package xpcom.mozilla;

import xpcom.types.*;

@:native("nsICacheVisitor") extern class NsICacheVisitor extends NsISupports
{
	function visitDevice(deviceID:String, deviceInfo:NsICacheDeviceInfo) : Bool;
	function visitEntry(deviceID:String, entryInfo:NsICacheEntryInfo) : Bool;
}
