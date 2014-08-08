package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.inIDOMUtils") extern class InIDOMUtils extends NsISupports
{
	public static inline function getService() : InIDOMUtils return xpcom.Components.classes[cast "@mozilla.org/inspector/dom-utils;1"].getService(xpcom.Components.interfaces.inIDOMUtils);
	
	function addPseudoClassLock(aElement:NsIDOMElement, aPseudoClass:DOMString) : Void;
	function clearPseudoClassLocks(aElement:NsIDOMElement) : Void;
	function colorNameToRGB(aColorName:DOMString) : JSVal;
	function getBindingURLs(aElement:NsIDOMElement) : NsIArray;
	function getChildrenForNode(aNode:NsIDOMNode, aShowingAnonymousContent:Bool) : NsIDOMNodeList;
	function getContentState(aElement:NsIDOMElement) : ULongLong;
	function getCSSPropertyNames(?aFlags:ULong, ?aCount:ULong, aProps:Array<Wstring>) : Void;
	function getCSSStyleRules(aElement:NsIDOMElement, ?aPseudo:DOMString) : NsISupportsArray;
	function getParentForNode(aNode:NsIDOMNode, aShowingAnonymousContent:Bool) : NsIDOMNode;
	function getRuleLine(aRule:NsIDOMCSSStyleRule) : ULong;
	function getRuleColumn(aRule:NsIDOMCSSStyleRule) : ULong;
	function getSelectorCount(aRule:NsIDOMCSSStyleRule) : ULong;
	function getSelectorText(aRule:NsIDOMCSSStyleRule, aSelectorIndex:ULong) : AString;
	function getSpecificity(aRule:NsIDOMCSSStyleRule, aSelectorIndex:ULong) : ULongLong;
	function getUsedFontFaces(aRange:NsIDOMRange) : NsIDOMFontFaceList;
	function hasPseudoClassLock(aElement:NsIDOMElement, aPseudoClass:DOMString) : Bool;
	function isIgnorableWhitespace(aDataNode:NsIDOMCharacterData) : Bool;
	function isInheritedProperty(aPropertyName:AString) : Bool;
	function parseStyleSheet(aSheet:NsIDOMCSSStyleSheet, aInput:DOMString) : Void;
	function removePseudoClassLock(aElement:NsIDOMElement, aPseudoClass:DOMString) : Void;
	function rgbToColorName(aR:Octet, aG:Octet, aB:Octet) : AString;
	function selectorMatchesElement(aElement:NsIDOMElement, aRule:NsIDOMCSSStyleRule, aSelectorIndex:ULong, ?aPseudo:DOMString) : Bool;
	function setContentState(aElement:NsIDOMElement, aState:ULongLong) : Void;
}
