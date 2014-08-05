package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIMsgFolder") extern class NsIMsgFolder
{
	/**
	 * readonly
	 */
	var supportsOffline : Bool;
	/**
	 * readonly
	 */
	var offlineStoreOutputStream : NsIOutputStream;
	/**
	 * readonly
	 */
	var offlineStoreInputStream : NsIInputStream;
	var retentionSettings : NsIMsgRetentionSettings;
	var downloadSettings : NsIMsgDownloadSettings;
	/**
	 * Used for order in the folder pane, folder pickers, etc.
	 */
	var sortOrder : Long;
	/**
	 * Unique ID to the folder, it is not a globally unique identifier.  Will return nsMsgKey_None if there was no last message loaded. Note: Does not persist across sessions.
	 */
	var lastMessageLoaded : NsMsgKey;
	/**
	 * Readonly: Old nsIFolder properties and methods.
	 */
	var URI : ACString;
	/**
	 * Old nsIFolder properties and methods.
	 */
	var name : AString;
	/**
	 * Old nsIFolder properties and methods.
	 */
	var prettyName : AString;
	/**
	 * Readonly: Old nsIFolder properties and methods.
	 */
	var abbreviatedName : AString;
	/**
	 * Old nsIFolder properties and methods.
	 */
	var parent : NsIMsgFolder;
	/**
	 * Readonly: Handy accessor when we want a msg folder.
	 */
	var parentMsgFolder : NsIMsgFolder;
	var dBTransferInfo : NsIDBFolderInfo;
	/**
	 * Readonly: Returns an enumerator containing a list of nsIMsgFolder items that are subfolders of the instance this is called on.
	 */
	var subFolders : NsISimpleEnumerator;
	/**
	 * Readonly: Returns true if this folder has sub folders.
	 */
	var hasSubFolders : Bool;
	/**
	 * Readonly: Returns a list of Components.interfaces.nsIMsgDBHdr.
	 */
	var messages : NsISimpleEnumerator;
	/**
	 * Readonly: Returns the number of sub folders that this folder has.
	 */
	var numSubFolders : ULong;
	/**
	 * readonly
	 */
	var inVFEditSearchScope : Bool;
	/**
	 * Readonly: This allows a folder to have a special identity. E.g., you might want to associate an identity with a particular newsgroup, or for IMAP shared folders in the other users namespace, you might want to create a delegated identity.
	 */
	var customIdentity : NsIMsgIdentity;
	/**
	 * Are we running a url as a result of the user clicking get msg.
	 */
	var gettingNewMessages : Bool;
	/**
	 * Local path of this folder.
	 */
	var filePath : NsILocalFile;
	/**
	 * readonly
	 */
	var baseMessageURI : ACString;
	/**
	 * The charset of this folder.
	 */
	var charset : ACString;
	var charsetOverride : Bool;
	var biffState : ULong;
	/**
	 * readonly
	 */
	var locked : Bool;
	/**
	 * Direct access to the set/get all the flags at once.
	 */
	var flags : ULong;
	/**
	 * readonly
	 */
	var knowsSearchNntpExtension : Bool;
	/**
	 * readonly
	 */
	var allowsPosting : Bool;
	/**
	 * readonly
	 */
	var relativePathName : ACString;
	/**
	 * Size of this folder on disk (not including .msf file) for IMAP, it's the sum of the size of the messages.
	 */
	var sizeOnDisk : ULong;
	/**
	 * readonly
	 */
	var username : ACString;
	/**
	 * readonly
	 */
	var hostname : ACString;
	/**
	 * readonly
	 */
	var expungedBytes : ULong;
	/**
	 * Readonly: Can this folder be deleted. For example, special folders cannot be deleted.
	 */
	var deletable : Bool;
	/**
	 * Readonly: Should we be displaying recipients instead of the sender. For example, in the Sent folder, recipients are more relevant than the sender.
	 */
	var displayRecipients : Bool;
	/**
	 * Readonly: Used to determine if it will take a long time to download all the headers in this folder - so that we can do folder notifications synchronously instead of asynchronously.
	 */
	var manyHeadersToDownload : Bool;
	/**
	 * readonly
	 */
	var requiresCleanup : Bool;
	/**
	 * Does this folder have new messages.
	 */
	var hasNewMessages : Bool;
	/**
	 * Readonly: The first new message in the folder.
	 */
	var firstNewMessage : NsIMsgDBHdr;
	/**
	 * readonly
	 */
	var prettiestName : AString;
	/**
	 * Readonly: URL for this folder.
	 */
	var folderURL : ACString;
	/**
	 * readonly
	 */
	var showDeletedMessages : Bool;
	/**
	 * Readonly: This folder's parent server.
	 */
	var server : NsIMsgIncomingServer;
	/**
	 * Readonly: Is this folder the "phantom" server folder?
	 */
	var isServer : Bool;
	/**
	 * readonly
	 */
	var canSubscribe : Bool;
	/**
	 * readonly
	 */
	var canFileMessages : Bool;
	/**
	 * readonly: this is an imap no select folder
	 */
	var noSelect : Bool;
	/**
	 * readonly: this is an imap shared folder
	 */
	var imapShared : Bool;
	/**
	 * readonly: can't delete from imap read-only
	 */
	var canDeleteMessages : Bool;
	/**
	 * Readonly: Does this folder allow subfolders. For example, newsgroups cannot have subfolders, and the INBOX on some IMAP servers cannot have subfolders.
	 */
	var canCreateSubfolders : Bool;
	/**
	 * Readonly: Can you change the name of this folder. For example, newsgroups and some special folders can't be renamed.
	 */
	var canRename : Bool;
	/**
	 * readonly:
	 */
	var canCompact : Bool;
	/**
	 * Readonly: The phantom server folder.
	 */
	var rootFolder : NsIMsgFolder;
}
