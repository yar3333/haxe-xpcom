package xpcom.mozilla;

import xpcom.types.*;

@:native("nsITaskbarWindowPreview") extern class NsITaskbarWindowPreview extends NsITaskbarPreview
{
	/**
	 * If true, the nsITaskbarPreviewController object's nsITaskbarPreviewController.drawPreview() and nsITaskbarPreviewController.drawThumbnail() methods will be called to draw the preview. If false, the operating system draws these for you.
	 */
	var enableCustomDrawing : Bool;
}
