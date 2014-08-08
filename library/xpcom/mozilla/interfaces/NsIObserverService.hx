package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIObserverService") extern class NsIObserverService extends NsISupports
{
	public static inline function getService() : NsIObserverService
	{
		return xpcom.Components.classes[cast "@mozilla.org/observer-service;1"].getService(NsIObserverService);
	}
	
	function addObserver(anObserver:NsIObserver, aTopic:String, ownsWeak:Bool) : Void;
	function enumerateObservers(aTopic:String) : NsISimpleEnumerator;
	function notifyObservers(aSubject:NsISupports, aTopic:String, someData:Wstring) : Void;
	function removeObserver(anObserver:NsIObserver, aTopic:String) : Void;
}
