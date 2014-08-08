package xpcom.mozilla.interfaces;

import xpcom.Components;
import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIConsoleService") extern class NsIConsoleService extends NsISupports
{
	public static inline function getService() : NsIConsoleService return Components.classes[cast "@mozilla.org/consoleservice;1"].getService(Components.interfaces.nsIConsoleService);
	
	@:overload(function(messages:Array<NsIConsoleMessage>, count:Uint32_t) : Void {})
	function getMessageArray(?count:Uint32_t, messages:Array<NsIConsoleMessage>) : Void;
	function logMessage(message:NsIConsoleMessage) : Void;
	function logStringMessage(message:Wstring) : Void;
	function registerListener(listener:NsIConsoleListener) : Void;
	function reset() : Void;
	function unregisterListener(listener:NsIConsoleListener) : Void;
}
