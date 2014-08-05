package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIClipboardDragDropHooks") extern class NsIClipboardDragDropHooks extends NsISupports
{
	function allowDrop(event:NsIDOMEvent, session:NsIDragSession) : Bool;
	function allowStartDrag(event:NsIDOMEvent) : Bool;
	function onCopyOrDrag(aEvent:NsIDOMEvent, trans:NsITransferable) : Bool;
	function onPasteOrDrop(event:NsIDOMEvent, trans:NsITransferable) : Bool;
}
