package xpcom.mozilla;

import xpcom.types.*;

@:native("nsITelemetry") extern class NsITelemetry extends NsISupports
{
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
}
