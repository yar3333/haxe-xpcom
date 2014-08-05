package xpcom.mozilla;

import xpcom.types.*;

@:native("nsICryptoHash") extern class NsICryptoHash extends NsISupports
{
	function finish(aASCII:PRBool) : ACString;
	function init(aAlgorithm:ULong) : Void;
	function initWithString(aAlgorithm:ACString) : Void;
	function update(aData:Array<Octet>, aLen:ULong) : Void;
	function updateFromStream(aStream:NsIInputStream, aLen:ULong) : Void;
}
