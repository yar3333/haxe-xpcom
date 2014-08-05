package xpcom.mozilla;

import xpcom.types.*;

@:native("nsISupportsWeakReference") extern class NsISupportsWeakReference extends NsISupports
{
	function GetWeakReference() : NsIWeakReference;
}
