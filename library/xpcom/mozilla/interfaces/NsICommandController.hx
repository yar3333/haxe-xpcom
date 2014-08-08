package xpcom.mozilla.interfaces;

import xpcom.Components;
import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsICommandController") extern class NsICommandController extends NsISupports
{
	public static inline function createInstance() : NsICommandController return Components.Constructor("@mozilla.org/embedcomp/base-command-controller;1", Components.interfaces.nsICommandController);
	
	function doCommandWithParams(command:String, aCommandParams:NsICommandParams) : Void;
	function getCommandStateWithParams(command:String, aCommandParams:NsICommandParams) : Void;
}
