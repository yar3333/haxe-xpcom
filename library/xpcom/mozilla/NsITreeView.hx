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
}
