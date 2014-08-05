package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDirectoryIterator") extern class NsIDirectoryIterator extends NsISupports
{
	var currentSpec : NsIFileSpec;
}
