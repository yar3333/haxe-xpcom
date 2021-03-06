package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMFormData")
extern class NsIDOMFormData extends NsISupports 
{
	public static inline function createInstance() : NsIDOMFormData
	{
		return xpcom.Components.classes[cast "@mozilla.org/files/formdata;1"].createInstance(NsIDOMFormData);
	}	

	@:overload(function(name:DOMString, value:NsIDOMFile):Void {})
	@:overload(function(name:DOMString, value:String):Void {})
	function append(name:DOMString, value:NsIVariant) : Void;
}
