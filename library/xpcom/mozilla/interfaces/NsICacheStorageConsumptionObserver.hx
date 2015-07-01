package xpcom.mozilla.interfaces;

@:native("Components.interfaces.nsICacheStorageConsumptionObserver") extern class NsICacheStorageConsumptionObserver extends NsISupports
{
	/**
	 * Callback invoked to answer asyncGetDiskConsumption call. Always triggered
	 * on the main thread.
	 * NOTE: implementers must also implement nsISupportsWeakReference.
	 *
	 * @param aDiskSize The disk consumption in bytes.
	 */
	function onNetworkCacheDiskConsumption(aDiskSize:Float) : Void;
}