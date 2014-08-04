package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIFrameLoaderOwner") extern class NsIFrameLoaderOwner extends NsISupports
{
	/**
	 * The frame loader owned by this nsIFrameLoaderOwner. Read only.
	 */
	var frameLoader : NsIFrameLoader;
}
