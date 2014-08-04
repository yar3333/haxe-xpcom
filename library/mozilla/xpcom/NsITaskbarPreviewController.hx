package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsITaskbarPreviewController") extern class NsITaskbarPreviewController extends NsISupports
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
}
