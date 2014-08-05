package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIScriptableUnescapeHTML") extern class NsIScriptableUnescapeHTML extends NsISupports
{
	public static inline function getService() : NsIScriptableUnescapeHTML return Components.classes[cast "@mozilla.org/feed-unescapehtml;1"].getService(Components.interfaces.nsIScriptableUnescapeHTML);
}
