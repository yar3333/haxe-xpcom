package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIPromptService") extern class NsIPromptService extends NsISupports
{
	public static inline function createInstance() : NsIPromptService return Components.Constructor("@mozilla.org/embedcomp/prompt-service;1", Components.interfaces.nsIPromptService);
}
