package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIBidiKeyboard") extern class NsIBidiKeyboard extends NsISupports
{
	function isLangRTL() : Bool;
	function setLangFromBidiLevel(aLevel:PRUint8) : Void;
}
