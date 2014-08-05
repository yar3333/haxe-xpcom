package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIDOMStorageManager") extern class NsIDOMStorageManager extends NsISupports
{
	public static inline function getService() : NsIDOMStorageManager return Components.classes[cast "@mozilla.org/dom/storagemanager;1"].getService(Components.interfaces.nsIDOMStorageManager);
}
