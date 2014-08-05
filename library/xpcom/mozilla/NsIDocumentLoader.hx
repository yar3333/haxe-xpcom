package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIDocumentLoader") extern class NsIDocumentLoader extends NsISupports
{
	public static inline function createInstance() : NsIDocumentLoader return Components.Constructor("@mozilla.org/docloaderservice;1", Components.interfaces.nsIDocumentLoader);
	
	/**
	 * Read only.
	 */
	var container : NsISupports;
	/**
	 * Read only.
	 */
	var documentChannel : NsIChannel;
	/**
	 * Read only.
	 */
	var loadGroup : NsILoadGroup;
}
