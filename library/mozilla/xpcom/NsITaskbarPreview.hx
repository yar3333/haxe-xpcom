package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsITaskbarPreview") extern class NsITaskbarPreview extends NsISupports
{
	/**
	 * Indicates whether or not the preview is marked as active (currently selected) in the taskbar.
	 */
	var active : Bool;
	/**
	 * The controller for this preview. The controller provides the behavior and appearance for the taskbar preview, and is responsible for determining the size and contents of the preview, which buttons are displayed, and how the application responds to user actions on the preview. The controller is not allowed to be null.
	 * Note:  Neither nsITaskbarTabPreview or nsITaskbarWindowPreview makes full use of the controller; see the documentation for each interface for details on which controller methods are used.
	 */
	var controller : NsITaskbarPreviewController;
	/**
	 * A string containing the text displayed in the tooltip above the preview when the user hovers over it. By default, this is an empty string.
	 */
	var tooltip : DOMString;
	/**
	 * Indicates whether or not the preview is visible; by default, this is false.
	 * Note: Changing this value is computationally expensive for tab previews, because doing so causes the proxy window to be destroyed and rebuilt, then re-registered with the taskbar. If any step of that process fails, an exception is thrown. For window previews, changing this value is computationally trivial.
	 */
	var visible : Bool;
}
