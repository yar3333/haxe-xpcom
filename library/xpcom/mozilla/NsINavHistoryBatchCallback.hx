package xpcom.mozilla;

import xpcom.types.*;

@:native("nsINavHistoryBatchCallback") extern class NsINavHistoryBatchCallback extends NsISupports
{
	function runBatched(aUserData:NsISupports) : Void;
}
