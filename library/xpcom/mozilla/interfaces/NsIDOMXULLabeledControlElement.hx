package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMXULLabeledControlElement") extern class NsIDOMXULLabeledControlElement extends NsIDOMXULControlElement
{
	/**
	 * This should be set to a character that is used as a shortcut key. This should be one of the characters that appears in the label for the element. When the user presses the appropriate modifier and the access key, the element will be focused and/or activated from anywhere in the window. On non-Macintosh platforms, the character on the element's label matching the access key is underlined. Note: The access key is copied to any associated label element.
	 */
	var accessKey : DOMString;
	/**
	 * This property reflects the element's command attribute.
	 */
	var command : DOMString;
	/**
	 * This property reflects the element's crop attribute.
	 */
	var crop : DOMString;
	/**
	 * This property reflects the element's image attribute.
	 */
	var image : DOMString;
	/**
	 * This property reflects the element's label attribute.
	 */
	var label : DOMString;
}
