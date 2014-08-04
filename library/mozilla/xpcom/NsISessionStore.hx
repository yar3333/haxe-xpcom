package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsISessionStore") extern class NsISessionStore extends NsISupports
{
	/**
	 * Is it possible to restore the previous session. Will always be false when in Private Browsing mode.
	 */
	var canRestoreLastSession : Bool;
}
