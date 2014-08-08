package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIStringBundle") extern class NsIStringBundle extends NsISupports
{
	function formatStringFromID(aID:Long, params:Array<Wstring>, length:ULong) : Wstring;
	function formatStringFromName(aName:Wstring, params:Array<Wstring>, length:ULong) : Wstring;
	function getSimpleEnumeration() : NsISimpleEnumerator;
	function GetStringFromID(aID:Long) : Wstring;
	function GetStringFromName(aName:Wstring) : Wstring;
}
