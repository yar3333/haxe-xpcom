package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsITransferable") extern class NsITransferable extends NsISupports
{
	public static inline function createInstance() : NsITransferable
	{
		return xpcom.Components.classes[cast "@mozilla.org/widget/transferable;1"].createInstance(NsITransferable);
	}
	
	/**
	 * Flavor example: "text/unicode", "image/png".
	 */
	function addDataFlavor(flavor:String) : Void;
	
	function getTransferData(flavor:String, data:{ value:NsISupports }, dataLen:{ value:Int }) : Void;
	
	/**
	 * n may be: -1 if value is object
	 */
	function setTransferData(flavor:String, value:Dynamic, n:Int) : Void;
} 