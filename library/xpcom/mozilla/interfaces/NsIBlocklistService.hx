package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIBlocklistService") extern class NsIBlocklistService extends NsISupports
{
	static inline var STATE_NOT_BLOCKED = 0;
	static inline var STATE_SOFTBLOCKED = 1;
	static inline var STATE_BLOCKED = 2;
	static inline var STATE_OUTDATED = 3;
	
	function getAddonBlocklistState(addon:JSVal, ?appVersion:AString, ?toolkitVersion:AString) : ULong;
	function getPluginBlocklistState(plugin:NsIPluginTag, ?appVersion:AString, ?toolkitVersion:AString) : ULong;
	function isAddonBlocklisted(addon:JSVal, ?appVersion:AString, ?toolkitVersion:AString) : Bool;
}
