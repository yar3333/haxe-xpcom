package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsICycleCollectorListener") extern class NsICycleCollectorListener extends NsISupports
{
	function begin() : Void;
	function beginDescriptions() : Void;
	function describeGCedObject(aAddress:ULongLong, aMarked:Bool) : Void;
	function describeRefcountedObject(aAddress:ULongLong, aKnownEdges:ULong, aTotalEdges:ULong) : Void;
	function end() : Void;
	function noteEdge(aFromAddress:ULongLong, aToAddress:ULongLong, aEdgeName:String) : Void;
	function noteObject(aAddress:ULongLong, aObjectDescription:String) : Void;
}
