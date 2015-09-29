package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAutoCompletePopup")
extern class NsIAutoCompletePopup extends NsISupports
{
	/*
	 * The input object that the popup is currently bound to
	 */
	var input : NsIAutoCompleteInput;

	/*
	 * An alternative value to be used when text is entered, rather than the
	 * value of the selected item
	 */
	var overrideValue : AString;

	/*
	 * The index of the result item that is currently selected
	 */
	var selectedIndex : Int; // attribute

	/* 
	 * Indicates if the popup is currently open
	 */
	var popupOpen : Bool;

	/* 
	 * Bind the popup to an input object and display it with the given coordinates
	 *
	 * @param input - The input object that the popup will be bound to
	 * @param element - The element that the popup will be aligned with
	 */
	function openAutocompletePopup(input:NsIAutoCompleteInput, element:NsIDOMElement) : Void;

	/* 
	 * Close the popup and detach from the bound input
	 */
	function closePopup() : Void;

	/*
	 * Instruct the result view to repaint itself to reflect the most current
	 * underlying data
	 */
	function invalidate() : Void;
		
	/*
	 * Change the selection relative to the current selection and make sure
	 * the newly selected row is visible
	 *
	 * @param reverse - Select a row above the current selection
	 * @param page - Select a row that is a full visible page from the current selection
	 * @return The currently selected result item index
	 */
	function selectBy(reverse:Bool, page:Bool) : Void;
}