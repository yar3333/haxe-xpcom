package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDirectoryServiceProvider") extern class NsIDirectoryServiceProvider extends NsISupports
{
	function getFile(prop:String, persistent:PRBool) : NsIFile;
}
