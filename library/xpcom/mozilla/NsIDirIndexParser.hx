package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDirIndexParser") extern class NsIDirIndexParser extends NsIStreamListener
{
	/**
	 * The comment given, if any. This result is only valid after OnStopRequest has occurred, because it can occur anywhere in the datastream. Read only.
	 */
	var comment : String;
	/**
	 * The encoding to use.
	 */
	var encoding : String;
	/**
	 * The interface to use as a callback for new entries.
	 */
	var listener : NsIDirIndexListener;
}
