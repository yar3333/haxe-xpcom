package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDirectoryIterator") extern class NsIDirectoryIterator extends NsISupports
{
	var currentSpec : NsIFileSpec;
	
	function init(parent:NsIFileSpec, resolveSymlink:Bool) : Void;
	function exist() : Bool;
	function next() : Void;
}
