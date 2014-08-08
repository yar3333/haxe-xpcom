package xpcom.mozilla.interfaces;

import xpcom.Components;
import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIUUIDGenerator") extern class NsIUUIDGenerator extends NsISupports
{
	public static inline function getService() : NsIUUIDGenerator return Components.classes[cast "@mozilla.org/uuid-generator;"].getService(Components.interfaces.nsIUUIDGenerator);
	
	function generateUUID() : NsIDPtr;
	function generateUUIDInPlace(id:NsNonConstIDPtr) : Void;
}
