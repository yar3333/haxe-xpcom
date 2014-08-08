package xpcom.mozilla.modules;

import xpcom.mozilla.interfaces.*;

@:native("FileUtils.File") extern class File extends NsIFile
{
	function new(nativePath:String) : Void;
}

@:native("FileUtils.Path") extern class Path
{
	function new(nativePath:String) : Void;
}

@:native("FileUtils") extern class FileUtils
{
	private static function __init__() : Void
	{
		Components.utils.import_("resource://gre/modules/FileUtils.jsm");
	}
	
	/**
	 * @param	key The nsIDirectoryService key to start from (see SpecialFile class).
	 */
	static function getFile(key:String, paths:Array<String>, followLinks:Bool) : NsIFile;
	/**
	 * 
	 * @param	key The nsIDirectoryService key to start from (see SpecialFile class).
	 */
	static function getDir(key:String, paths:Array<String>, shouldCreate:Bool, followLinks:Bool) : NsIFile;
	static function openFileOutputStream(file:NsIFile, modeFlags:Int) : NsIFileOutputStream;
	static function openAtomicFileOutputStream(file:NsIFile, modeFlags:Int) : NsIFileOutputStream;
	static function openSafeFileOutputStream(file:NsIFile, modeFlags:Int) : NsIFileOutputStream;
	static function closeAtomicFileOutputStream(stream:NsIFileOutputStream) : Void;
	static function closeSafeFileOutputStream(stream:NsIFileOutputStream) : Void;
}
