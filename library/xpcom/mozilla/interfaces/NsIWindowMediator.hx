package xpcom.mozilla.interfaces;

import xpcom.Components;
import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIWindowMediator") extern class NsIWindowMediator extends NsISupports
{
	public static inline function getService() : NsIWindowMediator return Components.classes[cast "@mozilla.org/appshell/window-mediator;1"].getService(Components.interfaces.nsIWindowMediator);
	
	/**
	 * Send window to top.
	 */
	static inline var zLevelTop = 1;
	/**
	 * Send window to bottom.
	 */
	static inline var zLevelBottom = 2;
	/**
	 * Place window below some window.
	 */
	static inline var zLevelBelow = 3;
	
	function addListener(aListener:NsIWindowMediatorListener) : Void;
	function calculateZPosition(inWindow:NsIXULWindow, inPosition:ULong, inBelow:NsIWidget, outPosition:ULong, outBelow:NsIWidget) : Bool;
	function getEnumerator(aWindowType:Wstring) : NsISimpleEnumerator;
	function getMostRecentWindow(aWindowType:Wstring) : NsIDOMWindow;
	function getOuterWindowWithId(aOuterWindowID:ULongLong) : NsIDOMWindow;
	function getXULWindowEnumerator(aWindowType:Wstring) : NsISimpleEnumerator;
	function getZLevel(aWindow:NsIXULWindow) : PRUint32;
	function getZOrderDOMWindowEnumerator(aWindowType:Wstring, aFrontToBack:Bool) : NsISimpleEnumerator;
	function getZOrderXULWindowEnumerator(aWindowType:Wstring, aFrontToBack:Bool) : NsISimpleEnumerator;
	function registerWindow(aWindow:NsIXULWindow) : Void;
	function removeListener(aListener:NsIWindowMediatorListener) : Void;
	function setZLevel(aWindow:NsIXULWindow, aZLevel:PRUint32) : Void;
	function setZPosition(inWindow:NsIXULWindow, inPosition:ULong, inBelow:NsIXULWindow) : Void;
	function unregisterWindow(aWindow:NsIXULWindow) : Void;
	function updateWindowTimeStamp(aWindow:NsIXULWindow) : Void;
	function updateWindowTitle(aWindow:NsIXULWindow, inTitle:Wstring) : Void;
}
