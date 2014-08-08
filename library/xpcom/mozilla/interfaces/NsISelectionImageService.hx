package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsISelectionImageService") extern class NsISelectionImageService extends NsISupports
{
	function getImage(selectionValue:Short, container:{value:ImgIContainer}) : Void;
	function reset() : Void;
}
