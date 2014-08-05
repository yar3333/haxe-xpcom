package xpcom.mozilla;

import xpcom.types.*;

@:native("nsISelectionImageService") extern class NsISelectionImageService extends NsISupports
{
	function getImage(selectionValue:Short, container:ImgIContainer) : Void;
	function reset() : Void;
}
