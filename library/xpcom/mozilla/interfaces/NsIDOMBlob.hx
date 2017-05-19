package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMBlob")
extern class NsIDOMBlob extends NsISupports
{
	var size : Int;
	var type : DOMString;
	
	function slice(?start:Int, ?end:Int, ?contentType:DOMString) : NsIDOMBlob;
}
