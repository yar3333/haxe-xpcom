package xpcom.mozilla;

import xpcom.types.*;

@:native("mozIColorAnalyzer") extern class MozIColorAnalyzer
{
	function findRepresentativeColor(imageURI:NsIURI, callback:MozIRepresentativeColorCallback) : Void;
}
