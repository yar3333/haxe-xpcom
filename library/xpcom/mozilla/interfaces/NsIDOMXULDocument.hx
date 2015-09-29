package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMXULDocument")
extern class NsIDOMXULDocument extends NsIDOMDocument
{
	var popupNode : NsIDOMNode; // attribute

	/**
	 * These attributes correspond to trustedGetPopupNode().rangeOffset and
	 * rangeParent. They will help you find where in the DOM the popup is
	 * happening. Can be accessed from chrome only, and only during a popup
	 * event. Accessing any other time will be an error.
	 */
	var popupRangeParent : NsIDOMNode;
	var popupRangeOffset : Int;

	var tooltipNode : NsIDOMNode; // attribute

	var commandDispatcher : NsIDOMXULCommandDispatcher;

	var width : Int;
	var height : Int;

	function getElementsByAttribute(name:DOMString, value:DOMString) : NsIDOMNodeList;

	function getElementsByAttributeNS(namespaceURI:DOMString, name:DOMString, value:DOMString) : NsIDOMNodeList;

	function addBroadcastListenerFor(broadcaster:NsIDOMElement, observer:NsIDOMElement, attr:DOMString) : Void;

	function removeBroadcastListenerFor(broadcaster:NsIDOMElement, observer:NsIDOMElement, attr:DOMString) : Void;

	function persist(id:DOMString, attr:DOMString) : Void;

	function getBoxObjectFor(elt:NsIDOMElement) : NsIBoxObject;

	/**
	 * Loads a XUL overlay and merges it with the current document, notifying an
	 * observer when the merge is complete. 
	 * @param   url
	 *          The URL of the overlay to load and merge
	 * @param   observer
	 *          An object implementing nsIObserver that will be notified with a
	 *          message of topic "xul-overlay-merged" when the merge is complete. 
	 *          The subject parameter of |observe| will QI to a nsIURI - the URI 
	 *          of the merged overlay. This parameter is optional and may be null.
	 *
	 * NOTICE:  In the 2.0 timeframe this API will change such that the 
	 *          implementation will fire a DOMXULOverlayMerged event upon merge
	 *          completion rather than notifying an observer. Do not rely on this
	 *          API's behavior _not_ to change because it will!
	 *          - Ben Goodger (8/23/2005)
	 */
	function loadOverlay(url:DOMString, aObserver:NsIObserver) : Void;
}