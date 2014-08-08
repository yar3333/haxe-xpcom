package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIMenuBoxObject") extern class NsIMenuBoxObject extends NsISupports
{
	/**
	 * The currently active menu or menuitem child of the menu box.
	 */
	var activeChild : NsIDOMElement;
	/**
	 * true if the menubar was opened using the keyboard; otherwise false.
	 */
	var openedWithKey : Bool;
	
	function handleKeyPress(keyEvent:NsIDOMKeyEvent) : Bool;
	function openMenu(openFlag:Bool) : Void;
}
