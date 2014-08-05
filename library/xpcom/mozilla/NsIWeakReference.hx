package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIWeakReference") extern class NsIWeakReference extends NsISupports
{
	function QueryReferent(uuid:NsIIDRef, result:NsQIResult) : Void;
}
