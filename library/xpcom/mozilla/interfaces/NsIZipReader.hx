package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIZipReader") extern class NsIZipReader extends NsISupports
{
	public static inline function createInstance() : NsIZipReader
	{
		return xpcom.Components.classes[cast "@mozilla.org/libjar/zip-reader;1"].createInstance(NsIZipReader);
	}
	
	/**
	 * The file that represents the zip with which this zip reader was initialized. Read only.
	 */
	var file : NsIFile;
	/**
	 * The number of entries in the manifest. Read only.
	 */
	var manifestEntriesCount : PRUint32;
	
	function close() : Void;
	function extract(zipEntry:AUTF8String, outFile:NsIFile) : Void;
	function findEntries(aPattern:AUTF8String) : NsIUTF8StringEnumerator;
	function getCertificatePrincipal(aEntryName:AUTF8String) : NsIPrincipal;
	function getEntry(zipEntry:AUTF8String) : NsIZipEntry;
	function getInputStream(zipEntry:AUTF8String) : NsIInputStream;
	function getInputStreamWithSpec(aJarSpec:AUTF8String, zipEntry:AUTF8String) : NsIInputStream;
	function hasEntry(zipEntry:AUTF8String) : Bool;
	function init(zipFile:NsIFile) : Void;
	function open(zipFile:NsIFile) : Void;
	function openInner(zipReader:NsIZipReader, zipEntry:AUTF8String) : Void;
	function test(aEntryName:AUTF8String) : Void;
}
