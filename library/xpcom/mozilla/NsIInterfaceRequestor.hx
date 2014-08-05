package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIInterfaceRequestor") extern class NsIInterfaceRequestor extends NsISupports
{
	function getInterface(uuid:NsIIDRef, result:NsQIResult) : Void;
}
