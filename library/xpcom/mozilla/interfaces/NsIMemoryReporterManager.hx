package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIMemoryReporterManager") extern class NsIMemoryReporterManager extends NsISupports
{
	public static inline function getService() : NsIMemoryReporterManager
	{
		var r : NsIMemoryReporterManager = xpcom.Components.classes[cast "@mozilla.org/memory-reporter-manager;1"].getService(NsIMemoryReporterManager);
		r.init();
		return r;
	}
	
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
	
	function enumerateMultiReporters() : NsISimpleEnumerator;
	function enumerateReporters() : NsISimpleEnumerator;
	function init() : Void;
	function registerMultiReporter(reporter:NsIMemoryMultiReporter) : Void;
	function registerReporter(reporter:NsIMemoryReporter) : Void;
	function unregisterMultiReporter(reporter:NsIMemoryMultiReporter) : Void;
	function unregisterReporter(reporter:NsIMemoryReporter) : Void;
}
