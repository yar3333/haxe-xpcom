package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIGlobalHistory") extern class NsIGlobalHistory extends NsISupports
{
	function addPage(aURL:String) : Void;
	function isVisited(aURL:String) : Bool;
}
