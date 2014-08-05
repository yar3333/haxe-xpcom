package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDirIndexListener") extern class NsIDirIndexListener extends NsISupports
{
	function onIndexAvailable(aRequest:NsIRequest, aCtxt:NsISupports, aIndex:NsIDirIndex) : Void;
	function onInformationAvailable(aRequest:NsIRequest, aCtxt:NsISupports, aInfo:AString) : Void;
}
