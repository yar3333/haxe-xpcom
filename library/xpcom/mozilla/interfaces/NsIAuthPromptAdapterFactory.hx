package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAuthPromptAdapterFactory") extern class NsIAuthPromptAdapterFactory extends NsISupports
{
	function createAdapter(aPrompt:NsIAuthPrompt) : NsIAuthPrompt2;
}
