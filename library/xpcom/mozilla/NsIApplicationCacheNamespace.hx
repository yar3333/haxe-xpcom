package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIApplicationCacheNamespace") extern class NsIApplicationCacheNamespace extends NsISupports
{
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
}
