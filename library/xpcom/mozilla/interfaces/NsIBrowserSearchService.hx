package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIBrowserSearchService") extern class NsIBrowserSearchService extends NsISupports
{
	public static inline function getService(?observer:NsIBrowserSearchInitObserver) : NsIBrowserSearchService
	{
		var r = xpcom.Components.classes[cast "@mozilla.org/browser/search-service;1"].getService(NsIBrowserSearchService);
		r.init(observer);
		return r;
	}
	
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
	
	function addEngine(engineURL:AString, dataType:Long, iconURL:AString, confirm:Bool, ?callback:NsISearchInstallCallback) : Void;
	function addEngineWithDetails(name:AString, iconURL:AString, alias:AString, description:AString, method:AString, url:AString) : Void;
	function getDefaultEngines(?engineCount:ULong, engines:Array<NsISearchEngine>) : Void;
	function getEngineByAlias(alias:AString) : NsISearchEngine;
	function getEngineByName(aEngineName:AString) : NsISearchEngine;
	function getEngines(?engineCount:ULong, engines:Array<NsISearchEngine>) : Void;
	function getVisibleEngines(?engineCount:ULong, engines:Array<NsISearchEngine>) : Void;
	function init(?observer:NsIBrowserSearchInitObserver) : Void;
	function moveEngine(engine:NsISearchEngine, newIndex:Long) : Void;
	function removeEngine(engine:NsISearchEngine) : Void;
	function restoreDefaultEngines() : Void;
}
