package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIClipboardDragDropHookList") extern class NsIClipboardDragDropHookList extends NsISupports
{
	function addClipboardDragDropHooks(aHooks:NsIClipboardDragDropHooks) : Void;
	function getHookEnumerator() : NsISimpleEnumerator;
	function removeClipboardDragDropHooks(aHooks:NsIClipboardDragDropHooks) : Void;
}
