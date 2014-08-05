package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDiskCacheStreamInternal") extern class NsIDiskCacheStreamInternal extends NsISupports
{
	function closeInternal() : Void;
}
