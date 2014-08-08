package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsITreeColumns") extern class NsITreeColumns extends NsISupports
{
	/**
	 * The number of columns. Read only.
	 */
	var count : Long;
	/**
	 * An alias for count (for the benefit of scripts which treat this as an array). Read only.
	 */
	var length : Long;
	/**
	 * The tree widget for these columns. Read only.
	 */
	var tree : NsITreeBoxObject;
	
	function getColumnAt(index:Long) : NsITreeColumn;
	function getColumnFor(element:NsIDOMElement) : NsITreeColumn;
	function getFirstColumn() : NsITreeColumn;
	function getKeyColumn() : NsITreeColumn;
	function getLastColumn() : NsITreeColumn;
	function getNamedColumn(id:AString) : NsITreeColumn;
	function getPrimaryColumn() : NsITreeColumn;
	function getSortedColumn() : NsITreeColumn;
	function invalidateColumns() : Void;
	function restoreNaturalOrder() : Void;
}
