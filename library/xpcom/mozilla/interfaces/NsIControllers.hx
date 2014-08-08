package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIControllers") extern class NsIControllers extends NsISupports
{
	public static inline function createInstance() : NsIControllers return xpcom.Components.Constructor("@mozilla.org/xul/xul-controllers;1", xpcom.Components.interfaces.nsIControllers);
	
	/**
	 * Obsolete since Gecko 1.9
	 */
	var commandDispatcher : NsIDOMXULCommandDispatcher;
	
	function appendController(controller:NsIController) : Void;
	function getControllerAt(index:ULong) : NsIController;
	function getControllerById(controllerID:ULong) : NsIController;
	function getControllerCount() : ULong;
	function getControllerForCommand(command:String) : NsIController;
	function getControllerId(controller:NsIController) : ULong;
	function insertControllerAt(index:ULong, controller:NsIController) : Void;
	function removeController(controller:NsIController) : Void;
	function removeControllerAt(index:ULong) : NsIController;
}
