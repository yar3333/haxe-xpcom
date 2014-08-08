package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsISyncJPAKE") extern class NsISyncJPAKE extends NsISupports
{
	function final(aB:ACString, aGVB:ACString, aRB:ACString, aHkdfInfo:ACString, aAES256Key:ACString, aHMAC256Key:ACString) : Void;
	function round1(aSignerID:ACString, aGX1:ACString, aGV1:ACString, aR1:ACString, aGX2:ACString, aGV2:ACString, aR2:ACString) : Void;
	function round2(aPeerID:ACString, aPIN:ACString, aGX3:ACString, aGV3:ACString, aR3:ACString, aGX4:ACString, aGV4:ACString, aR4:ACString, aA:ACString, aGVA:ACString, aRA:ACString) : Void;
}
