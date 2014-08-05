package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDialogCreator") extern class NsIDialogCreator extends NsISupports
{
	/**
	 *  
	 */
	static inline var UNKNOWN_DIALOG = 0;
	/**
	 *  
	 */
	static inline var GENERIC_DIALOG = 1;
	/**
	 *  
	 */
	static inline var SELECT_DIALOG = 2;
	
	function openDialog(aType:ULong, aName:ACString, aFeatures:ACString, aArguments:NsIDialogParamBlock, ?aFrameElement:NsIDOMElement) : Void;
}
