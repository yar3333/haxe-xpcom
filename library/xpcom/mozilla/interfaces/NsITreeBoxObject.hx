package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsITreeBoxObject") extern class NsITreeBoxObject extends NsISupports
{
	/**
	 * Readonly: Obtain the columns.
	 */
	var columns : NsITreeColumns;
	/**
	 * The view that backs the tree and that supplies it with its data. It is dynamically settable, either using a view attribute on the tree tag or by setting this attribute to a new value.
	 */
	var view : NsITreeView;
	/**
	 * Whether or not we are currently focused.
	 */
	var focused : Bool;
	/**
	 * Readonly: Obtain the treebody content node.  This is a node that corresponds to the treechildren tag.
	 */
	var treeBody : NsIDOMElement;
	/**
	 * Readonly: Obtain the height of a row.
	 */
	var rowHeight : Long;
	/**
	 * Readonly: Obtain the width of a row.
	 */
	var rowWidth : Long;
	/**
	 * Readonly: Get the pixel position of the horizontal scrollbar.
	 */
	var horizontalPosition : Long;
	/**
	 * Readonly: Return the region for the visible parts of the selection, in device pixels.
	 */
	var selectionRegion : NsIScriptableRegion;
}
