package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsICollection") extern class NsICollection extends NsISerializable
{
	function AppendElement(item:NsISupports) : Void;
	function Clear() : Void;
	function Count() : PRUint32;
	function Enumerate() : NsIEnumerator;
	function GetElementAt(index:PRUint32) : NsISupports;
	function QueryElementAt(index:PRUint32, uuid:NsIIDRef, result:NsQIResult) : Void;
	function RemoveElement(item:NsISupports) : Void;
	function SetElementAt(index:PRUint32, item:NsISupports) : Void;
}
