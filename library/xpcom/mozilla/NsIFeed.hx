package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIFeed") extern class NsIFeed extends NsIFeedContainer
{
	/**
	 * The cloud element on a feed is used to identify the API endpoint of an rssCloud ping server, which distributes notifications of changes to this feed.
	 */
	var cloud : NsIWritablePropertyBag2;
	/**
	 * Indicates the number of enclosures associated with a feed.
	 */
	var enclosureCount : Long;
	/**
	 * Describes the software that produced a feed.
	 */
	var generator : NsIFeedGenerator;
	/**
	 * Provides an image URL and metadata, as defined by RSS 2.
	 */
	var image : NsIWritablePropertyBag2;
	/**
	 * Specifies an array of the items or entries on the feed.
	 */
	var items : NsIArray;
	/**
	 * An array of days of the week on which the feed should not be fetched. Each entry in the array is the name of one day of the week to skip. For example, to skip fetching on Mondays, a feed that does not want to be fetched on Mondays would specify "Monday" in this array. Note: This field is rarely implemented.
	 */
	var skipDays : NsIArray;
	/**
	 * An array of the hours of the day during which the feed should not be fetched. The hours are represented as integer values from 0 (midnight) to 23 (11:00 PM), and are always indicated using UTC. Note: This field is rarely implemented.
	 */
	var skipHours : NsIArray;
	/**
	 * Returns a subtitle for the feed, based on its description, subtitle, and appropriate extensions.
	 */
	var subtitle : NsIFeedTextConstruct;
	/**
	 * Information about a text box that can be displayed along with the feed by aggregators that support it, to allow the reader to send a response back to the source of the feed. Note: This field is almost never used, and is incompatible with many aggregators.
	 */
	var textInput : NsIWritablePropertyBag2;
	/**
	 * Indicates the type of content presented by a feed. See Constants. Note: You should consider this a bit mask of values; at some point, the type may include more than one of these values ORed together. Read only.
	 */
	var type : ULong;
}
