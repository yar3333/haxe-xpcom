package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMXULCommandDispatcher")
extern class NsIDOMXULCommandDispatcher extends NsISupports
{
	var focusedElement : NsIDOMElement; // attribute
	var focusedWindow : NsIDOMWindow; // attribute
	var suppressFocusScroll : Bool; // attribute

	function addCommandUpdater(updater:NsIDOMElement, events:DOMString, targets:DOMString) : Void;
	function removeCommandUpdater(updater:NsIDOMElement) : Void;

	function updateCommands(eventName:DOMString) : Void;

	function getControllerForCommand(command:String) : NsIController;
	function getControllers() : NsIControllers;

	function advanceFocus() : Void;
	function rewindFocus() : Void;
	function advanceFocusIntoSubtree(elt:NsIDOMElement) : Void;
}