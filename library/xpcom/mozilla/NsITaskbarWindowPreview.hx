package xpcom.mozilla;

import xpcom.types.*;

@:native("nsITaskbarWindowPreview") extern class NsITaskbarWindowPreview extends NsITaskbarPreview
{
	/**
	 * The maximum number of toolbar buttons supported by the Windows Taskbar API.
	 */
	static inline var NUM_TOOLBAR_BUTTONS = 7;
	
	/**
	 * If true, the nsITaskbarPreviewController object's nsITaskbarPreviewController.drawPreview() and nsITaskbarPreviewController.drawThumbnail() methods will be called to draw the preview. If false, the operating system draws these for you.
	 */
	var enableCustomDrawing : Bool;
	
	function getButton(index:ULong) : NsITaskbarPreviewButton;
}
