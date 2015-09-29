package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

/**
 * The nsIDOMHTMLMenuElement interface is the interface to a [X]HTML
 * menu element.
 *
 * This interface is trying to follow the DOM Level 2 HTML specification:
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * with changes from the work-in-progress WHATWG HTML specification:
 * http://www.whatwg.org/specs/web-apps/current-work/
 */
@:native("Components.interfaces.nsIDOMHTMLMenuElement")
extern class NsIDOMHTMLMenuElement extends NsISupports
{
	var compact : Bool; // attribute

	var type : DOMString; // attribute
	var label : DOMString; // attribute
}