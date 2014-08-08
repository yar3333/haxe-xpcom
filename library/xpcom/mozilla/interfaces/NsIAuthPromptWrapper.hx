package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAuthPromptWrapper") extern class NsIAuthPromptWrapper extends NsIAuthPrompt
{
	function setPromptDialogs(dialogs:NsIPrompt) : Void;
}
