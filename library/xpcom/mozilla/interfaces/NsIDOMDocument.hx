package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

/**
 * The nsIDOMDocument interface represents the entire HTML or XML document.
 * Conceptually, it is the root of the document tree, and provides the 
 * primary access to the document's data.
 * Since elements, text nodes, comments, processing instructions, etc. 
 * cannot exist outside the context of a Document, the nsIDOMDocument 
 * interface also contains the factory methods needed to create these 
 * objects.
 *
 * For more information on this interface please see 
 * http://dvcs.w3.org/hg/domcore/raw-file/tip/Overview.html
 */
@:native("Components.interfaces.nsIDOMDocument")
extern class NsIDOMDocument extends NsIDOMNode
{
	var doctype : NsIDOMDocumentType;
	var implementation : NsIDOMDOMImplementation;
	var documentElement : NsIDOMElement;
	
	function createElement(tagName:DOMString) : NsIDOMElement;
	function createDocumentFragment() : NsIDOMDocumentFragment;
	function createTextNode(data:DOMString) : NsIDOMText;
	function createComment(data:DOMString) : NsIDOMComment;
	function createCDATASection(data:DOMString) : NsIDOMCDATASection;
	function createProcessingInstruction(target:DOMString, data:DOMString) : NsIDOMProcessingInstruction;
	function createAttribute(name:DOMString) : NsIDOMAttr;
	function getElementsByTagName(tagname:DOMString) : NsIDOMNodeList;

	// Introduced in DOM Level 2:
	function importNode(importedNode:NsIDOMNode, ?deep:Bool) : NsIDOMNode;
	// Introduced in DOM Level 2:
	function createElementNS(namespaceURI:DOMString, qualifiedName:DOMString) : NsIDOMElement;
	// Introduced in DOM Level 2:
	function createAttributeNS(namespaceURI:DOMString, qualifiedName:DOMString) : NsIDOMAttr;
	// Introduced in DOM Level 2:
	function getElementsByTagNameNS(namespaceURI:DOMString, localName:DOMString) : NsIDOMNodeList;
	// Introduced in DOM Level 2:
	function getElementById(elementId:DOMString) : NsIDOMElement;
	// Introduced in DOM Level 3:
	var inputEncoding : DOMString;
	// Introduced in DOM Level 3:
	var documentURI : DOMString;
	// Alias introduced for all documents in recent DOM standards
	var URL : DOMString;
	// Introduced in DOM Level 3:
	function adoptNode(source:NsIDOMNode) : NsIDOMNode;

	/**
	 * Create a range
	 *
	 * @see http://html5.org/specs/dom-range.html#dom-document-createrange
	 */
	function createRange() : NsIDOMRange;

	function createNodeIterator(root:NsIDOMNode, ?whatToShow:Int, ?filter:NsIDOMNodeFilter) : NsIDOMNodeIterator;
	function createTreeWalker(root:NsIDOMNode, ?whatToShow:Int, ?filter:NsIDOMNodeFilter) : NsIDOMTreeWalker;

	function createEvent(eventType:DOMString) : NsIDOMEvent;

	// HTML
	/**
	 * The window associated with this document.
	 *
	 * @see <http://www.whatwg.org/html/#dom-document-defaultview>
	 */
	var defaultView : NsIDOMWindow;

	/**
	 * @see <http://www.whatwg.org/html/#dom-document-characterset>
	 */
	var characterSet : DOMString;
	/**
	 * @see <http://www.whatwg.org/html/#dom-document-dir>
	 */
	var dir : DOMString; // attribute

	/**
	 * @see <http://www.whatwg.org/html/#dom-document-location>
	 */
	var location : NsIDOMLocation;

	/**
	 * @see <http://www.whatwg.org/html/#document.title>
	 */
	var title : DOMString; // attribute

	/**
	 * @see <http://www.whatwg.org/html/#dom-document-readystate>
	 */
	var readyState : DOMString;
	/**
	 * @see <http://www.whatwg.org/html/#dom-document-lastmodified>
	 */
	var lastModified : DOMString;
	/**
	 * @see <http://www.whatwg.org/html/#dom-document-referrer>
	 */
	var referrer : DOMString;

	/**
	 * @see <http://www.whatwg.org/html/#dom-document-hasfocus>
	 */
	function hasFocus() : Bool;

	/**
	 * @see <http://www.whatwg.org/html/#dom-document-activeelement>
	 */
	var activeElement : NsIDOMElement;

	/**
	 * Retrieve elements matching all classes listed in a
	 * space-separated string.
	 *
	 * @see <http://www.whatwg.org/html/#dom-document-getelementsbyclassname>
	 */
	function getElementsByClassName(classes:DOMString) : NsIDOMNodeList;

	// CSSOM
	/**
	 * @see <http://dev.w3.org/csswg/cssom/#dom-document-stylesheets>
	 */
	var styleSheets : NsIDOMStyleSheetList;

	/**
	 * This attribute must return the preferred style sheet set as set by the
	 * author. It is determined from the order of style sheet declarations and
	 * the Default-Style HTTP headers, as eventually defined elsewhere in the Web
	 * Apps 1.0 specification. If there is no preferred style sheet set, this
	 * attribute must return the empty string. The case of this attribute must
	 * exactly match the case given by the author where the preferred style sheet
	 * is specified or implied. This attribute must never return null.
	 *
	 * @see <http://dev.w3.org/csswg/cssom/#dom-document-preferredStyleSheetSet>
	 */
	var preferredStyleSheetSet : DOMString;

	/**
	 * This attribute indicates which style sheet set is in use. This attribute
	 * is live; changing the disabled attribute on style sheets directly will
	 * change the value of this attribute.
	 *
	 * If all the sheets that are enabled and have a title have the same title
	 * (by case-sensitive comparisons) then the value of this attribute must be
	 * exactly equal to the title of the first enabled style sheet with a title
	 * in the styleSheets list. Otherwise, if style sheets from different sets
	 * are enabled, then the return value must be null (there is no way to
	 * determine what the currently selected style sheet set is in those
	 * conditions). Otherwise, either all style sheets that have a title are
	 * disabled, or there are no alternate style sheets, and
	 * selectedStyleSheetSet must return the empty string.
	 *
	 * Setting this attribute to the null value must have no effect.
	 *
	 * Setting this attribute to a non-null value must call
	 * enableStyleSheetsForSet() with that value as the function's argument, and
	 * set lastStyleSheetSet to that value.
	 *
	 * From the DOM's perspective, all views have the same
	 * selectedStyleSheetSet. If a UA supports multiple views with different
	 * selected alternate style sheets, then this attribute (and the StyleSheet
	 * interface's disabled attribute) must return and set the value for the
	 * default view.
	 *
	 * @see <http://dev.w3.org/csswg/cssom/#dom-document-selectedStyleSheetSet>
	 */
	var selectedStyleSheetSet : DOMString; // attribute binaryname(MozSelectedStyleSheetSet)

	/*
	 * This property must initially have the value null. Its value changes when
	 * the selectedStyleSheetSet attribute is set.
	 *
	 * @see <http://dev.w3.org/csswg/cssom/#dom-document-lastStyleSheetSet>
	 */
	var lastStyleSheetSet : DOMString;
	
	/**
	 * This must return the live list of the currently available style sheet
	 * sets. This list is constructed by enumerating all the style sheets for
	 * this document available to the implementation, in the order they are
	 * listed in the styleSheets attribute, adding the title of each style sheet
	 * with a title to the list, avoiding duplicates by dropping titles that
	 * match (case-sensitively) titles that have already been added to the
	 * list.
	 *
	 * @see <http://dev.w3.org/csswg/cssom/#dom-document-styleSheetSets>
	 */
	var styleSheetSets : NsISupports;

	/**
	 * Calling this method must change the disabled attribute on each StyleSheet
	 * object with a title attribute with a length greater than 0 in the
	 * styleSheets attribute, so that all those whose title matches the name
	 * argument are enabled, and all others are disabled. Title matches must be
	 * case-sensitive. Calling this method with the empty string disables all
	 * alternate and preferred style sheets (but does not change the state of
	 * persistent style sheets, that is those with no title attribute).
	 *
	 * Calling this method with a null value must have no effect.
	 *
	 * Style sheets that do not have a title are never affected by this
	 * method. This method does not change the values of the lastStyleSheetSet or
	 * preferredStyleSheetSet attributes.
	 *
	 * @see <http://dev.w3.org/csswg/cssom/#dom-document-enableStyleSheetsForSet>
	 */
	function enableStyleSheetsForSet(name:DOMString) : Void; // binaryname(MozEnableStyleSheetsForSet)

	// CSSOM-View
	/**
	 * Returns the element from the caller's document at the given point,
	 * relative to the upper-left-most point in the (possibly scrolled)
	 * window or frame.
	 *
	 * If the element at the given point belongs to another document (such as
	 * an iframe's subdocument), the element in the calling document's DOM
	 * (e.g. the iframe) is returned. If the element at the given point is
	 * anonymous or XBL generated content, such as a textbox's scrollbars, then
	 * the first non-anonymous parent element (that is, the textbox) is returned.
	 *
	 * This method returns null if either coordinate is negative, or if the
	 * specified point lies outside the visible bounds of the document.
	 *
	 * Callers from XUL documents should wait until the onload event has fired
	 * before calling this method.
	 *
	 * @see <http://dev.w3.org/csswg/cssom-view/#dom-document-elementfrompoint>
	 */
	function elementFromPoint(x:Float, y:Float) : NsIDOMElement;

	// Mozilla extensions
	/**
	 * @see <https://developer.mozilla.org/en/DOM/document.contentType>
	 */
	var contentType : DOMString;

	/**
	 * True if this document is synthetic : stand alone image, video, audio file,
	 * etc.
	 */
	var mozSyntheticDocument : Bool;

	/**
	 * Returns the script element whose script is currently being processed.
	 *
	 * @see <https://developer.mozilla.org/en/DOM/document.currentScript>
	 */
	var currentScript : NsIDOMElement;

	/**
	 * Release the current mouse capture if it is on an element within this
	 * document.
	 *
	 * @see <https://developer.mozilla.org/en/DOM/document.releaseCapture>
	 */
	function releaseCapture() : Void;

	/**
	 * Use the given DOM element as the source image of target |-moz-element()|.
	 *
	 * This function introduces a new special ID (called "image element ID"),
	 * which is only used by |-moz-element()|, and associates it with the given
	 * DOM element.  Image elements ID's have the higher precedence than general
	 * HTML id's, so if |document.mozSetImageElement(<id>, <element>)| is called,
	 * |-moz-element(#<id>)| uses |<element>| as the source image even if there
	 * is another element with id attribute = |<id>|.  To unregister an image
	 * element ID |<id>|, call |document.mozSetImageElement(<id>, null)|.
	 *
	 * Example:
	 * <script>
	 *   canvas = document.createElement("canvas");
	 *   canvas.setAttribute("width", 100);
	 *   canvas.setAttribute("height", 100);
	 *   // draw to canvas
	 *   document.mozSetImageElement("canvasbg", canvas);
	 * </script>
	 * <div style="background-image: -moz-element(#canvasbg);"></div>
	 *
	 * @param aImageElementId an image element ID to associate with
	 * |aImageElement|
	 * @param aImageElement a DOM element to be used as the source image of
	 * |-moz-element(#aImageElementId)|. If this is null, the function will
	 * unregister the image element ID |aImageElementId|.
	 *
	 * @see <https://developer.mozilla.org/en/DOM/document.mozSetImageElement>
	 */
	function mozSetImageElement(aImageElementId:DOMString, aImageElement:NsIDOMElement) : Void;

	/**
	 * Element which is currently the full-screen element as per the DOM
	 * full-screen api.
	 *
	 * @see <https://wiki.mozilla.org/index.php?title=Gecko:FullScreenAPI>
	 */
	var mozFullScreenElement : NsIDOMElement;

	/**
	 * Causes the document to leave DOM full-screen mode, if it's in
	 * full-screen mode, as per the DOM full-screen api.
	 *
	 * @see <https://wiki.mozilla.org/index.php?title=Gecko:FullScreenAPI>
	 */
	function mozCancelFullScreen() : Void;   
	
	/**
	 * Denotes whether this document is in DOM full-screen mode, as per the DOM
	 * full-screen api.
	 *
	 * @see <https://wiki.mozilla.org/index.php?title=Gecko:FullScreenAPI>
	 */
	var mozFullScreen : Bool;  

	/**
	 * Denotes whether the full-screen-api.enabled is true, no windowed
	 * plugins are present, and all ancestor documents have the
	 * allowfullscreen attribute set.
	 *
	 * @see <https://wiki.mozilla.org/index.php?title=Gecko:FullScreenAPI>
	 */
	var mozFullScreenEnabled : Bool;

	/**
	 * The element to which the mouse pointer is locked, if any, as per the
	 * DOM pointer lock api.
	 *
	 * @see <http://dvcs.w3.org/hg/pointerlock/raw-file/default/index.html>
	 */
	var mozPointerLockElement : NsIDOMElement;

	/**
	 * Retrieve the location of the caret position (DOM node and character
	 * offset within that node), given a point.
	 *
	 * @param x Horizontal point at which to determine the caret position, in
	 *          page coordinates.
	 * @param y Vertical point at which to determine the caret position, in
	 *          page coordinates.
	 */
	function caretPositionFromPoint(x:Float, y:Float) : NsISupports /* CaretPosition */;

	/**
	 * Exit pointer is lock if locked, as per the DOM pointer lock api.
	 *
	 * @see <http://dvcs.w3.org/hg/pointerlock/raw-file/default/index.html>
	 */
	function mozExitPointerLock() : Void;

	/**
	 * Visibility API implementation.
	 */
	var hidden : Bool;
	var mozHidden : Bool;
	var visibilityState : DOMString;
	var mozVisibilityState : DOMString;

	/**
	 * Returns "BackCompat" if we're in quirks mode or "CSS1Compat" if we're in
	 * strict mode.  (XML documents are always in strict mode.)
	 */
	var compatMode : DOMString;

	/**
	 * Return nodes that match a given CSS selector.
	 *
	 * @see <http://dev.w3.org/2006/webapi/selectors-api/>
	 */
	function querySelector(selectors:DOMString) : NsIDOMElement;
	function querySelectorAll(selectors:DOMString) : NsIDOMNodeList;
}