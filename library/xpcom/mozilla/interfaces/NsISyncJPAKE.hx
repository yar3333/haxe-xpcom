package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsISyncJPAKE") extern class NsISyncJPAKE extends NsISupports
{
	function final(aB:ACString, aGVB:ACString, aRB:ACString, aHkdfInfo:ACString, aAES256Key:{value:ACString}, aHMAC256Key:{value:ACString}) : Void;
	function round1(aSignerID:ACString, aGX1:{value:ACString}, aGV1:{value:ACString}, aR1:{value:ACString}, aGX2:{value:ACString}, aGV2:{value:ACString}, aR2:{value:ACString}) : Void;
	function round2(aPeerID:ACString, aPIN:ACString, aGX3:ACString, aGV3:ACString, aR3:ACString, aGX4:ACString, aGV4:ACString, aR4:ACString, aA:{value:ACString}, aGVA:{value:ACString}, aRA:{value:ACString}) : Void;
}
