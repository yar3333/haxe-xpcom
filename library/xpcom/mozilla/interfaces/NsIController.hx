package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIController") extern class NsIController extends NsISupports
{
	function doCommand(command:String) : Void;
	function isCommandEnabled(command:String) : Bool;
	function onEvent(eventName:String) : Void;
	function supportsCommand(command:String) : Bool;
}
