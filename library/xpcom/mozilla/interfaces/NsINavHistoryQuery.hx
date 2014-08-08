package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsINavHistoryQuery") extern class NsINavHistoryQuery extends NsISupports
{
	/**
	 * Default value. The time is relative to Jan 1 1970 GMT, (this is a normal PRTime). As a special case, a 0 time relative to TIME_RELATIVE_EPOCH indicates that the time is not part of the query. This is the default, so an empty query will match any time.
	 */
	static inline var TIME_RELATIVE_EPOCH = 0;
	/**
	 * The time is relative to this morning at midnight. Normally used for queries relative to today. For example, a "past week" query would be (today-6 days -> today+1 day).
	 */
	static inline var TIME_RELATIVE_TODAY = 1;
	/**
	 * The time is relative to right now.
	 */
	static inline var TIME_RELATIVE_NOW = 2;
	
	/**
	 * Read only: Retrieves the begin time value that the currently loaded reference points + offset resolve to.
	 */
	var absoluteBeginTime : PRTime;
	/**
	 * Read only: Retrieves the end time value that the currently loaded reference points + offset resolve to.
	 */
	var absoluteEndTime : PRTime;
	/**
	 * The annotation name.
	 */
	var annotation : AUTF8String;
	/**
	 * Test for existance or non-existance of a given annotation. We don't currently support >1 annotation name per query. If annotationIsNot is true, we test for the non-existance of the specified annotation. Testing for not annotation will do the same thing as a normal query and remove everything that doesn't have that annotation. Asking for things that DO have a given annotation is a little different. It also includes things that have never been visited. This allows place queries to be returned (which might include bookmark folders -- use the bookmark service's GetFolderURI) as well as anything else that may have been tagged with an annotation. This will only work for RESULTS_AS_URI since there will be no visits for these items.
	 */
	var annotationIsNot : Bool;
	/**
	 * Begin time range for results (INCLUSIVE).
	 */
	var beginTime : PRTime;
	/**
	 * One of the constants TIME_RELATIVE_* which indicates how to interpret the corresponding begin time value.
	 */
	var beginTimeReference : Long;
	/**
	 * This is the host or domain name (controlled by domainIsHost). When domainIsHost, domain only does exact matching on host names. Otherwise, it will return anything whose host name ends in domain. This one is a little different than most. Setting it to an empty string is a real query and will match any URI that has no host name (local files and such). Set this to NULL (in C++ use SetIsVoid) if you don't want domain matching.
	 */
	var domain : AUTF8String;
	/**
	 * This controls the meaning of domain, and whether it is an exact match domainIsHost = true, or hierarchical (= false).
	 */
	var domainIsHost : Bool;
	/**
	 * End time range for results (INCLUSIVE).
	 */
	var endTime : PRTime;
	/**
	 * One of the constants TIME_RELATIVE_* which indicates how to interpret the corresponding end time value.
	 */
	var endTimeReference : Long;
	/**
	 * Read only: Count of folders.
	 */
	var folderCount : Long;
	/**
	 * Read only: Whether or not, annotation exists.
	 */
	var hasAnnotation : Bool;
	/**
	 * Read only: Whether or not, the corresponding begin time is considered.
	 */
	var hasBeginTime : Bool;
	/**
	 * Read only: Whether or not, domain exists.
	 */
	var hasDomain : Bool;
	/**
	 * Read only: Whether or not, the corresponding end time is considered.
	 */
	var hasEndTime : Bool;
	/**
	 * Read only: Whether or not, text search terms exists.
	 */
	var hasSearchTerms : Bool;
	/**
	 * Read only: Whether or not, uri exists.
	 */
	var hasUri : Bool;
	/**
	 * Set upper limits for how many times an item has been visited. The default value is "-1", and in that case all items are matched regardless of their visit count.
	 */
	var maxVisits : Long;
	/**
	 * Set lower limits for how many times an item has been visited. The default value is "-1", and in that case all items are matched regardless of their visit count.
	 */
	var minVisits : Long;
	/**
	 * When set, returns only bookmarked items, when unset, returns anything. Setting this is equivalent to listing all bookmark folders in the folders parameter.
	 */
	var onlyBookmarked : Bool;
	/**
	 * Text search terms.
	 */
	var searchTerms : AString;
	/**
	 * A list of tags to use for filtering query results. This attribute must be an array of strings. Duplicate tags may be specified, but when reading the list, only unique tags are returned. When called as a getter, this returns an array of strings sorted in ascending lexicographical (alphabetical) order. This array may be empty, in which case no filtering by tags is performed. To search for items that are tagged with any given tags instead of all, multiple queries may be passed to the nsINavHistoryService method nsINavHistoryService.executeQueries().
	 */
	var tags : NsIVariant;
	/**
	 * If true, the results include only items that are not tagged with the specified tags. If false, only tags in the tags list are included in the results.
	 */
	var tagsAreNot : Bool;
	/**
	 * This is a URI to match, to, for example, find out every time you visited a given URI. Use uriIsPrefix to control whether this is an exact match.
	 */
	var uri : NsIURI;
	/**
	 * Controls the interpretation of uri. When unset (default), the URI will request an exact match of the specified URI. When set, any history entry beginning in uri will match. For example http://bar.com/foo will match http://bar.com/foo as well as http://bar.com/foo/baz.gif.
	 */
	var uriIsPrefix : Bool;
	
	function clone() : NsINavHistoryQuery;
	function getFolders(?count:{value:ULong}, folders:Array<LongLong>) : Void;
	function getTransitions(?count:{value:ULong}, transitions:Array<ULong>) : Void;
	function setFolders(folders:Array<LongLong>, folderCount:ULong) : Void;
	function setTransitions(transitions:Array<ULong>, count:ULong) : Void;
}
