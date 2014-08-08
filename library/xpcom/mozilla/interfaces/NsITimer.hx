package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsITimer") extern class NsITimer extends NsISupports
{
	public static inline function createInstance() : NsITimer return xpcom.Components.Constructor("@mozilla.org/timer;1", xpcom.Components.interfaces.nsITimer);
	
	/**
	 * Type of a timer that fires once only.
	 */
	static inline var TYPE_ONE_SHOT = 0;
	/**
	 * 
	 *     <p>After firing, the timer is stopped and not restarted until its callback completes. The timer period will ideally be at least the time between when processing for last firing the callback completes and when the next firing occurs, but note that this is not guaranteed: the timer can fire at any time.</p>
	 *     This is the preferable repeating type for most situations.
	 */
	static inline var TYPE_REPEATING_SLACK = 1;
	/**
	 * This repeating timer aims to have constant period between firings. The processing time for each timer callback should not influence the timer period. However, if the processing for the last timer firing could not be completed until just before the next firing occurs, then you could have two timer notification routines being executed in quick succession.  Furthermore, if your callback processing time is longer than the timer period, then the timer will post more notifications while your callback is running.  For example, if a REPEATING_PRECISE timer has a 10ms period and a callback takes 50ms, then by the time the callback is done there will be 5 events to run the timer callback in the event queue.  Furthermore, the next scheduled time will always advance by exactly the delay every time the timer fires. This means that if the clock increments without the timer thread running (e.g. the computer is asleep) when the timer thread gets to run again it will post all the events that it "missed" while it wasn't running.  Use this timer type with extreme caution.  Chances are, this is not what you want.
	 */
	static inline var TYPE_REPEATING_PRECISE = 2;
	/**
	 * This repeating timer aims to have constant period between firings.  The processing time for each timer callback should not influence the timer period.  However this timer type guarantees that it will not queue up new events to fire the callback until the previous callback event finishes firing.  If the callback takes a long time, then the next callback will be scheduled immediately afterward, but only once, unlike TYPE_REPEATING_PRECISE.  If you want a non-slack timer, you probably want this one.
	 */
	static inline var TYPE_REPEATING_PRECISE_CAN_SKIP = 3;
	
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
	
	function cancel() : Void;
	function init(aObserver:NsIObserver, aDelay:ULong, aType:ULong) : Void;
	function initWithCallback(aCallback:NsITimerCallback, aDelay:ULong, aType:ULong) : Void;
	function initWithFuncCallback(aCallback:NsTimerCallbackFunc, aClosure:VoidPtr, aDelay:ULong, aType:ULong) : Void;
}
