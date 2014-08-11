package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDragService") extern class NsIDragService extends NsISupports
{
	/**
	 * No action.
	 */
	static inline var DRAGDROP_ACTION_NONE = 0;
	/**
	 * The drag and drop operation should copy the object.
	 */
	static inline var DRAGDROP_ACTION_COPY = 1;
	/**
	 * The drag and drop operation should move the object.
	 */
	static inline var DRAGDROP_ACTION_MOVE = 2;
	/**
	 * The drag and drop operation should link the object.
	 */
	static inline var DRAGDROP_ACTION_LINK = 4;
	/**
	 * The action is not initialized.
	 */
	static inline var DRAGDROP_ACTION_UNINITIALIZED = 64;
	
	function endDragSession(aDoneDrag:PRBool) : Void;
	function dragMoved(aX:Long, aY:Long) : Void;
	function fireDragEventAtSource(aMsg:ULong) : Void;
	function getCurrentSession() : NsIDragSession;
	function invokeDragSession(aDOMNode:NsIDOMNode, aTransferables:NsISupportsArray, aRegion:NsIScriptableRegion, aActionType:ULong) : Void;
	function invokeDragSessionWithImage(aDOMNode:NsIDOMNode, aTransferableArray:NsISupportsArray, aRegion:NsIScriptableRegion, aActionType:ULong, aImage:NsIDOMNode, aImageX:Long, aImageY:Long, aDragEvent:NsIDOMDragEvent, aDataTransfer:NsIDOMDataTransfer) : Void;
	function invokeDragSessionWithSelection(aSelection:NsISelection, aTransferableArray:NsISupportsArray, aActionType:ULong, aDragEvent:NsIDOMDragEvent, aDataTransfer:NsIDOMDataTransfer) : Void;
	function startDragSession() : Void;
	function suppress() : Void;
	function unsuppress() : Void;
}
