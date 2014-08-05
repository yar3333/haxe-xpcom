package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDirectoryServiceProvider2") extern class NsIDirectoryServiceProvider2 extends NsIDirectoryServiceProvider
{
	function getFiles(prop:String) : NsISimpleEnumerator;
}
