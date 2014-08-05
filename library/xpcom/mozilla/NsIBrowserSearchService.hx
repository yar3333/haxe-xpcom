package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIBrowserSearchService") extern class NsIBrowserSearchService extends NsISupports
{
	/**
	 * The currently active search engine. May be null if there are no visible search engines.
	 */
	var currentEngine : NsISearchEngine;
	/**
	 * The default search engine. Returns the first visible engine if the default engine is hidden. May be null if there are no visible search engines. Read only.
	 */
	var defaultEngine : NsISearchEngine;
	/**
	 * The original default engine. This differs from the "defaultEngine" attribute in that it always returns a given build's default engine, regardless of whether it is hidden. Read only.
	 */
	var originalDefaultEngine : NsISearchEngine;
}
