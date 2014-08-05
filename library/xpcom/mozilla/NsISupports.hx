package xpcom.mozilla;

import xpcom.types.*;

@:native("nsISupports") extern class NsISupports
{
	function AddRef() : Nsrefcnt;
	function QueryInterface(uuid:NsIIDRef, result:NsQIResult) : Void;
	function Release() : Nsrefcnt;
}
