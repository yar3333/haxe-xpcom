package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIClipboardOwner") extern class NsIClipboardOwner extends NsISupports
{
	function LosingOwnership(aTransferable:NsITransferable) : Void;
}
