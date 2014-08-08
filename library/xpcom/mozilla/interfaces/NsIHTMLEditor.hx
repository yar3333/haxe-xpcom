package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIHTMLEditor") extern class NsIHTMLEditor extends NsISupports
{
	/**
	 *  
	 */
	static inline var eLeft = 0;
	/**
	 *  
	 */
	static inline var eCenter = 1;
	/**
	 *  
	 */
	static inline var eRight = 2;
	/**
	 *  
	 */
	static inline var eJustify = 3;
	
	/**
	 * A boolean which is true is the HTMLEditor has been instantiated with CSS knowledge and if the CSS pref is currently checked.
	 */
	var isCSSEnabled : Bool;
	/**
	 * A boolean indicating if a return key pressed in a paragraph creates another paragraph or just inserts a  at the caret.
	 */
	var returnInParagraphCreatesNewParagraph : Bool;
	
	function addDefaultProperty(aProperty:NsIAtom, aAttribute:AString, aValue:AString) : Void;
	function addInsertionListener(inFilter:NsIContentFilter) : Void;
	function align(aAlign:AString) : Void;
	function breakIsVisible(aNode:NsIDOMNode) : Bool;
	function canDrag(aEvent:NsIDOMEvent) : Bool;
	function checkSelectionStateForAnonymousButtons(aSelection:NsISelection) : Void;
	function createAnonymousElement(aTag:AString, aParentNode:NsIDOMNode, aAnonClass:AString, aIsCreatedHidden:Bool) : NsIDOMElement;
	function createElementWithDefaults(aTagName:AString) : NsIDOMElement;
	function decreaseFontSize() : Void;
	function doDrag(aEvent:NsIDOMEvent) : Void;
	function getAlignment(aMixed:Bool, aAlign:Short) : Void;
	function getBackgroundColorState(aMixed:Bool) : AString;
	function getElementOrParentByTagName(aTagName:AString, aNode:NsIDOMNode) : NsIDOMElement;
	function getFontColorState(aMixed:Bool) : AString;
	function getFontFaceState(aMixed:Bool) : AString;
	function getHeadContentsAsHTML() : AString;
	function getHighlightColorState(aMixed:Bool) : AString;
	function getIndentState(aCanIndent:Bool, aCanOutdent:Bool) : Void;
	function getInlineProperty(aProperty:NsIAtom, aAttribute:AString, aValue:AString, aFirst:Bool, aAny:Bool, aAll:Bool) : Void;
	function getInlinePropertyWithAttrValue(aProperty:NsIAtom, aAttribute:AString, aValue:AString, aFirst:Bool, aAny:Bool, aAll:Bool) : AString;
	function getLinkedObjects() : NsISupportsArray;
	function getListItemState(aMixed:Bool, aLI:Bool, aDT:Bool, aDD:Bool) : Void;
	function getListState(aMixed:Bool, aOL:Bool, aUL:Bool, aDL:Bool) : Void;
	function getParagraphState(aMixed:Bool) : AString;
	function getSelectedElement(aTagName:AString) : NsIDOMElement;
	function getSelectionContainer() : NsIDOMElement;
	function ignoreSpuriousDragEvent(aIgnoreSpuriousDragEvent:Bool) : Void;
	function increaseFontSize() : Void;
	function indent(aIndent:AString) : Void;
	function insertElementAtSelection(aElement:NsIDOMElement, aDeleteSelection:Bool) : Void;
	function insertFromDrop(aEvent:NsIDOMEvent) : Void;
	function insertHTML(aInputString:AString) : Void;
	function insertHTMLWithContext(aInputString:AString, aContextStr:AString, aInfoStr:AString, aFlavor:AString, aSourceDoc:NsIDOMDocument, aDestinationNode:NsIDOMNode, aDestinationOffset:Long, aDeleteSelection:Bool) : Void;
	function insertLinkAroundSelection(aAnchorElement:NsIDOMElement) : Void;
	function isAnonymousElement(aElement:NsIDOMElement) : Bool;
	function makeOrChangeList(aListType:AString, entireList:Bool, aBulletType:AString) : Void;
	function nodeIsBlock(node:NsIDOMNode) : Bool;
	function pasteNoFormatting(aSelectionType:Long) : Void;
	function rebuildDocumentFromSource(aSourceString:AString) : Void;
	function removeAllDefaultProperties() : Void;
	function removeAllInlineProperties() : Void;
	function removeDefaultProperty(aProperty:NsIAtom, aAttribute:AString, aValue:AString) : Void;
	function removeInlineProperty(aProperty:NsIAtom, aAttribute:AString) : Void;
	function removeInsertionListener(inFilter:NsIContentFilter) : Void;
	function removeList(aListType:AString) : Void;
	function replaceHeadContentsWithHTML(aSourceToInsert:AString) : Void;
	function selectElement(aElement:NsIDOMElement) : Void;
	function setBackgroundColor(aColor:AString) : Void;
	function setBodyAttribute(aAttr:AString, aValue:AString) : Void;
	function setCaretAfterElement(aElement:NsIDOMElement) : Void;
	function setCSSInlineProperty(aProperty:NsIAtom, aAttribute:AString, aValue:AString) : Void;
	function setDocumentTitle(aTitle:AString) : Void;
	function setInlineProperty(aProperty:NsIAtom, aAttribute:AString, aValue:AString) : Void;
	function setParagraphFormat(aParagraphFormat:AString) : Void;
	function updateBaseURL() : Void;
}
