package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIJetpack") extern class NsIJetpack extends NsISupports
{
	function sendMessage(aMessageName:AString, ?v1:JSVal, ?v2:JSVal) : Void;
	function registerReceiver(aMessageName:AString, aReceiver:JSVal) : Void;
	function unregisterReceiver(aMessageName:AString, aReceiver:JSVal) : Void;
	function unregisterReceivers(aMessageName:AString) : Void;
	function evalScript(aScript:AString) : Void;
	function createHandle() : NsIVariant;
	function destroy() : Void;
}
