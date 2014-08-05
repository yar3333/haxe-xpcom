package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDirectoryIterator") extern class NsIDirectoryIterator
{
	var currentSpec : NsIFileSpec;
}
