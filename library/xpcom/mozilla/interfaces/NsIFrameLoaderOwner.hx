package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIFrameLoaderOwner") extern class NsIFrameLoaderOwner extends NsISupports
{
	/**
	 * The frame loader owned by this nsIFrameLoaderOwner. Read only.
	 */
	var frameLoader : NsIFrameLoader;
	
	function GetFrameLoader() : NsFrameLoader;
	function swapFrameLoaders(aOtherOwner:NsIFrameLoaderOwner) : Void;
}
