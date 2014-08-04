package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIDirectoryIterator") extern class NsIDirectoryIterator
{
	var currentSpec : NsIFileSpec;
}
