package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIAuthPromptProvider") extern class NsIAuthPromptProvider extends NsISupports
{
	/**
	 * Normal (non-proxy) prompt request.
	 */
	static inline var PROMPT_NORMAL = 0;
	/**
	 * Proxy authentication request.
	 */
	static inline var PROMPT_PROXY = 1;
}
