package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIMemoryReporter") extern class NsIMemoryReporter extends NsISupports
{
	/**
	 * This is deprecated synonym for KIND_NONHEAP.  <span class="inlineIndicator deprecated deprecatedInline" title="(Firefox 8.0 / Thunderbird 8.0 / SeaMonkey 2.5)">Deprecated since Gecko 8.0</span>
	 */
	static inline var KIND_MAPPED = 0;
	/**
	 * Allocated directly by OS calls e.g. mmap, VirtualAlloc, vm_allocate etc.
	 */
	static inline var KIND_NONHEAP = 0;
	/**
	 * Allocated by the heap allocator, e.g. malloc, new etc.
	 */
	static inline var KIND_HEAP = 1;
	/**
	 * An allocation that does not fit into another KIND category.
	 */
	static inline var KIND_OTHER = 2;
	/**
	 * The amount is specified as a number of bytes.
	 */
	static inline var UNITS_BYTES = 0;
	/**
	 * The amount is an instantaneous count of things currently in existence. For example, the number of tabs currently open.
	 */
	static inline var UNITS_COUNT = 1;
	/**
	 * The amount contains the number of times some event has occurred since the application started up. For example, the number of times the user has opened a new tab. The amount returned must never decrease over the lifetime of the application.
	 */
	static inline var UNITS_COUNT_CUMULATIVE = 2;
	/**
	 * The amount contains a fraction that should be expressed as a percentage.
	 * <div class="note">
	 * <strong>Note:</strong> The amount field should be given a value 100 times the actual percentage; this number will be divided by 100 when shown. This allows a fractional percentage to be shown even though amount is an integer. For example if the actual percentage is 12.34%, amount should be 1234.</div>
	 */
	static inline var UNITS_PERCENTAGE = 3;
	
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
