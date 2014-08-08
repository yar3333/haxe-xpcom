package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIThread") extern class NsIThread extends NsIEventTarget
{
	/**
	 * The NSPR thread object corresponding to the nsIThread. Read only.
	 */
	var PRThread : PRThread;
}
