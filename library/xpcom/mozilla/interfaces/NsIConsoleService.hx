package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIConsoleService") extern class NsIConsoleService extends NsISupports
{
	public static inline function getService() : NsIConsoleService
	{
		return xpcom.Components.classes[cast "@mozilla.org/consoleservice;1"].getService(NsIConsoleService);
	}
	
	@:overload(function(messages:Array<NsIConsoleMessage>, count:{value:UInt32}) : Void {})
	function getMessageArray(?count:{value:UInt32}, messages:Array<NsIConsoleMessage>) : Void;
	function logMessage(message:NsIConsoleMessage) : Void;
	function logStringMessage(message:Wstring) : Void;
	function registerListener(listener:NsIConsoleListener) : Void;
	function reset() : Void;
	function unregisterListener(listener:NsIConsoleListener) : Void;
}
