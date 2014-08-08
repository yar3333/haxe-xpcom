package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsISHistoryListener") extern class NsISHistoryListener extends NsISupports
{
	function OnHistoryGoBack(aBackURI:NsIURI) : Bool;
	function OnHistoryGoForward(aForwardURI:NsIURI) : Bool;
	function OnHistoryGotoIndex(aIndex:Long, aGotoURI:NsIURI) : Bool;
	function OnHistoryNewEntry(aNewURI:NsIURI) : Void;
	function OnHistoryPurge(aNumEntries:Long) : Bool;
	function OnHistoryReload(aReloadURI:NsIURI, aReloadFlags:ULong) : Bool;
}
