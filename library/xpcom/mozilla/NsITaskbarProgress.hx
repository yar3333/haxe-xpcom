package xpcom.mozilla;

import xpcom.types.*;

@:native("nsITaskbarProgress") extern class NsITaskbarProgress extends NsISupports
{
	/**
	 * Stop displaying progress on the taskbar button. This should be used when the operation is complete or canceled.
	 */
	static inline var STATE_NO_PROGRESS = 0;
	/**
	 * Display a cycling, indeterminate progress bar.
	 */
	static inline var STATE_INDETERMINATE = 1;
	/**
	 * Display a determinate, normal progress bar.
	 */
	static inline var STATE_NORMAL = 2;
	/**
	 * Display a determinate, error progress bar.
	 */
	static inline var STATE_ERROR = 3;
	/**
	 * Display a determinate progress bar indicating that the operation has paused.
	 */
	static inline var STATE_PAUSED = 4;
	
	function setProgressState(state:NsTaskbarProgressState, ?currentValue:ULongLong, ?maxValue:ULongLong) : Void;
}
