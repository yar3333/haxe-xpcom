package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIHttpActivityObserver") extern class NsIHttpActivityObserver extends NsISupports
{
	/**
	 * true when the interface is active and should observe HTTP activity, otherwise false. If this is false, the observeActivity() method should not be called. Read only. Note: This attribute is present only for compatibility and should not be used.
	 */
	var isActive : Bool;
	
	function observeActivity(aHttpChannel:NsISupports, aActivityType:PRUint32, aActivitySubtype:PRUint32, aTimestamp:PRTime, aExtraSizeData:PRUint64, aExtraStringData:ACString) : Void;
}
