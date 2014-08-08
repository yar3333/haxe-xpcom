package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIEventListenerService") extern class NsIEventListenerService extends NsISupports
{
	public static inline function createInstance() : NsIEventListenerService
	{
		return xpcom.Components.classes[cast "@mozilla.org/eventlistenerservice;1"].createInstance(NsIEventListenerService);
	}
	
	/**
	 * Returns system event group. Read only.  Obsolete since Gecko 7.0
	 */
	var systemEventGroup : NsIDOMEventGroup;
	
	function getEventTargetChainFor(aEventTarget:NsIDOMEventTarget, ?aCount:{value:ULong}, aOutArray:Array<NsIDOMEventTarget>) : Void;
	function getListenerInfoFor(aEventTarget:NsIDOMEventTarget, ?aCount:{value:ULong}, aOutArray:Array<NsIEventListenerInfo>) : Void;
	function hasListenersFor(aEventTarget:NsIDOMEventTarget, aType:DOMString) : Bool;
	function addSystemEventListener(target:NsIDOMEventTarget, type:DOMString, listener:NsIDOMEventListener, useCapture:Bool) : Void;
	function removeSystemEventListener(target:NsIDOMEventTarget, type:DOMString, listener:NsIDOMEventListener, useCapture:Bool) : Void;
}
