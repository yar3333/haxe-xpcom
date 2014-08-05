package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIUrlListManagerCallback") extern class NsIUrlListManagerCallback extends NsISupports
{
	function handleEvent(value:ACString) : Void;
}
