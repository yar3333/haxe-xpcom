package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIEffectiveTLDService") extern class NsIEffectiveTLDService extends NsISupports
{
	public static inline function getService() : NsIEffectiveTLDService return xpcom.Components.classes[cast "@mozilla.org/network/effective-tld-service;1"].getService(xpcom.Components.interfaces.nsIEffectiveTLDService);
	
	function getBaseDomain(aURI:NsIURI, ?aAdditionalParts:PRUint32) : ACString;
	function getBaseDomainFromHost(aHost:AUTF8String, ?aAdditionalParts:PRUint32) : ACString;
	function getPublicSuffix(aURI:NsIURI) : ACString;
	function getPublicSuffixFromHost(aHost:AUTF8String) : ACString;
}
