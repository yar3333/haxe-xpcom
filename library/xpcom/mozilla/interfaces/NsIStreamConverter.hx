package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIStreamConverter") extern class NsIStreamConverter extends NsIStreamListener
{
	function asyncConvertData(aFromType:String, aToType:String, aListener:NsIStreamListener, aCtxt:NsISupports) : Void;
	function convert(aFromStream:NsIInputStream, aFromType:String, aToType:String, aCtxt:NsISupports) : NsIInputStream;
}
