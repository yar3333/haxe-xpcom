package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIContentSecurityPolicy") extern class NsIContentSecurityPolicy extends NsISupports
{
	/**
	 * Whether this policy allows eval and eval-like functions such as setTimeout("code string", time). Calls to this may trigger violation reports when queried, so this value should not be cached. Read only.
	 */
	var allowsEval : Bool;
	/**
	 * Whether this policy allows in-page script. Calls to this may trigger violation reports when queried, so this value should not be cached. Read only.
	 */
	var allowsInlineScript : Bool;
	/**
	 * Set to true when the Content Security Policy has been read in and parsed and is ready to enforce. This is a barrier for the nsDocument so it doesn't load any sub-content until either it knows that a Content Security Policy is ready or will not be used.
	 */
	var isInitialized : Bool;
	/**
	 * A read-only string version of the policy for debugging. Read only.
	 */
	var policy : AString;
	/**
	 * When set to true, content load-blocking and fail-closed are disabled: Content Security Policy will only send reports, and not modify behavior.
	 */
	var reportOnlyMode : Bool;
}