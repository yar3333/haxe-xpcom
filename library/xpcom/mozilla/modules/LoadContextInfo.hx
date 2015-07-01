package xpcom.mozilla.modules;

import xpcom.mozilla.interfaces.NsILoadContext;

@:native("LoadContextInfo") extern class LoadContextInfo
{
	private static function __init__() : Void
	{
		Components.utils.importGlobally("resource://gre/modules/LoadContextInfo.jsm");
	}
	
	/**
	 * Fully customizable
	 */
	static function custom(_private:Bool, _anonymous:Bool, _appId:Int, _inBrowser:Bool) : LoadContextInfo;

	/**
	 * Copies info from provided nsILoadContext
	 */
	static function fromLoadContext(_loadContext:NsILoadContext, _anonymous:Bool) : LoadContextInfo;

	/**
	 * Copies info from provided window object
	 */
	static function fromWindow(_window:Dynamic, _anonymous:Bool) : LoadContextInfo;
}
