package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsICryptoHash") extern class NsICryptoHash extends NsISupports
{
	function finish(aASCII:PRBool) : ACString;
	function init(aAlgorithm:ULong) : Void;
	function initWithString(aAlgorithm:ACString) : Void;
	function update(aData:Array<Octet>, aLen:ULong) : Void;
	function updateFromStream(aStream:NsIInputStream, aLen:ULong) : Void;
}
