package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDirectoryServiceProvider") extern class NsIDirectoryServiceProvider extends NsISupports
{
	function getFile(prop:String, persistent:PRBool) : NsIFile;
}
