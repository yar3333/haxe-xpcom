package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsILocale") extern class NsILocale extends NsISupports
{
	function getCategory(category:AString) : AString;
}
