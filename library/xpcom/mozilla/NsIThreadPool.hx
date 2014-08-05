package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIThreadPool") extern class NsIThreadPool extends NsIEventTarget
{
	/**
	 * Get/set the maximum number of idle threads that are kept alive. Once there are more than this many idle worker threads, the idle threads start getting destroyed.
	 */
	var idleThreadLimit : ULong;
	/**
	 * Get/set the amount of time in milliseconds that a thread must be idle before it becomes eligible to be destroyed.
	 */
	var idleThreadTimeout : ULong;
	/**
	 * An optional listener that will be notified when a thread is created or destroyed in the course of the thread pool's operation. A listener will only receive notifications about threads created after the listener is set so it is recommended that the consumer set the listener before dispatching the first event. A listener that receives an nsIThreadPoolListener.onThreadCreated() notification is guaranteed to always receive the corresponding nsIThreadPoolListener.onThreadShuttingDown() notification. The thread pool takes ownership of the listener and releases it when the shutdown() method is called. Threads created after the listener is set will also take ownership of the listener so that the listener will be kept alive long enough to receive the guaranteed nsIThreadPoolListener.onThreadShuttingDown() notification.
	 */
	var listener : NsIThreadPoolListener;
	/**
	 * The maximum number of threads allowed at once in the pool; you may change this value by altering this attribute.
	 */
	var threadLimit : ULong;
}
