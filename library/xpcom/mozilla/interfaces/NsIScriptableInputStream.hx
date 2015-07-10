package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIScriptableInputStream") extern class NsIScriptableInputStream extends NsISupports
{
	public static inline function createInstance() : NsIScriptableInputStream
	{
		return xpcom.Components.classes[cast "@mozilla.org/scriptableinputstream;1"].createInstance(NsIScriptableInputStream);
	}
	
	function available() : ULong;
	function close() : Void;
	function init(aInputStream:NsIInputStream) : Void;
	function read(aCount:ULong) : String;
	function readBytes(aCount:ULong) : ACString;
}
