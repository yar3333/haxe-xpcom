package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIAuthPromptWrapper") extern class NsIAuthPromptWrapper extends NsIAuthPrompt
{
	function setPromptDialogs(dialogs:NsIPrompt) : Void;
}
