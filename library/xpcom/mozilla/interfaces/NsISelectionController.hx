package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsISelectionController") extern class NsISelectionController extends NsISelectionDisplay
{
	static inline var SELECTION_NONE = 0;
	static inline var SELECTION_NORMAL = 1;
	static inline var SELECTION_SPELLCHECK = 2;
	static inline var SELECTION_IME_RAWINPUT = 4;
	static inline var SELECTION_IME_SELECTEDRAWTEXT = 8;
	static inline var SELECTION_IME_CONVERTEDTEXT = 16;
	static inline var SELECTION_IME_SELECTEDCONVERTEDTEXT = 32;
	/**
	 * For accessibility API usage.
	 */
	static inline var SELECTION_ACCESSIBILITY = 64;
	static inline var SELECTION_FIND = 128;
	static inline var NUM_SELECTIONTYPES = 9;
	static inline var SELECTION_ANCHOR_REGION = 0;
	static inline var SELECTION_FOCUS_REGION = 1;
	static inline var SELECTION_WHOLE_SELECTION = 2;
	static inline var NUM_SELECTION_REGIONS = 3;
	static inline var SELECTION_OFF = 0;
	/**
	 * Hidden displays selection.
	 */
	static inline var SELECTION_HIDDEN = 1;
	static inline var SELECTION_ON = 2;
	static inline var SELECTION_DISABLED = 3;
	static inline var SELECTION_ATTENTION = 4;
	/**
	 * If set scrolls the selection into view before returning. If not set, posts a request which is processed at some point after the method returns.
	 */
	static inline var SCROLL_SYNCHRONOUS = 1<<1;
	/**
	 * If set, only the first ancestor will be scrolled into view.
	 */
	static inline var SCROLL_FIRST_ANCESTOR_ONLY = 1<<2;
	/**
	 * If set, the specified location will be scrolled to the center of the view.
	 */
	static inline var SCROLL_CENTER_VERTICALLY = 1<<4;
	
	/**
	 * This is true if the caret is enabled, visible, and currently blinking. This is still true when the caret is enabled, visible, but in its "off" blink cycle. Read only.
	 */
	var caretVisible : Bool;
	
	function characterExtendForBackspace() : Void;
	function characterExtendForDelete() : Void;
	function characterMove(forward:Bool, extend:Bool) : Void;
	function checkVisibility(node:NsIDOMNode, startOffset:Short, endOffset:Short) : Bool;
	function completeMove(forward:Bool, extend:Bool) : Void;
	function completeScroll(forward:Bool) : Void;
	function getCaretEnabled() : Bool;
	function getDisplaySelection() : Short;
	function getSelection(type:Short) : NsISelection;
	function intraLineMove(forward:Bool, extend:Bool) : Void;
	function lineMove(forward:Bool, extend:Bool) : Void;
	function pageMove(forward:Bool, extend:Bool) : Void;
	function repaintSelection(type:Short) : Void;
	function scrollHorizontal(left:Bool) : Void;
	function scrollLine(forward:Bool) : Void;
	function scrollPage(forward:Bool) : Void;
	function scrollSelectionIntoView(type:Short, region:Short, flags:Short) : Void;
	function selectAll() : Void;
	function setCaretEnabled(enabled:Bool) : Void;
	function setCaretReadOnly(readOnly:Bool) : Void;
	function setCaretVisibilityDuringSelection(visibility:Bool) : Void;
	function setCaretWidth(pixels:Short) : Void;
	function setDisplaySelection(toggle:Short) : Void;
	function wordExtendForDelete(forward:Bool) : Void;
	function wordMove(forward:Bool, extend:Bool) : Void;
}
