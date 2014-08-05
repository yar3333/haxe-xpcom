package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIFrameLoaderOwner") extern class NsIFrameLoaderOwner extends NsISupports
{
	/**
	 * The frame loader owned by this nsIFrameLoaderOwner. Read only.
	 */
	var frameLoader : NsIFrameLoader;
	
	function GetFrameLoader() : NsFrameLoader;
	function swapFrameLoaders(aOtherOwner:NsIFrameLoaderOwner) : Void;
}
