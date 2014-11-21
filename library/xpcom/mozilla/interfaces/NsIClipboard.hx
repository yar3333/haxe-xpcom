package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIClipboard") extern class NsIClipboard extends NsISupports
{
	public static inline function getService() : NsIClipboard
	{
		return xpcom.Components.classes[cast "@mozilla.org/widget/clipboard;1"].getService(NsIClipboard);
	}
	
	/**
	 * Clipboard for selection.
	 */
	static inline var kSelectionClipboard = 0;
	/**
	 * Clipboard for global use.
	 */
	static inline var kGlobalClipboard = 1;
	/**
	 * Clipboard for find strings.
	 */
	static inline var kFindClipboard = 2;
	
	function emptyClipboard(aWhichClipboard:Long) : Void;
	function forceDataToClipboard(aWhichClipboard:Long) : Void;
	function getData(aTransferable:NsITransferable, aWhichClipboard:Long) : Void;
	function hasDataMatchingFlavors(aFlavorList:Array<String>, aLength:ULong, aWhichClipboard:Long) : Bool;
	function setData(aTransferable:NsITransferable, anOwner:NsIClipboardOwner, aWhichClipboard:Long) : Void;
	function supportsSelectionClipboard() : Bool;
	function supportsFindClipboard() : Bool;
}
