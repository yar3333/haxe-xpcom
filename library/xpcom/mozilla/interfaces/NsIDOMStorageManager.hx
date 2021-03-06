package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMStorageManager") extern class NsIDOMStorageManager extends NsISupports
{
	public static inline function getService() : NsIDOMStorageManager
	{
		return xpcom.Components.classes[cast "@mozilla.org/dom/storagemanager;1"].getService(NsIDOMStorageManager);
	}
	
	function clearOfflineApps() : Void;
	function getLocalStorageForPrincipal(aPrincipal:NsIPrincipal, aDocumentURI:DOMString) : NsIDOMStorage;
	function getUsage(aOwnerDomain:AString) : Long;
}
