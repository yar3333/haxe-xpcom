package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIZipReader") extern class NsIZipReader extends NsISupports
{
	public static inline function createInstance() : NsIZipReader return Components.Constructor("@mozilla.org/libjar/zip-reader;1", Components.interfaces.nsIZipReader);
	
	/**
	 * The file that represents the zip with which this zip reader was initialized. Read only.
	 */
	var file : NsIFile;
	/**
	 * The number of entries in the manifest. Read only.
	 */
	var manifestEntriesCount : PRUint32;
	
	function close() : Void;
	@:overload(function(zipEntry:AUTF8String, outFile:NsIFile) : Void {})
	function extract(zipEntry:String, outFile:NsIFile) : Void;
	@:overload(function(aPattern:AUTF8String) : NsIUTF8StringEnumerator {})
	function findEntries(aPattern:String) : NsIUTF8StringEnumerator;
	@:overload(function(aEntryName:AUTF8String) : NsIPrincipal {})
	function getCertificatePrincipal(aEntryName:String) : NsIPrincipal;
	@:overload(function(zipEntry:AUTF8String) : NsIZipEntry {})
	function getEntry(zipEntry:String) : NsIZipEntry;
	@:overload(function(zipEntry:AUTF8String) : NsIInputStream {})
	function getInputStream(zipEntry:String) : NsIInputStream;
	@:overload(function(aJarSpec:AUTF8String, zipEntry:AUTF8String) : NsIInputStream {})
	function getInputStreamWithSpec(aJarSpec:AUTF8String, zipEntry:String) : NsIInputStream;
	function hasEntry(zipEntry:AUTF8String) : Bool;
	function init(zipFile:NsIFile) : Void;
	function open(zipFile:NsIFile) : Void;
	@:overload(function(zipReader:NsIZipReader, zipEntry:AUTF8String) : Void {})
	function openInner(zipReader:NsIZipReader, zipEntry:String) : Void;
	@:overload(function(aEntryName:AUTF8String) : Void {})
	function test(aEntryName:String) : Void;
}
