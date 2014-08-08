package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.imgICache") extern class ImgICache extends NsISupports
{
	function clearCache(chrome:Bool) : Void;
	function findEntryProperties(uri:NsIURI) : NsIProperties;
	function removeEntry(uri:NsIURI) : Void;
}
