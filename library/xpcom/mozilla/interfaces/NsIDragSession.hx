package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDragSession") extern class NsIDragSession extends NsISupports
{
	/**
	 * Set the current state of the drag, whether it can be dropped or not. Usually the target "frame" sets this so the native system can render the correct feedback.
	 */
	var canDrop : Bool;
	/**
	 * The data transfer object for the current drag operation.
	 */
	var dataTransfer : NsIDOMDataTransfer;
	/**
	 * Sets the action (copy, move, link and so on) for the current drag.
	 */
	var dragAction : ULong;
	/**
	 * Get the number of items that were dropped. Read only.
	 */
	var numDropItems : ULong;
	/**
	 * Indicates if the drop event should be dispatched only to chrome. This allows chrome to handle a drag that was refused by content.
	 */
	var onlyChromeDrop : Bool;
	/**
	 * The document where the drag was started, which will be null if the drag originated outside the application. Useful for determining if a drop originated in the same document. Read only.
	 */
	var sourceDocument : NsIDOMDocument;
	/**
	 * The DOM node that was originally dragged to start the session, which will be null if the drag originated outside the application. Read only.
	 */
	var sourceNode : NsIDOMNode;
	/**
	 * Sets the current width and height of the drag target area. It will contain the current size of the Frame that the drag is currently in. Native code only!
	 */
	var targetSize : NsSize;
	
	function getData(aTransferable:NsITransferable, aItemIndex:ULong) : Void;
	function isDataFlavorSupported(aDataFlavor:String) : Bool;
}
