package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIApplicationCacheNamespace") extern class NsIApplicationCacheNamespace extends NsISupports
{
	/**
	 * Items matching this namespace can be fetched from the network when loading from this cache. The data attribute is not used.
	 */
	static inline var NAMESPACE_BYPASS = 1;
	/**
	 * Items matching this namespace can be fetched from the network when loading from this cache; however, if the load fails, the cache entry specified by the data attribute should be loaded intstead.
	 */
	static inline var NAMESPACE_FALLBACK = 2;
	/**
	 * Items matching this namespace should be cached opportunistically. Successful top-level loads of resources in this namespace should be placed into the application cache. This can be combined with NAMESPACE_FALLBACK to provide a fallback entry in the data attribute.
	 */
	static inline var NAMESPACE_OPPORTUNISTIC = 4;
	
	/**
	 * Data associated with the namespace, such as a fallback. How this attribute is used varies depending on the namespace type. If the data is a URI, this attribute should be the URI's asciiSpec. Read only.
	 */
	var data : ACString;
	/**
	 * A bit field indicating one or more namespace types. Must be one or more of the constants defined under Constants on this page. Read only.
	 */
	var itemType : ULong;
	/**
	 * The prefix of this namespace. This should be the asciiSpec of the URI prefix. Read only.
	 */
	var namespaceSpec : ACString;
	
	function init(itemType:ULong, namespaceSpec:ACString, data:ACString) : Void;
}
