package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDirectoryIterator") extern class NsIDirectoryIterator extends NsISupports
{
	var currentSpec : NsIFileSpec;
	
	function init(parent:NsIFileSpec, resolveSymlink:Bool) : Void;
	function exist() : Bool;
	function next() : Void;
}
