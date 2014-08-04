package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIMsgIdentity") extern class NsIMsgIdentity
{
	var identityName
 : AString;
	/**
	 * User's full name, i.e. John Doe
	 */
	var fullName
 : AString;
	/**
	 * User's e-mail address, i.e. john@doe.com
	 */
	var email
 : AString;
	/**
	 * Optional replyTo address, i.e. johnNOSPAM@doe.com
	 */
	var replyTo
 : AString;
	/**
	 * Optional organization
	 */
	var organization
 : AString;
	/**
	 * Should we compose with HTML by default?
	 */
	var composeHtml
 : Bool;
	/**
	 * Should we attach a signature by default?
	 */
	var attachSignature
 : Bool;
	/**
	 * Should we attach a vCard by default?
	 */
	var attachVCard
 : Bool;
	/**
	 * Should we automatically quote the original message?
	 */
	var autoQuote
 : Bool;
	/**
	 * Should replies appear above or below the quoted message. (1 - replies appear above the quoted message. 0 - replies appear below the quoted message.
	 */
	var replyOnTop
 : Long;
	/**
	 * What should our signature be at the end of the quoted text when replying above it?
	 */
	var sigBottom
 : Bool;
	/**
	 * The file containing the current signature.
	 */
	var signature
 : NsILocalFile;
	var signatureDate
 : Long;
	var escapedVCard
 : AString;
	var doFcc
 : Bool;
	var fccFolder
 : AString;
	var fccFolderPickerMode
 : AString;
	var fccReplyFollowsParent
 : Bool;
	var draftsFolderPickerMode
 : AString;
	var tmplFolderPickerMode
 : AString;
	/**
	 * Note: Don't call bccSelf, bccOthers, and bccList directly, they are only used for migration and backward compatability. Use doBcc and doBccList instead.
	 */
	var bccSelf
 : Bool;
	var bccOthers
 : Bool;
	var bccList
 : AString;
	var doBcc
 : Bool;
	var doBccList
 : AString;
	var draftFolder
 : AString;
	var stationeryFolder
 : AString;
	var showSaveMsgDlg
 : Bool;
	var directoryServer
 : AString;
	var overrideGlobalPref
 : Bool;
	/**
	 * If this is false, don't append the user's domain to an autocomplete address with no matches.
	 */
	var autocompleteToMyDomain
 : Bool;
	/**
	 * Determines if the UI should use this identity and the wizard uses this to determine whether or not to ask the user to complete all the fields.
	 */
	var valid
 : Bool;
	/**
	 * The preferred SMTP server for this identity. If this is set, this is the SMTP server that should be used for the message send.
	 */
	var smtpServerKey
 : AString;
	/**
	 * Readonly: Default request for return receipt option for this identity. If this is set, the Return Receipt menu item on the compose window will be checked.
	 */
	var requestReturnReceipt
 : Bool;
	/**
	 * Readonly:
	 */
	var receiptHeaderType
 : Long;
	/**
	 * Readonly: Default request for DSN option for this identity. If this is set, the DSN menu item on the compose window will be checked.
	 */
	var requestDSN
 : Bool;
}
