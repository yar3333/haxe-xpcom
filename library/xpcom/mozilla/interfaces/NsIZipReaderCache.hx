package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIZipReaderCache") extern class NsIZipReaderCache extends NsISupports
{
	public static inline function createInstance() : NsIZipReaderCache return xpcom.Components.Constructor("@mozilla.org/libjar/zip-reader-cache;1", xpcom.Components.interfaces.nsIZipReaderCache);
	
	@:overload(function(zipFile:NsIFile, zipEntry:AUTF8String) : NsIZipReader {})
	function getInnerZip(zipFile:NsIFile, zipEntry:String) : NsIZipReader;
	function getZip(zipFile:NsIFile) : NsIZipReader;
	function init(cacheSize:ULong) : Void;
}
