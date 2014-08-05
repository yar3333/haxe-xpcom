package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDOMMozTouchEvent") extern class NsIDOMMozTouchEvent extends NsIDOMMouseEvent
{
	function initMozTouchEvent(typeArg:DOMString, canBubbleArg:Bool, cancelableArg:Bool, viewArg:NsIDOMAbstractView, detailArg:Long, screenXArg:Long, screenYArg:Long, clientXArg:Long, clientYArg:Long, ctrlKeyArg:Bool, altKeyArg:Bool, shiftKeyArg:Bool, metaKeyArg:Bool, buttonArg:UShort, relatedTargetArg:NsIDOMEventTarget, streamIdArg:ULong) : Void;
}
