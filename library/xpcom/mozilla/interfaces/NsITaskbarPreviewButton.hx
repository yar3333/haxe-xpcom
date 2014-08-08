package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsITaskbarPreviewButton") extern class NsITaskbarPreviewButton extends NsISupports
{
	/**
	 * If true, the button is disabled. This is not the same as visible, which indicates whether or not the button should be displayed at all.
	 */
	var disabled : Bool;
	/**
	 * If true, the array of previews should be dismissed when the button is clicked. This is false by default.
	 */
	var dismissOnClick : Bool;
	/**
	 * If true, the taskbar should draw a border around this button's image. This is true by default.
	 */
	var hasBorder : Bool;
	/**
	 * The icon displayed in the button. This is null by default.
	 */
	var image : ImgIContainer;
	/**
	 * The string displayed in the button's tooltip. By default, this is an empty string.
	 */
	var tooltip : DOMString;
	/**
	 * If true, the button is displayed. If false, the button doesn't participate in the layout of buttons underneath the preview. This is false by default.
	 */
	var visible : Bool;
}
