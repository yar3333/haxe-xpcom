package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.imgIContainerObserver") extern class ImgIContainerObserver extends NsISupports
{
	function frameChanged(aRequest:ImgIRequest, aContainer:ImgIContainer, aDirtyRect:NsIntRect) : Void;
}
