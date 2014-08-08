package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.imgIDecoderObserver") extern class ImgIDecoderObserver extends ImgIContainerObserver
{
	function onDataAvailable(aRequest:ImgIRequest, aCurrentFrame:Bool, aRect:NsIntRect) : Void;
	function onDiscard(aRequest:ImgIRequest) : Void;
	function onImageIsAnimated(aRequest:ImgIRequest) : Void;
	function onStartContainer(aRequest:ImgIRequest, aContainer:ImgIContainer) : Void;
	function onStartDecode(aRequest:ImgIRequest) : Void;
	function onStartFrame(aRequest:ImgIRequest, aFrame:ULong) : Void;
	function onStartRequest(aRequest:ImgIRequest) : Void;
	function onStopContainer(aRequest:ImgIRequest, aContainer:ImgIContainer) : Void;
	function onStopDecode(aRequest:ImgIRequest, status:Nsresult, statusArg:Wstring) : Void;
	function onStopFrame(aRequest:ImgIRequest, aFrame:ULong) : Void;
	function onStopRequest(aRequest:ImgIRequest, aIsLastPart:Bool) : Void;
}
