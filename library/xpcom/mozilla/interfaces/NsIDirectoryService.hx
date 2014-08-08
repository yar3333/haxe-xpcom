package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDirectoryService") extern class NsIDirectoryService extends NsISupports
{
	function init() : Void;
	function registerProvider(prov:NsIDirectoryServiceProvider) : Void;
	function unregisterProvider(prov:NsIDirectoryServiceProvider) : Void;
}
