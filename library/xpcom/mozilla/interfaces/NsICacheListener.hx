package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsICacheListener") extern class NsICacheListener extends NsISupports
{
	function onCacheEntryAvailable(descriptor:NsICacheEntryDescriptor, accessGranted:NsCacheAccessMode, status:Nsresult) : Void;
	function onCacheEntryDoomed(status:Nsresult) : Void;
}
