package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIEditor") extern class NsIEditor extends NsISupports
{
	static inline var eNone  = 0;
	static inline var eNext  = 1;
	static inline var ePrevious  = 2;
	static inline var eNextWord  = 3;
	static inline var ePreviousWord  = 4;
	static inline var eToBeginningOfLine  = 5;
	static inline var eToEndOfLine  = 6;
	
	/**
	 * The MIME type of the document.
	 */
	var contentsMIMEType : String;
	/**
	 * Read only. The DOM Document this editor is associated with.
	 */
	var document : And <table>) and provides functionality global to the document (such as obtaining the page's URL and creating new elements in the document).">Document;
	/**
	 * Sets the current 'Save' document character set.
	 */
	var documentCharacterSet : ACString;
	/**
	 * Read only. Returns true if the document has no *meaningful* content.
	 */
	var documentIsEmpty : Bool;
	/**
	 * Read only. Returns true if the document is modifed and needs saving.
	 */
	var documentModified : Bool;
	/**
	 * Edit flags for this editor. May be set at any time.
	 */
	var flags : ULong;
	/**
	 * Read only. Returns true if we have a document that is not marked read-only.
	 */
	var isDocumentEditable : PRBool;
	/**
	 * Read only. true if the current selection anchor is editable; otherwise false. This helps to support cases where only parts of the document are editable, by letting you see if the current selection is in an editable section.
	 */
	var isSelectionEditable : Bool;
	/**
	 * Read only. The root editable element, which for a document is its body.
	 */
	var rootElement : NsIDOMElement;
	/**
	 * Read only. The selection/caret for this editor. In the case of a design mode document, this is the same as the window's selection.
	 */
	var selection : NsISelection;
	/**
	 * Read only. The selection controller for the current presentation.
	 */
	var selectionController : NsISelectionController;
	
	function init(doc:NsIDOMDocument, aRoot:NsIContent, aSelCon:NsISelectionController, aFlags:ULong) : Void;
	function removeAttributeOrEquivalent(element:NsIDOMElement, sourceAttrName:DOMString, aSuppressTransaction:Bool) : Void;
}
