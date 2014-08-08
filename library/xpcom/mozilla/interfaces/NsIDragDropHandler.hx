package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDragDropHandler") extern class NsIDragDropHandler extends NsISupports
{
	function detach() : Void;
	function hookupTo(attachPoint:NsIDOMEventTarget, navigator:NsIWebNavigation) : Void;
}
