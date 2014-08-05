package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDOMNSHTMLDocument") extern class NsIDOMNSHTMLDocument extends NsISupports
{
	/**
	 * Same as body.aLink
	 */
	var alinkColor : DOMString;
	/**
	 * Same as body.bgColor
	 */
	var bgColor : DOMString;
	/**
	 * Returns "BackCompat" if the document is in Quirks mode or "CSS1Compat" if the document is in Full Standards or Almost Standards mode. Read only.
	 */
	var compatMode : DOMString;
	/**
	 * Set to "on" or "off" to enable or disable editing for the entire document at once. Roughly equivalent to body.contentEditable
	 */
	var designMode : DOMString;
	/**
	 * Initially the host name of the document's URL, but may be changed to the parent (but not top-level) domain in order to facilitate data exchange between documents from different sites in the same domain.
	 */
	var domain : DOMString;
	/**
	 * Equivalent to getElementsByTagName("embed") Read only.
	 */
	var embeds : NsIDOMHTMLCollection;
	/**
	 * Same as body.text
	 */
	var fgColor : DOMString;
	/**
	 * Returns the first child element of the HTML element that is a HEAD element, or null if there is no HTML or HEAD element. Read only.
	 */
	var head : NsIDOMHTMLHeadElement;
	/**
	 * The height of the body element. Read only. Obsolete since Gecko 6.0
	 */
	var height : Long;
	/**
	 * Same as body.link
	 */
	var linkColor : DOMString;
	/**
	 * Same as embeds for compatibility with Netscape 4.x Read only.
	 */
	var plugins : NsIDOMHTMLCollection;
	/**
	 * Same as body.vLink
	 */
	var vlinkColor : DOMString;
	/**
	 * The width of the body element. Read only. Obsolete since Gecko 6.0
	 */
	var width : Long;
	
	function captureEvents(eventFlags:Long) : Void;
	function clear() : Void;
	function execCommand(commandID:DOMString, doShowUI:Bool, value:DOMString) : Bool;
	function execCommandShowHelp(commandID:DOMString) : Bool;
	function getSelection() : DOMString;
	function open(aContentType:ACString, aReplace:Bool) : NsIDOMDocument;
	function queryCommandEnabled(commandID:DOMString) : Bool;
	function queryCommandIndeterm(commandID:DOMString) : Bool;
	function queryCommandState(commandID:DOMString) : Bool;
	function queryCommandSupported(commandID:DOMString) : Bool;
	function queryCommandText(commandID:DOMString) : DOMString;
	function queryCommandValue(commandID:DOMString) : DOMString;
	function releaseEvents(eventFlags:Long) : Void;
	function routeEvent(evt:NsIDOMEvent) : Void;
	function write() : Void;
	function writeln() : Void;
}
