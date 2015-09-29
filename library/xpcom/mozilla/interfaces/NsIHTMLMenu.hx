package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

/**
 * A private interface.
 * All methods throw NS_ERROR_DOM_SECURITY_ERR if the caller is not chrome.
 */
@:native("Components.interfaces.nsIHTMLMenu")
extern class NsIHTMLMenu extends NsISupports
{
	/**
	 * Creates and dispatches a trusted event named "show".
	 * The event is not cancelable and does not bubble.
	 * See http://www.whatwg.org/specs/web-apps/current-work/multipage/interactive-elements.html#context-menus
	 */
	function sendShowEvent() : Void;

	/**
	 * Creates a native menu builder. The builder type is dependent on menu type.
	 * Currently, it returns nsXULContextMenuBuilder for context menus.
	 * Toolbar menus are not yet supported (the method returns null).
	 */
	function createBuilder() : NsIMenuBuilder;

	/*
	 * Builds a menu by iterating over menu children.
	 * See http://www.whatwg.org/specs/web-apps/current-work/multipage/interactive-elements.html#building-menus-and-toolbars
	 * The caller can use a native builder by calling createBuilder() or provide
	 * a custom builder that implements the nsIMenuBuilder interface.
	 * A custom builder can be used for example to build native context menus
	 * that are not defined using <menupopup>.
	 */
	function build(aBuilder:NsIMenuBuilder) : Void;
}