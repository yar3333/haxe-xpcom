package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

/**
 * An interface used to construct native toolbar or context menus from <menu>
 */
@:native("Components.interfaces.nsIMenuBuilder")
extern class NsIMenuBuilder extends NsISupports
{

	/**
	 * Create the top level menu or a submenu. The implementation should create
	 * a new context for this menu, so all subsequent methods will add new items
	 * to this newly created menu.
	 */
	function openContainer(aLabel:DOMString) : Void;

	/**
	 * Add a new menu item. All menu item details can be obtained from
	 * the element. This method is not called for hidden elements or elements
	 * with no or empty label. The icon should be loaded only if aCanLoadIcon
	 * is true.
	 */
	function addItemFor(aElement:NsIDOMHTMLMenuItemElement, aCanLoadIcon:Bool) : Void;

	/**
	 * Create a new separator.
	 */
	function addSeparator() : Void;

	/**
	 * Remove last added separator.
	 * Sometimes it's needed to remove last added separator, otherwise it's not
	 * possible to implement the postprocessing in one pass.
	 * See http://www.whatwg.org/specs/web-apps/current-work/multipage/interactive-elements.html#building-menus-and-toolbars
	 */
	function undoAddSeparator() : Void;

	/**
	 * Set the context to the parent menu.
	 */
	function closeContainer() : Void;

	/**
	 * Returns a JSON string representing the menu hierarchy. For a context menu,
	 * it will be of the form:
	 *  {
	 *    type: "menu",
	 *    children: [
	 *      {
	 *        type: "menuitem",
	 *        label: "label",
	 *        icon: "image.png"
	 *      },
	 *      {
	 *        type: "separator",
	 *      },
	 *    ];
	 */
	function toJSONString() : AString;

	/**
	 * Invoke the action of the menuitem with assigned id aGeneratedItemId.
	 *
	 * @param aGeneratedItemId the menuitem id
	 */
	function click(aGeneratedItemId:DOMString) : Void;
}