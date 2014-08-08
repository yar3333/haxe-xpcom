package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIClipboard") extern class NsIClipboard extends NsISupports
{
	function emptyClipboard(aWhichClipboard:Long) : Void;
	function forceDataToClipboard(aWhichClipboard:Long) : Void;
	function getData(aTransferable:NsITransferable, aWhichClipboard:Long) : Void;
	function hasDataMatchingFlavors(aFlavorList:Array<String>, aLength:ULong, aWhichClipboard:Long) : Bool;
	function setData(aTransferable:NsITransferable, anOwner:NsIClipboardOwner, aWhichClipboard:Long) : Void;
	function supportsSelectionClipboard() : Bool;
	function supportsFindClipboard() : Bool;
}
