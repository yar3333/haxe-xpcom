package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIURLFormatter") extern class NsIURLFormatter extends NsISupports
{
	function formatURL(aFormat:AString) : AString;
	function formatURLPref(aPref:AString) : AString;
}
