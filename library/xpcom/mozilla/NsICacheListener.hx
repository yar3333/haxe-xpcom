package xpcom.mozilla;

import xpcom.types.*;

@:native("nsICacheListener") extern class NsICacheListener extends NsISupports
{
	function onCacheEntryAvailable(descriptor:NsICacheEntryDescriptor, accessGranted:NsCacheAccessMode, status:Nsresult) : Void;
	function onCacheEntryDoomed(status:Nsresult) : Void;
}
