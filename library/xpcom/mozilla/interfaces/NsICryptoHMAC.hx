package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsICryptoHMAC") extern class NsICryptoHMAC extends NsISupports
{
	function finish(aASCII:PRBool) : ACString;
	function init(aAlgorithm:ULong, aKeyObject:NsIKeyObject) : Void;
	function reset() : Void;
	function update(aData:Array<Octet>, aLen:ULong) : Void;
	function updateFromStream(aStream:NsIInputStream, aLen:ULong) : Void;
}
