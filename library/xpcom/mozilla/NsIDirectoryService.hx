package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDirectoryService") extern class NsIDirectoryService extends NsISupports
{
	function init() : Void;
	function registerProvider(prov:NsIDirectoryServiceProvider) : Void;
	function unregisterProvider(prov:NsIDirectoryServiceProvider) : Void;
}
