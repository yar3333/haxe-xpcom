package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIContentPrefService2") extern class NsIContentPrefService2 extends NsISupports
{
	function addObserverForName(name:AString, observer:NsIContentPrefObserver) : Void;
	function getByDomainAndName(domain:AString, name:AString, context:NsILoadContext, callback:NsIContentPrefCallback2) : Void;
	function getBySubdomainAndName(domain:AString, name:AString, context:NsILoadContext, callback:NsIContentPrefCallback2) : Void;
	function getCachedByDomainAndName(domain:AString, name:AString, context:NsILoadContext) : NsIContentPref;
	function getCachedBySubdomainAndName(domain:AString, name:AString, context:NsILoadContext, len:ULong, prefs:Array<NsIContentPref>) : Void;
	function getCachedGlobal(name:AString, context:NsILoadContext) : NsIContentPref;
	function getGlobal(name:AString, context:NsILoadContext, callback:NsIContentPrefCallback2) : Void;
	function removeAllDomains(context:NsILoadContext, ?callback:NsIContentPrefCallback2) : Void;
	function removeAllGlobals(context:NsILoadContext, ?callback:NsIContentPrefCallback2) : Void;
	function removeByDomain(domain:AString, context:NsILoadContext, ?callback:NsIContentPrefCallback2) : Void;
	function removeByDomainAndName(domain:AString, name:AString, context:NsILoadContext, ?callback:NsIContentPrefCallback2) : Void;
	function removeByName(name:AString, context:NsILoadContext, ?callback:NsIContentPrefCallback2) : Void;
	function removeBySubdomain(domain:AString, context:NsILoadContext, ?callback:NsIContentPrefCallback2) : Void;
	function removeBySubdomainAndName(domain:AString, name:AString, context:NsILoadContext, ?callback:NsIContentPrefCallback2) : Void;
	function removeGlobal(name:AString, context:NsILoadContext, ?callback:NsIContentPrefCallback2) : Void;
	function removeObserverForName(name:AString, observer:NsIContentPrefObserver) : Void;
	function set(domain:AString, name:AString, value:NsIVariant, context:NsILoadContext, ?callback:NsIContentPrefCallback2) : Void;
	function setGlobal(name:AString, value:NsIVariant, context:NsILoadContext, ?callback:NsIContentPrefCallback2) : Void;
}
