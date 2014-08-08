package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIScriptableUnescapeHTML") extern class NsIScriptableUnescapeHTML extends NsISupports
{
	public static inline function getService() : NsIScriptableUnescapeHTML
	{
		return xpcom.Components.classes[cast "@mozilla.org/feed-unescapehtml;1"].getService(NsIScriptableUnescapeHTML);
	}
	
	function parseFragment(fragment:AString, isXML:PRBool, baseURI:NsIURI, element:NsIDOMElement) : NsIDOMDocumentFragment;
	function unescape(src:AString) : AString;
}
