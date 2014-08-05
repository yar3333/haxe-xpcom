package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIThread") extern class NsIThread
{
	/**
	 * The NSPR thread object corresponding to the nsIThread. Read only.
	 */
	var PRThread : PRThread;
}
