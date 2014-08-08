package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDispatchSupport") extern class NsIDispatchSupport extends NsISupports
{
	function COMVariant2JSVal(comvar:COMVARIANTPtr, val:JSVal) : Void;
	function getHostingFlags(aContext:String) : ULong;
	function isClassMarkedSafeForScripting(cid:NsCIDRef, classExists:Bool) : Bool;
	function isClassSafeToHost(cx:JSContextPtr, cid:NsCIDRef, capsCheck:Bool, classExists:Bool) : Bool;
	function isObjectSafeForScripting(theObject:VoidPtr, id:NsIIDRef) : Bool;
	function JSVal2COMVariant(_var:JSVal, comvar:COMVARIANT) : Void;
}
