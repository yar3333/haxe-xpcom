package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIClipboardDragDropHookList") extern class NsIClipboardDragDropHookList extends NsISupports
{
	function addClipboardDragDropHooks(aHooks:NsIClipboardDragDropHooks) : Void;
	function getHookEnumerator() : NsISimpleEnumerator;
	function removeClipboardDragDropHooks(aHooks:NsIClipboardDragDropHooks) : Void;
}
