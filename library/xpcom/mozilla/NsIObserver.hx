package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIObserver") extern class NsIObserver extends NsISupports
{
	function observe(aSubject:NsISupports, aTopic:String, aData:Wstring) : Void;
}
