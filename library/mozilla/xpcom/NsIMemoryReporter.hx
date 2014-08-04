package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIMemoryReporter") extern class NsIMemoryReporter extends NsISupports
{
	/**
	 * The numeric value reported by the memory reporter, specified in the units indicated by the units attribute. Read only.
	 * Note: This attribute was called memoryUsed prior to Gecko 7.0 (Firefox 7.0 / Thunderbird 7.0 / SeaMonkey 2.4), and its type was long long.
	 */
	var amount : PRInt64;
	/**
	 * A human-readable description of this memory usage report. Read only.
	 */
	var description : AUTF8String;
	/**
	 * The memory kind, one of the Memory reporter kind constants below. Read only.
	 */
	var kind : PRInt32;
	/**
	 * The path that this memory usage should be reported under. Paths are delimited with '/' characters to allow a hierarchy of memory to be displayed in about:memory. As of Gecko 6.0, the path should start with "explicit/" if the memory report accounts for all memory reported under sub-paths. Read only.
	 */
	var path : AUTF8String;
	/**
	 * The name of the process containing this reporter. Each reporter starts with an empty string for this value, indicating that it applies to the current process; this is true even for reporters in a child process. When a reporter from a child process is copied into the main process, the copy's process field is set appropriately. Read only.
	 */
	var process : ACString;
	/**
	 * The units used by the amount attribute; this will be one of the Unit type constants. Read only.
	 */
	var units : PRInt32;
}
