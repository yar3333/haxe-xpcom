package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.mozIColorAnalyzer") extern class MozIColorAnalyzer
{
	function findRepresentativeColor(imageURI:NsIURI, callback:MozIRepresentativeColorCallback) : Void;
}
