package xpcom.mozilla.interfaces;

import xpcom.Components;
import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIIDNService") extern class NsIIDNService extends NsISupports
{
	public static inline function getService() : NsIIDNService return Components.classes[cast "@mozilla.org/network/idn-service;1"].getService(Components.interfaces.nsIIDNService);
	
	function convertACEtoUTF8(input:ACString) : AUTF8String;
	function convertToDisplayIDN(input:AUTF8String, isASCII:Bool) : AUTF8String;
	function convertUTF8toACE(input:AUTF8String) : ACString;
	function isACE(input:ACString) : Bool;
	function normalize(input:AUTF8String) : AUTF8String;
}
