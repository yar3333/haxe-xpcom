package xpcom.mozilla.modules;

import xpcom.mozilla.interfaces.*;

/**
 * https://developer.mozilla.org/en-US/docs/Mozilla/JavaScript_code_modules/Services.jsm
 */
@:native("Services") extern class Services
{
	private static function __init__() : Void
	{
		Components.utils.importGlobally("resource://gre/modules/Services.jsm");
	}
	
	static var androidBridge : Dynamic; // NsIAndroidBridge;
	/**
	 * nsIXULRuntime
	 * Application information service
	 */
	static var appinfo : NsIXULAppInfo;
	/**
	 * Application shell service
	 */
	static var appShell : NsIAppShellService;
	static var blocklist : NsIBlocklistService;
	static var cache : NsICacheService;
	/**
	 * Cache storage service
	 */
	static var cache2 : NsICacheStorageService;
	static var clipboard : NsIClipboard;
	/**
	 * Error console service
	 */
	static var console : NsIConsoleService;
	static var contentPrefs : NsIContentPrefService;
	static var cookies : NsICookieManager2;
	static var crashmanager : Dynamic;
	/**
	 * nsIProperties
	 * Directory service
	 */
	static var dirsvc : NsIDirectoryService;
	static var domStorageManager : NsIDOMStorageManager;
	static var DOMRequest : Dynamic; // NsIDOMRequestService;
	static var downloads : NsIDownloadManager;
	static var droppedLinkHandler : NsIDroppedLinkHandler;
	static var eTLD : NsIEffectiveTLDService;
	static var focus : NsIFocusManager;
	/**
	 * nsIIOService2
	 */
	static var io : NsIIOService;
	static var locale : NsILocaleService;
	/**
	 * Password Manager service
	 */
	static var logins : NsILoginManager;
	static var metro : Dynamic; // NsIWinMetroUtils
	static var obs : NsIObserverService;
	static var perms : NsIPermissionManager;
	/**
	 * nsIPrefService 
	 * Preferences service
	 */
	static var prefs : NsIPrefBranch;
	static var prompt : NsIPromptService;
	/**
	 * JavaScript subscript loader service
	 */
	static var scriptloader : MozIJSSubScriptLoader;
	static var scriptSecurityManager : Dynamic; // NsIScriptSecurityManager
	/**
	 * Browser search service
	 */
	static var search : NsIBrowserSearchService;	
	/**
	 * Application startup service
	 */
	static var startup : NsIAppStartup;
	/**
	 * Storage API service
	 */
	static var storage : MozIStorageService;
	static var strings : NsIStringBundleService;
	static var sysinfo : NsIPropertyBag2;
	static var telemetry : NsITelemetry;
	static var tm : NsIThreadManager;
	static var uriFixup : NsIURIFixup;
	static var urlFormatter : NsIURLFormatter;
	/**
	 * Version comparator service
	 */
	static var vc : NsIVersionComparator;
	/**
	 * Window mediator service
	 */
	static var wm : NsIWindowMediator;
	/**
	 * Window watcher service
	 */
	static var ww : NsIWindowWatcher;
}
