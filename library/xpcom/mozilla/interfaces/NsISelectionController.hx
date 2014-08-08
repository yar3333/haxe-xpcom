package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsISelectionController") extern class NsISelectionController extends NsISelectionDisplay
{
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
