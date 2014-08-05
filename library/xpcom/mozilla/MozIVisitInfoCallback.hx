package xpcom.mozilla;

import xpcom.types.*;

@:native("mozIVisitInfoCallback") extern class MozIVisitInfoCallback extends NsISupports
{
	function handleError(aResultCode:Nsresult, aPlaceInfo:MozIPlaceInfo) : Void;
	function handleResult(aPlaceInfo:MozIPlaceInfo) : Void;
	function onComplete(aResultCode:Nsresult, aPlaceInfo:MozIPlaceInfo) : Void;
}
