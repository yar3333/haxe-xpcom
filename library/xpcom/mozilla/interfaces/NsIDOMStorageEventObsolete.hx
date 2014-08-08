package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMStorageEventObsolete") extern class NsIDOMStorageEventObsolete extends NsIDOMEvent
{
	/**
	 * The domain of the storage area which changed, or "#session" if the event represents a change to session storage. Read only.
	 */
	var domain : DOMString;
	
	function initStorageEvent(typeArg:DOMString, canBubbleArg:Bool, cancelableArg:Bool, keyArg:DOMString, oldValueArg:DOMString, newValueArg:DOMString, urlArg:DOMString, storageAreaArg:NsIDOMStorage) : Void;
}
