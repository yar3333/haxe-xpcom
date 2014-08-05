package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIRandomGenerator") extern class NsIRandomGenerator extends NsISupports
{
	function generateRandomBytes(aLength:ULong, aBuffer:Array<Octet>) : Void;
}
