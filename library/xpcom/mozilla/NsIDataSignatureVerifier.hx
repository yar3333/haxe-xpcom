package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDataSignatureVerifier") extern class NsIDataSignatureVerifier extends NsISupports
{
	function verifyData(aData:ACString, aSignature:ACString, aPublicKey:ACString) : Bool;
}
