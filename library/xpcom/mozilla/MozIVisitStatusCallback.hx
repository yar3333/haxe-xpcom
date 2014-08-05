package xpcom.mozilla;

import xpcom.types.*;

@:native("mozIVisitStatusCallback") extern class MozIVisitStatusCallback extends NsISupports
{
	function isVisited(aURI:NsIURI, aVisitedStatus:Bool) : Void;
}
