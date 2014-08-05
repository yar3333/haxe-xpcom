package xpcom.mozilla;

import xpcom.types.*;

@:native("imgIContainerObserver") extern class ImgIContainerObserver extends NsISupports
{
	function frameChanged(aRequest:ImgIRequest, aContainer:ImgIContainer, aDirtyRect:NsIntRect) : Void;
}
