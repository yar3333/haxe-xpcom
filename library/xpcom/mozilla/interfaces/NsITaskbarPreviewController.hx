package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsITaskbarPreviewController") extern class NsITaskbarPreviewController extends NsISupports
{
	/**
	 * The height in pixels of the preview image. This value may change at any time. See drawPreview() for more information. Read only.
	 */
	var height : ULong;
	/**
	 * The thumbnail's aspect ratio. This doesn't need to match the preview's aspect ratio, and is allowed to be changed at any time. See drawThumbnail() for more information. Read only.
	 */
	var thumbnailAspectRatio : Float;
	/**
	 * The width in pixels of the preview image. This value may change at any time. See drawPreview() for more information. Read only.
	 */
	var width : ULong;
	
	function drawPreview(ctx:NsIDOMCanvasRenderingContext2D) : Bool;
	function drawThumbnail(ctx:NsIDOMCanvasRenderingContext2D, width:ULong, height:ULong) : Bool;
	function onActivate() : Bool;
	function onClick(button:NsITaskbarPreviewButton) : Void;
	function onClose() : Void;
}
