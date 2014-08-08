package xpcom.mozilla.interfaces;

import xpcom.Components;
import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIObserverService") extern class NsIObserverService extends NsISupports
{
	public static inline function getService() : NsIObserverService return Components.classes[cast "@mozilla.org/observer-service;1"].getService(Components.interfaces.nsIObserverService);
	
	function addObserver(anObserver:NsIObserver, aTopic:String, ownsWeak:Bool) : Void;
	function enumerateObservers(aTopic:String) : NsISimpleEnumerator;
	function notifyObservers(aSubject:NsISupports, aTopic:String, someData:Wstring) : Void;
	function removeObserver(anObserver:NsIObserver, aTopic:String) : Void;
}
