package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsITimer") extern class NsITimer
{
	/**
	 * The nsITimerCallback object passed to initWithCallback(). Read only.
	 */
	var callback : NsITimerCallback;
	/**
	 * The opaque pointer pass to initWithFuncCallback(). Read only. Native code only!
	 */
	var closure : VoidPtr;
	/**
	 * The timeout delay in millisecond.
	 * Note: Re-setting the delay on a one-shot timer that has already fired doesn't restart the timer. Call one of the init() methods to restart a one-shot timer.
	 */
	var delay : ULong;
	/**
	 * The nsIEventTarget to which the callback is dispatched. This target must be set before calling any of the initialization methods.
	 */
	var target : NsIEventTarget;
	/**
	 * Defines the timer type: one shot, repeating slack or repeating precise. Must be one of the constants defined under Constants on this page.
	 */
	var type : ULong;
}
