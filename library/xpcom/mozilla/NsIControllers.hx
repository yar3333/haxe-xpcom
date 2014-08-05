package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIControllers") extern class NsIControllers extends NsISupports
{
	public static inline function createInstance() : NsIControllers return Components.Constructor("@mozilla.org/xul/xul-controllers;1", Components.interfaces.nsIControllers);
	
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
