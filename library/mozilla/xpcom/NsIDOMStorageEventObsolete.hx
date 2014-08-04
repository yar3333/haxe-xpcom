package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIDOMStorageEventObsolete") extern class NsIDOMStorageEventObsolete
{
	/**
	 * The domain of the storage area which changed, or "#session" if the event represents a change to session storage. Read only.
	 */
	var domain : DOMString;
}
