package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIBlocklistPrompt") extern class NsIBlocklistPrompt extends NsISupports
{
	function prompt(aAddons:Array<NsIVariant>, ?aCount:PRUint32) : Void;
}
