package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsICommandController") extern class NsICommandController extends NsISupports
{
	public static inline function createInstance() : NsICommandController return Components.Constructor("@mozilla.org/embedcomp/base-command-controller;1", Components.interfaces.nsICommandController);
	
	function doCommandWithParams(command:String, aCommandParams:NsICommandParams) : Void;
	function getCommandStateWithParams(command:String, aCommandParams:NsICommandParams) : Void;
}
