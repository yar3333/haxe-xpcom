package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIWindowsShellService") extern class NsIWindowsShellService extends NsIShellService
{
	/**
	 * HKEY_CLASSES_ROOT. <span class="inlineIndicator obsolete obsoleteInline" title="(Firefox 1.5 / Thunderbird 1.5 / SeaMonkey 1.0)">Obsolete since Gecko 1.8</span>
	 */
	static inline var HKCR = 0;
	/**
	 * HKEY_CURRENT_CONFIG. <span class="inlineIndicator obsolete obsoleteInline" title="(Firefox 1.5 / Thunderbird 1.5 / SeaMonkey 1.0)">Obsolete since Gecko 1.8</span>
	 */
	static inline var HKCC = 1;
	/**
	 * HKEY_CURRENT_USER. <span class="inlineIndicator obsolete obsoleteInline" title="(Firefox 1.5 / Thunderbird 1.5 / SeaMonkey 1.0)">Obsolete since Gecko 1.8</span>
	 */
	static inline var HKCU = 2;
	/**
	 * HKEY_LOCAL_MACHINE. <span class="inlineIndicator obsolete obsoleteInline" title="(Firefox 1.5 / Thunderbird 1.5 / SeaMonkey 1.0)">Obsolete since Gecko 1.8</span>
	 */
	static inline var HKLM = 3;
	/**
	 * HKEY_USERS. <span class="inlineIndicator obsolete obsoleteInline" title="(Firefox 1.5 / Thunderbird 1.5 / SeaMonkey 1.0)">Obsolete since Gecko 1.8</span>
	 */
	static inline var HKU = 4;
	
	/**
	 * The desktop background color, visible when no background image is used, or if the background image is centered and does not fill the entire screen. A rgb value, where (r Obsolete since Gecko 1.8
	 */
	var desktopBackgroundColor : ULong;
	/**
	 * The number of unread mail messages for the current user. Read only.
	 */
	var unreadMailCount : ULong;
	
	function getRegistryEntry(aHKeyConstant:Long, aSubKeyName:String, aValueName:String) : String;
	function restoreFileSettings(aForAllUsers:Bool) : Void;
	function shortcutMaintenance() : Void;
}
