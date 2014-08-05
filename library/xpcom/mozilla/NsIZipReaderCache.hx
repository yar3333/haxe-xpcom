package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIZipReaderCache") extern class NsIZipReaderCache extends NsISupports
{
	public static inline function createInstance() : NsIZipReaderCache return Components.Constructor("@mozilla.org/libjar/zip-reader-cache;1", Components.interfaces.nsIZipReaderCache);
	
	@:overload(function(zipFile:NsIFile, zipEntry:AUTF8String) : NsIZipReader {})
	function getInnerZip(zipFile:NsIFile, zipEntry:String) : NsIZipReader;
	function getZip(zipFile:NsIFile) : NsIZipReader;
	function init(cacheSize:ULong) : Void;
}
