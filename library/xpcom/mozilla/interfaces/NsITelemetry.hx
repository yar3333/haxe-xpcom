package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsITelemetry") extern class NsITelemetry extends NsISupports
{
	public static inline function getService() : NsITelemetry
	{
		return xpcom.Components.classes[cast "@mozilla.org/base/telemetry;1"].getService(NsITelemetry);
	}
	
	/**
	 * Buckets increase exponentially.
	 */
	static inline var HISTOGRAM_EXPONENTIAL = 0;
	/**
	 * Buckets increase linearly.
	 */
	static inline var HISTOGRAM_LINEAR = 1;
	/**
	 * For storing 0/1 values. 
	 */
	static inline var HISTOGRAM_BOOLEAN = 2;
	/**
	 * For storing a single value; its count is always == 1. 
	 */
	static inline var HISTOGRAM_FLAG = 3;
	
	/**
	 * Set this to false to disable gathering of telemetry statistics.
	 */
	var canRecord : Bool;
	/**
	 * An object containing a snapshot from all of the currently registered histograms. { name1: {data1}, name2:{data2}...} where data consists of the following properties:
	 * min - Minimal bucket size
	 * max - Maximum bucket size
	 * histogram_type - HISTOGRAM_EXPONENTIAL or HISTOGRAM_LINEAR
	 * counts - An array representing the values of buckets in the histogram.
	 * ranges - An array with corresponding bucket sizes.
	 * sum - Sum of the counts array.
	 * static - true for histograms defined in Histograms.json, false for ones defined with newHistogram().
	 * Read only.
	 */
	var histogramSnapshots : { min:Int, max:Int, histogram_type:Dynamic, counts:Array<Int>, ranges:Array<Dynamic>, sum:Int, _static:Bool };
	
	function getHistogramById(id:ACString) : JSVal;
	function newHistogram(name:ACString, min:PRUint32, max:PRUint32, bucket_count:PRUint32, histogram_type:ULong) : JSVal;
}
