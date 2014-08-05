package xpcom.mozilla;

import xpcom.types.*;

@:native("imgICache") extern class ImgICache extends NsISupports
{
	function clearCache(chrome:Bool) : Void;
	function findEntryProperties(uri:NsIURI) : NsIProperties;
	function removeEntry(uri:NsIURI) : Void;
}
