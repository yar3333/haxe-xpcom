package xpcom.mozilla;

import xpcom.types.*;

@:native("nsITreeView") extern class NsITreeView extends NsISupports
{
	/**
	 * <span class="inlineIndicator renamed renamedInline" title="(Firefox 1.5 / Thunderbird 1.5 / SeaMonkey 1.0)">Renamed from progressNormal in Gecko 1.8</span>
	 */
	static inline var PROGRESS_NORMAL = 1;
	/**
	 * <span class="inlineIndicator renamed renamedInline" title="(Firefox 1.5 / Thunderbird 1.5 / SeaMonkey 1.0)">Renamed from progressUndetermined in Gecko 1.8</span>
	 */
	static inline var PROGRESS_UNDETERMINED = 2;
	/**
	 * <span class="inlineIndicator renamed renamedInline" title="(Firefox 1.5 / Thunderbird 1.5 / SeaMonkey 1.0)">Renamed from progressNone in Gecko 1.8</span>
	 */
	static inline var PROGRESS_NONE = 3;
	static inline var DROP_BEFORE = -1;
	static inline var DROP_ON = 0;
	static inline var DROP_AFTER = 1;
	/**
	 * <span class="inlineIndicator obsolete obsoleteInline" title="(Firefox 1.5 / Thunderbird 1.5 / SeaMonkey 1.0)">Obsolete since Gecko 1.8</span>
	 */
	static inline var inDropBefore = 0;
	/**
	 * <span class="inlineIndicator obsolete obsoleteInline" title="(Firefox 1.5 / Thunderbird 1.5 / SeaMonkey 1.0)">Obsolete since Gecko 1.8</span>
	 */
	static inline var inDropOn = 1;
	/**
	 * <span class="inlineIndicator obsolete obsoleteInline" title="(Firefox 1.5 / Thunderbird 1.5 / SeaMonkey 1.0)">Obsolete since Gecko 1.8</span>
	 */
	static inline var inDropAfter = 2;
	
	/**
	 * The total number of rows in the tree (including the offscreen rows). Read only.
	 */
	var rowCount : Long;
	/**
	 * The selection for this view.
	 */
	var selection : NsITreeSelection;
	
	function canDrop(index:Long, orientation:Long, dataTransfer:NsIDOMDataTransfer) : Bool;
	function canDropBeforeAfter(index:Long, before:Bool) : Bool;
	function canDropOn(index:Long) : Bool;
	function cycleCell(row:Long, col:NsITreeColumn) : Void;
	function cycleHeader(col:NsITreeColumn) : Void;
	function drop(row:Long, orientation:Long, dataTransfer:NsIDOMDataTransfer) : Void;
	function getCellProperties(row:Long, col:NsITreeColumn, properties:NsISupportsArray) : AString;
	function getCellText(row:Long, col:NsITreeColumn) : AString;
	function getCellValue(row:Long, col:NsITreeColumn) : AString;
	function getColumnProperties(col:NsITreeColumn, properties:NsISupportsArray) : AString;
	function getImageSrc(row:Long, col:NsITreeColumn) : AString;
	function getLevel(index:Long) : Long;
	function getParentIndex(rowIndex:Long) : Long;
	function getProgressMode(row:Long, col:NsITreeColumn) : Long;
	function getRowProperties(index:Long, properties:NsISupportsArray) : AString;
	function hasNextSibling(rowIndex:Long, afterIndex:Long) : Bool;
	function isContainer(index:Long) : Bool;
	function isContainerEmpty(index:Long) : Bool;
	function isContainerOpen(index:Long) : Bool;
	function isEditable(row:Long, col:NsITreeColumn) : Bool;
	function isSelectable(row:Long, col:NsITreeColumn) : Bool;
	function isSeparator(index:Long) : Bool;
	function isSorted() : Bool;
	function performAction(action:Wstring) : Void;
	function performActionOnCell(action:Wstring, row:Long, col:NsITreeColumn) : Void;
	function performActionOnRow(action:Wstring, row:Long) : Void;
	function selectionChanged() : Void;
	function setCellText(row:Long, col:NsITreeColumn, value:AString) : Void;
	function setCellValue(row:Long, col:NsITreeColumn, value:AString) : Void;
	function setTree(tree:NsITreeBoxObject) : Void;
	function toggleOpenState(index:Long) : Void;
}
