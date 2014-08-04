package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIAppShell") extern class NsIAppShell extends NsISupports
{
	/**
	 * The current event loop nesting level. Read only.
	 */
	var eventloopNestingLevel : ULong;
}
