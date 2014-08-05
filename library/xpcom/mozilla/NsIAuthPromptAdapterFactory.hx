package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIAuthPromptAdapterFactory") extern class NsIAuthPromptAdapterFactory extends NsISupports
{
	function createAdapter(aPrompt:NsIAuthPrompt) : NsIAuthPrompt2;
}
