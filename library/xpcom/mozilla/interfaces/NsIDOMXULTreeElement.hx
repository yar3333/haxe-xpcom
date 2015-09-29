package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

/**
 * @status UNDER_DEVELOPMENT
 */
@:native("Components.interfaces.nsIDOMXULTreeElement")
extern class NsIDOMXULTreeElement extends NsISupports
{

	var columns : NsITreeColumns;

	var view : NsITreeView; // attribute

	var body : NsIDOMElement;

	var editable : Bool; // attribute

	// For editable trees only.
	var inputField : NsIDOMXULTextBoxElement;
}