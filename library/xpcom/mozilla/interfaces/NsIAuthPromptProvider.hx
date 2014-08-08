package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAuthPromptProvider") extern class NsIAuthPromptProvider extends NsISupports
{
	/**
	 * Normal (non-proxy) prompt request.
	 */
	static inline var PROMPT_NORMAL = 0;
	/**
	 * Proxy authentication request.
	 */
	static inline var PROMPT_PROXY = 1;
	
	function getAuthPrompt(aPromptReason:PRUint32, iid:NsIIDRef, result:{value:NsQIResult}) : Void;
}
