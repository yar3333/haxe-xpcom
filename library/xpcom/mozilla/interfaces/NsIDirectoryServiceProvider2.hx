package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDirectoryServiceProvider2") extern class NsIDirectoryServiceProvider2 extends NsIDirectoryServiceProvider
{
	function getFiles(prop:String) : NsISimpleEnumerator;
}
