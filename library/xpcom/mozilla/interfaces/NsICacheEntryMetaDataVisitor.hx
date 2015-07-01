package xpcom.mozilla.interfaces;

/**
 * Argument for nsICacheEntry.visitMetaData, provides access to all metadata
 * keys and values stored on the entry.
 */
@:native("Components.interfaces.nsICacheEntryMetaDataVisitor") extern class NsICacheEntryMetaDataVisitor extends NsISupports
{
	/**
	 * Called over each key / value pair.
	 */
	function onMetaDataElement(key:String, value:String) : Void;
}