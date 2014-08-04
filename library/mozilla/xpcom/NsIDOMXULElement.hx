package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIDOMXULElement") extern class NsIDOMXULElement extends NsIDOMElement
{
	/**
	 * Gets/sets the value of the element's align attribute.
	 */
	var align : DOMString;
	/**
	 * true if the element's allowevents attribute is the string "true", otherwise false. Removes the attribute if you set it to false.
	 */
	var allowEvents : Bool;
	/**
	 * Read only. Gets or creates a box object for the element; browser, editor, iframe, listbox, menu, menupopup, scrollbox, tooltip and tree elements receive specialized box objects allowing access to additional properties not normally available from script.
	 */
	var boxObject : NsIBoxObject;
	/**
	 * Read only. Retrives the element's template builder, if it has a template.
	 */
	var builder : NsIXULTemplateBuilder;
	/**
	 * Gets/sets the value of the element's class attribute.
	 */
	var className : DOMString;
	/**
	 * true if the element's collapsed attribute is the string "true", otherwise false. Removes the attribute if you set it to false.
	 */
	var collapsed : Bool;
	/**
	 * Gets/sets the value of the element's contextmenu attribute.
	 */
	var contextMenu : DOMString;
	/**
	 * Read only. Returns an nsIControllers object that additional controllers may be appended to so as to provide focus-specific actions for commands.
	 */
	var controllers : NsIControllers;
	/**
	 * Read only. Returns the template builder's database, if it is an RDF template.
	 */
	var database : NsIRDFCompositeDataSource;
	/**
	 * Gets/sets the value of the element's datasources attribute.
	 */
	var datasources : DOMString;
	/**
	 * Gets/sets the value of the element's dir attribute.
	 */
	var dir : DOMString;
	/**
	 * Gets/sets the value of the element's flex attribute.
	 */
	var flex : DOMString;
	/**
	 * Gets/sets the value of the element's flexgroup attribute.
	 */
	var flexGroup : DOMString;
	/**
	 * Gets/sets the value of the element's height attribute.
	 */
	var height : DOMString;
	/**
	 * true if the element's hidden attribute is the string "true", otherwise false. Removes the attribute if you set it to false.
	 */
	var hidden : Bool;
	/**
	 * Gets/sets the value of the element's id attribute.
	 */
	var id : DOMString;
	/**
	 * Gets/sets the value of the element's left attribute.
	 */
	var left : DOMString;
	/**
	 * Gets/sets the value of the element's maxheight attribute.
	 */
	var maxHeight : DOMString;
	/**
	 * Gets/sets the value of the element's maxwidth attribute.
	 */
	var maxWidth : DOMString;
	/**
	 * Gets/sets the value of the element's menu attribute.
	 */
	var menu : DOMString;
	/**
	 * Gets/sets the value of the element's minheight attribute.
	 */
	var minHeight : DOMString;
	/**
	 * Gets/sets the value of the element's minwidth attribute.
	 */
	var minWidth : DOMString;
	/**
	 * Gets/sets the value of the element's observes attribute.
	 */
	var observes : DOMString;
	/**
	 * Gets/sets the value of the element's ordinal attribute.
	 */
	var ordinal : DOMString;
	/**
	 * Gets/sets the value of the element's orient attribute.
	 */
	var orient : DOMString;
	/**
	 * Gets/sets the value of the element's pack attribute.
	 */
	var pack : DOMString;
	/**
	 * Gets/sets the value of the element's persist attribute.
	 */
	var persist : DOMString;
	/**
	 * Gets/sets the value of the element's ref attribute.
	 */
	var ref : DOMString;
	/**
	 * Read only. Returns the nsIRDFResource corresponding to the element's ref or id attribute, if any.
	 */
	var resource : NsIRDFResource;
	/**
	 * Gets/sets the value of the element's statustext attribute.
	 */
	var statusText : DOMString;
	/**
	 * Read only. Obsolete since Gecko 1.9 Returns an object that may be used to read or write individual CSS style properties for the element.
	 */
	var style : NsIDOMCSSStyleDeclaration;
	/**
	 * Gets/sets the value of the element's tooltip attribute.
	 */
	var tooltip : DOMString;
	/**
	 * Gets/sets the value of the element's tooltiptext attribute.
	 */
	var tooltipText : DOMString;
	/**
	 * Gets/sets the value of the element's top attribute.
	 */
	var top : DOMString;
	/**
	 * Gets/sets the value of the element's width attribute.
	 */
	var width : DOMString;
}
