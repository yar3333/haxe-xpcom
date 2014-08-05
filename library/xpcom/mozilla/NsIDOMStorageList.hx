package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDOMStorageList") extern class NsIDOMStorageList extends NsISupports
{
	function namedItem(domain:DOMString) : NsIDOMStorage;
}
