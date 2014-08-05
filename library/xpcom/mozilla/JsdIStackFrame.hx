package xpcom.mozilla;

import xpcom.types.*;

@:native("jsdIStackFrame") extern class JsdIStackFrame extends JsdIEphemeral
{
	/**
	 * Function object running in this stack frame. Read only.
	 */
	var callee : JsdIValue;
	/**
	 * Link to the caller's stack frame. Read only.
	 */
	var callingFrame : JsdIStackFrame;
	/**
	 * Executon context. Read only.
	 */
	var executionContext : JsdIContext;
	/**
	 * Function name executing in this stack frame. Read only.
	 */
	var functionName : AUTF8String;
	/**
	 * True if stack frame is constructing a new object. Read only.
	 */
	var isConstructing : Bool;
	/**
	 * True if stack frame represents a frame created as a result of a debugger evaluation. Read only.
	 */
	var isDebugger : Bool;
	/**
	 * True if stack frame represents a native frame. Read only. Obsolete since Gecko 2.0
	 */
	var isNative : Bool;
	/**
	 * Internal use only. Read only. Native code only!
	 */
	var JSDContext : JSDContext;
	/**
	 * Internal use only. Read only. Native code only!
	 */
	var JSDStackFrameInfo : JSDStackFrameInfo;
	/**
	 * Internal use only. Read only. Native code only!
	 */
	var JSDThreadState : JSDThreadState;
	/**
	 * Current line number (using the script's pc to line map.) Read only.
	 */
	var line : ULong;
	/**
	 * Current program counter in this stack frame. Read only.
	 */
	var pc : ULong;
	/**
	 * Top object in the scope chain. Read only.
	 */
	var scope : JsdIValue;
	/**
	 * Script running in this stack frame, null for native frames. Read only.
	 */
	var script : JsdIScript;
	/**
	 * |this| object for this stack frame. Read only.
	 */
	var thisValue : JsdIValue;
	
	function eval(bytes:AString, fileName:AUTF8String, line:ULong, result:JsdIValue) : Bool;
}
