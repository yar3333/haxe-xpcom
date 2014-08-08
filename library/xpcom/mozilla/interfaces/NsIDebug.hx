package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDebug") extern class NsIDebug extends NsISupports
{
	function abort(aFile:String, aLine:Long) : Void;
	function assertion(aStr:String, aExpr:String, aFile:String, aLine:Long) : Void;
	//function break(aFile:String, aLine:Long) : Void;
	function warning(aStr:String, aFile:String, aLine:Long) : Void;
}
