package xpcom.mozilla;

import xpcom.types.*;

@:native("nsICryptoHMAC") extern class NsICryptoHMAC extends NsISupports
{
	function finish(aASCII:PRBool) : ACString;
	function init(aAlgorithm:ULong, aKeyObject:NsIKeyObject) : Void;
	function reset() : Void;
	function update(aData:Array<Octet>, aLen:ULong) : Void;
	function updateFromStream(aStream:NsIInputStream, aLen:ULong) : Void;
}
