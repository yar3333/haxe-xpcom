package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIXULRuntime") extern class NsIXULRuntime extends NsISupports
{
	public static inline function createInstance() : NsIXULRuntime return Components.Constructor("@mozilla.org/xre/app-info;1", Components.interfaces.nsIXULRuntime);
	
	/**
	 * Whether the application was launched in safe mode. Read only.
	 */
	var inSafeMode : Bool;
	/**
	 * Whether to write console errors to a log file. If a component encounters startup errors that might prevent the app from showing proper UI, it should set this flag to true.
	 */
	var logConsoleErrors : Bool;
	/**
	 * A string tag identifying the current operating system. This is taken from the OS_TARGET configure variable. It will always be available. Read only.
	 */
	var OS : AUTF8String;
	/**
	 * The type of the caller's process. Returns one of process type constants. Read only.
	 */
	var processType : ULong;
	/**
	 * A string tag identifying the target widget toolkit in use. This is taken from the MOZ_WIDGET_TOOLKIT configure variable. Read only.
	 */
	var widgetToolkit : AUTF8String;
	/**
	 * A string tag identifying the binary ABI of the current processor and compiler vtable. This is taken from the TARGET_XPCOM_ABI configure variable. It may not be available on all platforms, especially unusual processor or compiler combinations. The result takes the form -, for example: x86-msvc ppc-gcc3. This value should almost always be used in combination with OS. May throw NS_ERROR_NOT_AVAILABLE. Read only.
	 */
	var XPCOMABI : AUTF8String;
}
