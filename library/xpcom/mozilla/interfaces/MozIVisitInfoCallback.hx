package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.mozIVisitInfoCallback") extern class MozIVisitInfoCallback extends NsISupports
{
	function handleError(aResultCode:Nsresult, aPlaceInfo:MozIPlaceInfo) : Void;
	function handleResult(aPlaceInfo:MozIPlaceInfo) : Void;
	function onComplete(aResultCode:Nsresult, aPlaceInfo:MozIPlaceInfo) : Void;
}
