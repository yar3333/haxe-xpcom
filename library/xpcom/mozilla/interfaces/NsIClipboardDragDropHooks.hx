package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIClipboardDragDropHooks") extern class NsIClipboardDragDropHooks extends NsISupports
{
	function allowDrop(event:NsIDOMEvent, session:NsIDragSession) : Bool;
	function allowStartDrag(event:NsIDOMEvent) : Bool;
	function onCopyOrDrag(aEvent:NsIDOMEvent, trans:NsITransferable) : Bool;
	function onPasteOrDrop(event:NsIDOMEvent, trans:NsITransferable) : Bool;
}
