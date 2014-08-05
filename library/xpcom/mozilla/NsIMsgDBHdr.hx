package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIMsgDBHdr") extern class NsIMsgDBHdr
{
	/**
	 * Readonly: Indicates whether or not the message is read.
	 */
	var isRead : Bool;
	/**
	 * Readonly: Indicates whether or not the message is starred in the UI.
	 */
	var isFlagged : Bool;
	/**
	 * Readonly: Indicates whether or not this message belongs to a subthread that has been ignored in the UI. If you want to know whether the message is the root of an ignored subthread then you should check for the Ignored flag. Any children of the ignored message will be marked as read when added to the database.
	 */
	var isKilled : Bool;
	/**
	 * Indicates the priority of this message.
	 */
	var priority : NsMsgPriorityValue;
	/**
	 * Indicates the flags of the message. See nsMsgMessageFlags for a list of what may or may not be set on this message. Note that the elided flag should not be set on messages, as it is a flag strictly dealing with the database view.
	 */
	var flags : ULong;
	/**
	 * Indicates the ID of the thread to which this message belongs. This property does not change the state of any thread objects, so only internal database code should set this attribute.
	 */
	var threadId : NsMsgKey;
	/**
	 * Indicates the database key for this message. Setting this property will probably result in an inconsistent database representation, so only internal database code should set this attribute.
	 */
	var messageKey : NsMsgKey;
	/**
	 * Indicates the parent of this message in its thread. If this is the root of the thread, it will return nsMsgKey_None.
	 */
	var threadParent : NsMsgKey;
	/**
	 * Indicates the size of this message in bytes.
	 */
	var messageSize : ULong;
	/**
	 * Indicates the size of the message body in number of lines.
	 */
	var lineCount : ULong;
	/**
	 * Indicates the offset within the message of the X-Mozilla-Status header.
	 */
	var statusOffset : ULong;
	/**
	 * Indicates the position of the offline copy of an IMAP or news messages within the offline store.
	 */
	var messageOffset : ULong;
	/**
	 * Indicates the size of the offline copy of an IMAP or news message.
	 */
	var offlineMessageSize : ULong;
	/**
	 * Indicates the date of this message; the equivalent header is the Date: header.
	 */
	var date : PRTime;
	/**
	 * Readonly: Indicates the date of this message as a Unix timestamp.
	 */
	var dateInSeconds : ULong;
	/**
	 * Indicates the message ID of this message, without angle brackets. If setting this value, outer angle brackets will be stripped if present.
	 */
	var messageId : String;
	/**
	 * Indicates the Cc list of this message; the equivalent header is the Cc: header.
	 */
	var ccList : String;
	/**
	 * Indicates the Bcc list of this message; the equivalent header is the Bcc: header.
	 * New in .31
	 */
	var bccList : String;
	/**
	 * Indicates the author of this message; the equivalent header is the From: header. The value here will effectively be the unparsed version of the header.
	 */
	var author : String;
	/**
	 * Indicates the subject of this message; the equivalent header is the Subject: header. The value here will effectively be the unparsed header content, so it will contain full MIME-encoded syntax.
	 */
	var subject : String;
	/**
	 * Indicates the recipients of the message. This is the first non-empty value of the To: header, Cc: header, or Newsgroup: header. The value here will effectively be the unparsed header content; it may be easier to set this using setRecipientsArray.
	 */
	var recipients : String;
	/**
	 * Readonly: Indicates the number of references this header has.
	 */
	var numReferences : UShort;
	/**
	 * Readonly: Indicates the author of this message. The value here will have been decoded by the mime converter service.
	 */
	var mime2DecodedAuthor : AString;
	/**
	 * Readonly: Indicates the subject of this message. The value here will have been decoded by the mime converter service.
	 */
	var mime2DecodedSubject : AString;
	/**
	 * Readonly: Indicates the recipients of this message. The value here will have been decoded by the mime converter service.
	 */
	var mime2DecodedRecipients : AString;
	/**
	 * Indicates the character set of this message. This value is extracted from the Content-Type header.
	 */
	var Charset : String;
	/**
	 * Indicates one of the old 5 label values used by old versions. New code should use keywords instead.
	 */
	var label : NsMsgLabelValue;
	/**
	 * Indicates the account that was originally used to fetch the message. May be blank if the message has not been moved or copied.
	 */
	var accountKey : String;
	/**
	 * Readonly: Indicates the folder in which this message is stored.
	 */
	var folder : NsIMsgFolder;
	/**
	 * Readonly: Enumerator for names of all database properties in the header. (new in 3.1?)
	 */
	var propertyEnumerator : NsIUTF8StringEnumerator;
}
