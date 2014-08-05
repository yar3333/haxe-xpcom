package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIUUIDGenerator") extern class NsIUUIDGenerator extends NsISupports
{
	public static inline function getService() : NsIUUIDGenerator return Components.classes[cast "@mozilla.org/uuid-generator;"].getService(Components.interfaces.nsIUUIDGenerator);
	
	function generateUUID() : NsIDPtr;
	function generateUUIDInPlace(id:NsNonConstIDPtr) : Void;
}
