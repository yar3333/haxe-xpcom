package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIFileURL") extern class NsIFileURL extends NsISupports
{
	/**
	 * Get/Set nsIFile corresponding to this URL. The getter returns a reference to an immutable object. Callers must clone before attempting to modify the returned nsIFile object. Note: This constraint might not be enforced at runtime, so beware! The setter clones the nsIFile object (allowing the caller to safely modify the nsIFile object after setting it on this interface).
	 */
	var file : NsIFile;
}
