package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIBidiKeyboard") extern class NsIBidiKeyboard extends NsISupports
{
	function isLangRTL() : Bool;
	function setLangFromBidiLevel(aLevel:PRUint8) : Void;
}
