package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIConsoleMessage") extern class NsIConsoleMessage extends NsISupports
{
	/**
	 * The message in a string format. [binaryname(MessageMoz)] Read only.
	 */
	var message : Wstring;
}
