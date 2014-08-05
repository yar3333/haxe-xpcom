package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIEffectiveTLDService") extern class NsIEffectiveTLDService extends NsISupports
{
	public static inline function getService() : NsIEffectiveTLDService return Components.classes[cast "@mozilla.org/network/effective-tld-service;1"].getService(Components.interfaces.nsIEffectiveTLDService);
	
	function getBaseDomain(aURI:NsIURI, ?aAdditionalParts:PRUint32) : ACString;
	function getBaseDomainFromHost(aHost:AUTF8String, ?aAdditionalParts:PRUint32) : ACString;
	function getPublicSuffix(aURI:NsIURI) : ACString;
	function getPublicSuffixFromHost(aHost:AUTF8String) : ACString;
}
