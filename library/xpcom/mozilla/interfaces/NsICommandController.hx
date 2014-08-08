package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsICommandController") extern class NsICommandController extends NsISupports
{
	public static inline function createInstance() : NsICommandController
	{
		return xpcom.Components.classes[cast "@mozilla.org/embedcomp/base-command-controller;1"].createInstance(NsICommandController);
	}
	
	function doCommandWithParams(command:String, aCommandParams:NsICommandParams) : Void;
	function getCommandStateWithParams(command:String, aCommandParams:NsICommandParams) : Void;
}
