package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMFile")
extern class NsIDOMFile extends NsIDOMBlob
{
	var name : DOMString;
	var path : DOMString;
	var lastModifiedDate : Dynamic;
	
	var mozFullPath : DOMString;
}