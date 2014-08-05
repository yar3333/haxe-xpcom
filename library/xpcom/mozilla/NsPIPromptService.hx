package xpcom.mozilla;

import xpcom.types.*;

@:native("nsPIPromptService") extern class NsPIPromptService extends NsISupports
{
	function doDialog(aParent:NsIDOMWindow, aParamBlock:NsIDialogParamBlock, aChromeURL:String) : Void;
}
