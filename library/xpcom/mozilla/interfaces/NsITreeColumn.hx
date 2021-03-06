package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsITreeColumn") extern class NsITreeColumn extends NsISupports
{
	/**
	 * Text column type.
	 */
	static inline var TYPE_TEXT = 1;
	/**
	 * Checkbox column type.
	 */
	static inline var TYPE_CHECKBOX = 2;
	/**
	 * Progress meter column type.
	 */
	static inline var TYPE_PROGRESSMETER = 3;
	
	/**
	 * The atom attribute of nsITreeColumn which returns an nsIAtom for the column, making it fast to do comparisons. Read only. Native code only!
	 */
	var atom : NsIAtom;
	/**
	 * The nsITreeColumns containing this column. Read only.
	 */
	var columns : NsITreeColumns;
	/**
	 * If true, then the column is a cycler column. If the cycler attribute is not set, the column cells are regular text cells.  Read only.
	 */
	var cycler : Bool;
	/**
	 * If true the nsITreeColumn content is editable. If the editable attribute is not set, the column cells are not editable. Read only.
	 */
	var editable : Bool;
	/**
	 * The treecol element. Read only.
	 */
	var element : NsIDOMElement;
	/**
	 * The id attribute of the nsITreeColumn. Read only.
	 */
	var id : AString;
	/**
	 * The index of the nsITreeColumn in displayed order. Read only.
	 */
	var index : Long;
	/**
	 * If true the nsITreeColumn is the primary column. If the primary attribute is not set, the column is not the primary column. Read only.
	 */
	var primary : Bool;
	/**
	 * If true the nsITreeColumn is able to be selected. If the selectable attribute is not set, the column cells are not selectable. Read only.
	 */
	var selectable : Bool;
	/**
	 * The type of the column, see constants. Read only.
	 */
	var type : Short;
	/**
	 * The width of nsITreeColumn. Read only.
	 */
	var width : Long;
	/**
	 * The X position in the tree of the left edge of the nsITreeColumn. Read only.
	 */
	var x : Long;
	
	function getIdConst(idConst:{value:Wstring}) : Void;
	function getNext() : NsITreeColumn;
	function getPrevious() : NsITreeColumn;
	function invalidate() : Void;
}
