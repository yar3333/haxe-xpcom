package xpcom.mozilla.modules.os;

import xpcom.types.*;

@:native("OS.File.Info") extern class Info
{
	static function toMsg(value:Info) : Dynamic;
	
	var isDir : Bool;
	var isSymLink : Bool;
	var size : Int;
	var lastAccessDate : Date;
	var lastModificationDate : Date;
	
	var unixOwner : Int;
	var unixGroup : Int;
	var unixMode : Int;
	
	/**
	 * A Date representing the time at which the file was created. May not be exact on all file systems.
	 */
	var winBirthDate : Date;
	
	/**
	 * A Date representing the time at which the file was created. May not be exact on all file systems.
	 */
	var macBirthDate : Date;
}

@:native("OS.File") extern class File
{
	static function __init__() : Void
	{
		Components.utils.import_("resource://gre/modules/osfile.jsm");
	}
	
	static function open(path:String, ?mode:Dynamic, ?options:Dynamic) : Promise<File>;
	/**
	 * Requires Gecko 27.0
	 */
	static function openUnique(path:String, ?options:Dynamic) : Promise<Dynamic>; 
	static function copy(sourcePath:String, destPath:String, ?options:Dynamic) : Promise<Void>;
	static function exists(path:String) : Promise<Bool>;
	static function getCurrentDirectory() : Promise<String>;
	static function makeDir(path:String, ?options:Dynamic) : Promise<Void>;
	static function move(sourcePath:String, destPath:String) : Promise<Void>;
	static function read(path:String, ?options:Dynamic) : Promise<Array<UInt8>>;
	static function remove(path:String) : Promise<Void>;
	static function removeEmptyDir(path:String) : Promise<Void>;
	/**
	 * Requires Gecko 27.0
	 */
	static function removeDir(path:String, ?options:Dynamic) : Promise<Void>;
	static function setCurrentDirectory(path:String) : Promise<Void>;
	/**
	 * Requires Gecko 28.0
	 */
	static function setDates(path:String, accessDate:Date, modificationDate:Date) : Promise<Void>;
	static function stat(path:String, ?options:Dynamic) : Promise<Info>;
	static function writeAtomic(path:String, data:js.html.ArrayBufferView, options:Dynamic) : Promise<Void>;
	
	
	function close() : Promise<Void>;
	/**
	 * Requires Gecko 27.0
	 */
	function flush() : Promise<Void>;
	function getPosition() : Promise<Int>;
	inline function read_(bytes:Int) : Promise<Int> untyped return this["read"](bytes);
	function readTo(dest:js.html.ArrayBufferView, ?options:Dynamic) : Promise<Int>;
	/**
	 * Requires Gecko 28.0
	 */ 
	function setDates_(accessDate:Date, modificationDate:Date) : Promise<Void> untyped return this["setDates"](accessDate, modificationDate);
	function setPosition(bytes:Int) : Promise<Void>;
	function stat_() : Promise<Info> untyped return this["stat"]();
	function write(source:js.html.ArrayBufferView, ?options:Dynamic) : Promise<Int>;
}
