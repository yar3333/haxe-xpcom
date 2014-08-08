package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDataSignatureVerifier") extern class NsIDataSignatureVerifier extends NsISupports
{
	function verifyData(aData:ACString, aSignature:ACString, aPublicKey:ACString) : Bool;
}
