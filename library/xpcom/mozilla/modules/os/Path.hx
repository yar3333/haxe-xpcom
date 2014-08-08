package xpcom.mozilla.modules.os;

@:native("OS.Path") extern class Path
{
	/**
	 * Return the final component of a path. basename("/home/user/bashrc") will produce "bashrc".
	 */
	static function basename(path:String) : String;
	/**
	 * Return the directory part of the path. dirname("/home/user/bashrc") will produce "/home/user".
	 */
	static function dirname(path:String) : String;
	static function join(path1:String, path2:String, ?path3:String, ?path4:String, ?path5:String, ?path6:String, ?path7:String, ?path8:String) : String;
	/**
	 * normalize("/a/..//b") will produce "/b".
	 */
	static function normalize(path:String) : String;
	static function split(path:String) : { absolute:Bool, components:Array<String>, ?winDrive:String };
	static function winGetDrive(path:String) : String;
	static function winIsAbsolute(path:String) : Bool;
}
