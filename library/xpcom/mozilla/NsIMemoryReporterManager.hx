package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIMemoryReporterManager") extern class NsIMemoryReporterManager extends NsISupports
{
	/**
	 * Gets the total size of explicit memory allocations, both at the operating system level (for example, via mmap, VirtualAlloc) and at the heap level (for example, via malloc(), calloc(), operator new).
	 * Note: It covers all heap allocations, but will miss any Operating System level ones not covered by memory reporters.
	 * This reporter is special-cased because it is interesting, and is moderately difficult to compute in JavaScript. -1 means unknown. Read only.
	 */
	var explicit : PRInt64;
	/**
	 * Gets the resident size (that is RSS, physical memory used).
	 * This reporter is special-cased because it is interesting, is available on all platforms, and returns a meaningful result on all common platforms. -1 means unknown. Read only.
	 */
	var resident : PRInt64;
}
