package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIZipReaderCache") extern class NsIZipReaderCache extends NsISupports
{
	public static inline function createInstance(cacheSize:ULong) : NsIZipReaderCache
	{
		var r = xpcom.Components.classes[cast "@mozilla.org/libjar/zip-reader-cache;1"].createInstance(NsIZipReaderCache);
		r.init(cacheSize);
		return r;
	}
	
	@:overload(function(zipFile:NsIFile, zipEntry:AUTF8String) : NsIZipReader {})
	function getInnerZip(zipFile:NsIFile, zipEntry:String) : NsIZipReader;
	function getZip(zipFile:NsIFile) : NsIZipReader;
	function init(cacheSize:ULong) : Void;
}
