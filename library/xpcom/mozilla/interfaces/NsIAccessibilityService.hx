package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAccessibilityService") extern class NsIAccessibilityService extends NsIAccessibleRetrieval
{
	function createOuterDocAccessible(aNode:NsIDOMNode) : NsIAccessible;
	function createRootAccessible(aShell:NsIPresShell, aDocument:NsIDocument) : NsIAccessible;
	function createHTML4ButtonAccessible(aFrame:NsISupports) : NsIAccessible;
	function createHyperTextAccessible(aFrame:NsISupports) : NsIAccessible;
	function createHTMLBRAccessible(aFrame:NsISupports) : NsIAccessible;
	function createHTMLButtonAccessible(aFrame:NsISupports) : NsIAccessible;
	function createHTMLAccessibleByMarkup(aFrame:NsIFrame, aWeakShell:NsIWeakReference, aDOMNode:NsIDOMNode) : NsIAccessible;
	function createHTMLLIAccessible(aFrame:NsISupports, aBulletFrame:NsISupports, aBulletText:AString) : NsIAccessible;
	function createHTMLCheckboxAccessible(aFrame:NsISupports) : NsIAccessible;
	function createHTMLComboboxAccessible(aNode:NsIDOMNode, aPresShell:NsIWeakReference) : NsIAccessible;
	function createHTMLGenericAccessible(aFrame:NsISupports) : NsIAccessible;
	function createHTMLHRAccessible(aFrame:NsISupports) : NsIAccessible;
	function createHTMLImageAccessible(aFrame:NsISupports) : NsIAccessible;
	@:overload(function(aFrame:NsISupports) : NsIAccessible {})
	function createHTMLLabelAccessible(aNode:NsIDOMNode, aPresShell:NsIWeakReference) : NsIAccessible;
	function createHTMLObjectFrameAccessible(aFrame:NsObjectFrame) : NsIAccessible;
	function createHTMLRadioButtonAccessible(aFrame:NsISupports) : NsIAccessible;
	function createHTMLSelectOptionAccessible(aNode:NsIDOMNode, aAccParent:NsIAccessible, aPresShell:NsIWeakReference) : NsIAccessible;
	function createHTMLTableAccessible(aFrame:NsISupports) : NsIAccessible;
	function createHTMLTableCellAccessible(aFrame:NsISupports) : NsIAccessible;
	function createHTMLTableHeadAccessible(aDOMNode:NsIDOMNode) : NsIAccessible;
	function createHTMLTextAccessible(aFrame:NsISupports) : NsIAccessible;
	function createHTMLTextFieldAccessible(aFrame:NsISupports) : NsIAccessible;
	function createHTMLCaptionAccessible(aFrame:NsISupports) : NsIAccessible;
	function getAccessible(aNode:NsIDOMNode, aPresShell:NsIPresShell, aWeakShell:NsIWeakReference, frameHint:NsIFrame, aIsHidden:Bool) : NsIAccessible;
	function addNativeRootAccessible(aAtkAccessible:VoidPtr) : NsIAccessible;
	function removeNativeRootAccessible(aRootAccessible:NsIAccessible) : Void;
	function invalidateSubtreeFor(aPresShell:NsIPresShell, aChangedContent:NsIContent, aEvent:PRUint32) : Void;
}
