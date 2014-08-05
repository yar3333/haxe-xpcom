package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDragDropHandler") extern class NsIDragDropHandler extends NsISupports
{
	function detach() : Void;
	function hookupTo(attachPoint:NsIDOMEventTarget, navigator:NsIWebNavigation) : Void;
}
