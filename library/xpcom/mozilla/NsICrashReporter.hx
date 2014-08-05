package xpcom.mozilla;

import xpcom.types.*;

@:native("nsICrashReporter") extern class NsICrashReporter extends NsISupports
{
	/**
	 * Enable or disable the crashreporter at runtime.
	 */
	var enabled : Bool;
	/**
	 * Get or set the path on the local system to which minidumps will be written when a crash happens.  Exceptions thrown  NS_ERROR_NOT_INITIALIZED If crash reporting is not initialized.
	 */
	var minidumpPath : NsILocalFile;
	/**
	 * Get or set the URL to which crash reports will be submitted. Only https and http URLs are allowed, as the submission is handled by OS-native networking libraries.  Exceptions thrown  NS_ERROR_FAILURE On get if no URL is set. NS_ERROR_INVALID_ARG On set if a non-http(s) URL is assigned. NS_ERROR_NOT_INITIALIZED If crash reporting is not initialized.
	 */
	var serverURL : NsIURL;
	/**
	 * User preference for submitting crash reports.
	 */
	var submitReports : Bool;
	
	function annotateCrashReport(key:ACString, data:ACString) : Void;
	function appendAppNotesToCrashReport(data:ACString) : Void;
	function appendObjCExceptionInfoToAppNotes(aException:VoidPtr) : Void;
	function writeMinidumpForException(aExceptionInfo:VoidPtr) : Void;
}
