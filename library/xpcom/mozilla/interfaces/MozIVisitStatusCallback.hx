package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.mozIVisitStatusCallback") extern class MozIVisitStatusCallback extends NsISupports
{
	function isVisited(aURI:NsIURI, aVisitedStatus:Bool) : Void;
}
