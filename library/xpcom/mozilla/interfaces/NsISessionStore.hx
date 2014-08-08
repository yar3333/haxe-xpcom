package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsISessionStore") extern class NsISessionStore extends NsISupports
{
	/**
	 * Is it possible to restore the previous session. Will always be false when in Private Browsing mode.
	 */
	var canRestoreLastSession : Bool;
	
	function deleteTabValue(aTab:NsIDOMNode, aKey:AString) : Void;
	function deleteWindowValue(aWindow:NsIDOMWindow, aKey:AString) : Void;
	function duplicateTab(aWindow:NsIDOMWindow, aTab:NsIDOMNode) : NsIDOMNode;
	function forgetClosedTab(aWindow:NsIDOMWindow, aIndex:ULong) : NsIDOMNode;
	function forgetClosedWindow(aIndex:ULong) : NsIDOMNode;
	function getBrowserState() : AString;
	function getClosedTabCount(aWindow:NsIDOMWindow) : ULong;
	function getClosedTabData(aWindow:NsIDOMWindow) : AString;
	function getClosedWindowCount() : ULong;
	function getClosedWindowData() : AString;
	function getTabState(aTab:NsIDOMNode) : AString;
	function getTabValue(aTab:NsIDOMNode, aKey:AString) : AString;
	function getWindowState(aWindow:NsIDOMWindow) : AString;
	function getWindowValue(aWindow:NsIDOMWindow, aKey:AString) : AString;
	function init(aWindow:NsIDOMWindow) : Void;
	function persistTabAttribute(aName:AString) : Void;
	function restoreLastSession() : Void;
	function setBrowserState(aState:AString) : Void;
	function setTabState(aTab:NsIDOMNode, aState:AString) : Void;
	function setTabValue(aTab:NsIDOMNode, aKey:AString, aStringValue:AString) : Void;
	function setWindowState(aWindow:NsIDOMWindow, aState:AString, aOverwrite:Bool) : Void;
	function setWindowValue(aWindow:NsIDOMWindow, aKey:AString, aStringValue:AString) : Void;
	function undoCloseTab(aWindow:NsIDOMWindow, aIndex:ULong) : NsIDOMNode;
	function undoCloseWindow(aIndex:ULong) : NsIDOMWindow;
}
