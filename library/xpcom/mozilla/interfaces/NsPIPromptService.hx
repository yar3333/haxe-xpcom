package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsPIPromptService") extern class NsPIPromptService extends NsISupports
{
	function doDialog(aParent:NsIDOMWindow, aParamBlock:NsIDialogParamBlock, aChromeURL:String) : Void;
}
