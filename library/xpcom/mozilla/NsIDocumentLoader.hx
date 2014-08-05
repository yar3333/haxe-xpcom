package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDocumentLoader") extern class NsIDocumentLoader extends NsISupports
{
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
