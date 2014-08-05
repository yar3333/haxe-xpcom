package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDOMStorageEventObsolete") extern class NsIDOMStorageEventObsolete extends NsIDOMEvent
{
	/**
	 * The domain of the storage area which changed, or "#session" if the event represents a change to session storage. Read only.
	 */
	var domain : DOMString;
}
