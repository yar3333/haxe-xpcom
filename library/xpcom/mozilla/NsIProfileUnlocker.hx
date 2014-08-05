package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIProfileUnlocker") extern class NsIProfileUnlocker extends NsISupports
{
	/**
	 * Politely ask the process currently holding the profile's lock to quit.
	 */
	static inline var ATTEMPT_QUIT = 0;
	/**
	 * Forcibly terminate the process holding the profile lock.
	 */
	static inline var FORCE_QUIT = 1;
}
