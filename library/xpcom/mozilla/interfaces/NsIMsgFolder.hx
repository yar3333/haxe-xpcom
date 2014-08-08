package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIMsgFolder") extern class NsIMsgFolder extends NsISupports
{
	/**
	 * User has new mail waiting.
	 */
	static inline var nsMsgBiffState_NewMail = 0;
	/**
	 * No new mail is waiting.
	 */
	static inline var nsMsgBiffState_NoMail = 1;
	/**
	 * We dunno whether there is new mail.
	 */
	static inline var nsMsgBiffState_Unknown = 2;
	/**
	 *  
	 */
	static inline var nsMsgDispositionState_None = -1;
	/**
	 *  
	 */
	static inline var nsMsgDispositionState_Replied = 0;
	/**
	 *  
	 */
	static inline var nsMsgDispositionState_Forwarded = 1;
	/**
	 * Turn notifications on/off for various notification types. Currently only supporting allMessageCountNotifications which refers to both total and unread message counts.
	 */
	static inline var allMessageCountNotifications = 0;
	
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
	
	function startFolderLoading() : Void;
	function endFolderLoading() : Void;
	function updateFolder(aWindow:NsIMsgWindow) : Void;
	function getFilterList(msgWindow:NsIMsgWindow) : NsIMsgFilterList;
	function setFilterList(filterList:NsIMsgFilterList) : Void;
	function ForceDBClosed() : Void;
	function Delete() : Void;
	function deleteSubFolders(folders:NsISupportsArray, msgWindow:NsIMsgWindow) : Void;
	function propagateDelete(folder:NsIMsgFolder, deleteStorage:Bool, msgWindow:NsIMsgWindow) : Void;
	function recursiveDelete(deleteStorage:Bool, msgWindow:NsIMsgWindow) : Void;
	function createSubfolder(folderName:AString, msgWindow:NsIMsgWindow) : Void;
	function addSubfolder(folderName:AString) : NsIMsgFolder;
	function createStorageIfMissing(urlListener:NsIUrlListener) : Void;
	function compact(aListener:NsIUrlListener, aMsgWindow:NsIMsgWindow) : Void;
	function compactAll(aListener:NsIUrlListener, aMsgWindow:InnsIMsgWindow, aFolderArray:NsISupportsArray, aCompactOfflineAlso:Bool, aOfflineFolderArray:NsISupportsArray) : Void;
	function compactAllOfflineStores(aMsgWindow:NsIMsgWindow, aOfflineFolderArray:NsISupportsArray) : Void;
	function emptyTrash(aMsgWindow:NsIMsgWindow, aListener:NsIUrlListener) : Void;
	function rename(name:AString, msgWindow:NsIMsgWindow) : Void;
	function renameSubFolders(msgWindow:NsIMsgWindow, oldFolder:NsIMsgFolder) : Void;
	function generateUniqueSubfolderName(prefix:AString, otherFolder:NsIMsgFolder) : AString;
	function updateSummaryTotals(force:Bool) : Void;
	function summaryChanged() : Void;
	function getNumUnread(deep:Bool) : Long;
	function getTotalMessages(deep:Bool) : Long;
	function clearNewMessages() : Void;
	function clearRequiresCleanup() : Void;
	function setFlag(flag:ULong) : Void;
	function clearFlag(flag:ULong) : Void;
	function getFlag(flag:ULong) : Bool;
	function toggleFlag(flag:ULong) : Void;
	function onFlagChange(flag:ULong) : Void;
	function setPrefFlag() : Void;
	function getFoldersWithFlag(flags:ULong, resultsize:ULong, numFolders:ULong) : NsIMsgFolder;
	function getAllFoldersWithFlag(aFlag:ULong) : NsISupportsArray;
	function getExpansionArray(expansionArray:NsISupportsArray) : Void;
	function getUriForMsg(msgHdr:NsIMsgDBHdr) : ACString;
	function deleteMessages(messages:NsISupportsArray, msgWindow:NsIMsgWindow, deleteStorage:Bool, isMove:Bool, listener:NsIMsgCopyServiceListener, allowUndo:Bool) : Void;
	function copyMessages(srcFolder:NsIMsgFolder, messages:NsISupportsArray, isMove:Bool, msgWindow:NsIMsgWindow, listener:NsIMsgCopyServiceListener, isFolder:Bool, allowUndo:Bool) : Void;
	function copyFolder(srcFolder:NsIMsgFolder, isMoveFolder:Bool, msgWindow:NsIMsgWindow, listener:NsIMsgCopyServiceListener) : Void;
	function copyFileMessage(file:NsIFile, msgToReplace:NsIMsgDBHdr, isDraft:Bool, newMsgFlags:ULong, msgWindow:NsIMsgWindow, listener:NsIMsgCopyServiceListener) : Void;
	function acquireSemaphore(semHolder:NsISupports) : Void;
	function releaseSemaphore(semHolder:NsISupports) : Void;
	function testSemaphore(semHolder:NsISupports) : Bool;
	function getNewMessages(aWindow:NsIMsgWindow, aListener:NsIUrlListener) : Void;
	function writeToFolderCache(folderCache:NsIMsgFolderCache, deep:Bool) : Void;
	function getNumNewMessages(deep:Bool) : Long;
	function setNumNewMessages(numNewMessages:Long) : Void;
	function generateMessageURI(msgKey:NsMsgKey) : ACString;
	function addMessageDispositionState(aMessage:NsIMsgDBHdr, aDispositionFlag:NsMsgDispositionState) : Void;
	function markMessagesRead(messages:NsISupportsArray, markRead:Bool) : Void;
	function markAllMessagesRead() : Void;
	function markMessagesFlagged(messages:NsISupportsArray, markFlagged:Bool) : Void;
	function markThreadRead(thread:NsIMsgThread) : Void;
	function setLabelForMessages(messages:NsISupportsArray, label:NsMsgLabelValue) : Void;
	function getMsgDatabase(msgWindow:NsIMsgWindow) : NsIMsgDatabase;
	function setMsgDatabase(msgDatabase:NsIMsgDatabase) : Void;
	function getDBFolderInfoAndDB(folderInfo:NsIDBFolderInfo) : NsIMsgDatabase;
	function GetMessageHeader(msgKey:NsMsgKey) : NsIMsgDBHdr;
	function shouldStoreMsgOffline(msgKey:NsMsgKey) : Bool;
	function hasMsgOffline(msgKey:NsMsgKey) : Bool;
	function getOfflineFileStream(msgKey:NsMsgKey, offset:PRUint32, size:PRUint32) : NsIInputStream;
	function DownloadMessagesForOffline(messages:NsISupportsArray, window:NsIMsgWindow) : Void;
	function getChildWithURI(uri:ACString, deep:Bool, caseInsensitive:Bool) : NsIMsgFolder;
	function downloadAllForOffline(listener:NsIUrlListener, window:NsIMsgWindow) : Void;
	function enableNotifications(notificationType:Long, enable:Bool, dbBatching:Bool) : Void;
	function isCommandEnabled(command:ACString) : Bool;
	function matchOrChangeFilterDestination(folder:NsIMsgFolder, caseInsensitive:Bool) : Bool;
	function confirmFolderDeletionForFilter(msgWindow:NsIMsgWindow) : Bool;
	function alertFilterChanged(msgWindow:NsIMsgWindow) : Void;
	function throwAlertMsg(msgName:String, msgWindow:NsIMsgWindow) : Void;
	function getStringWithFolderNameFromBundle(msgName:String) : AString;
	function notifyCompactCompleted() : Void;
	function compareSortKeys(msgFolder:NsIMsgFolder) : Long;
	function getSortKey(key:OctetPtr, length:ULong) : Void;
	function callFilterPlugins(aMsgWindow:NsIMsgWindow) : Bool;
	function getStringProperty(propertyName:String) : ACString;
	function setStringProperty(propertyName:String, propertyValue:ACString) : Void;
	function isAncestorOf(folder:NsIMsgFolder) : Bool;
	function containsChildNamed(name:AString) : Bool;
	function getChildNamed(aName:AString) : NsIMsgFolder;
	function findSubFolder(escapedSubFolderName:ACString) : NsIMsgFolder;
	function AddFolderListener(listener:NsIFolderListener) : Void;
	function RemoveFolderListener(listener:NsIFolderListener) : Void;
	function NotifyPropertyChanged(property:NsIAtom, oldValue:ACString, newValue:ACString) : Void;
	function NotifyIntPropertyChanged(property:NsIAtom, oldValue:Long, newValue:Long) : Void;
	function NotifyBoolPropertyChanged(property:NsIAtom, oldValue:Bool, newValue:Bool) : Void;
	function NotifyPropertyFlagChanged(item:NsIMsgDBHdr, property:NsIAtom, oldValue:ULong, newValue:ULong) : Void;
	function NotifyUnicharPropertyChanged(property:NsIAtom, oldValue:AString, newValue:AString) : Void;
	function NotifyItemAdded(item:NsISupports) : Void;
	function NotifyItemRemoved(item:NsISupports) : Void;
	function NotifyFolderEvent(event:NsIAtom) : Void;
	function ListDescendents(descendents:NsISupportsArray) : Void;
	function Shutdown(shutdownChildren:Bool) : Void;
	function setInVFEditSearchScope(aSearchThisFolder:Bool, aSetOnSubFolders:Bool) : Void;
	function copyDataToOutputStreamForAppend(aIStream:NsIInputStream, aLength:Long, outputStream:NsIOutputStream) : Void;
	function copyDataDone() : Void;
	function setJunkScoreForMessages(aMessages:NsISupportsArray, aJunkScore:ACString) : Void;
	function applyRetentionSettings() : Void;
	function fetchMsgPreviewText(aKeysToFetch:Array<NsMsgKey>, aNumKeys:ULong, aLocalOnly:Bool, aUrlListener:NsIUrlListener) : Bool;
	function addKeywordsToMessages(aMessages:NsISupportsArray, aKeywords:ACString) : Void;
	function removeKeywordsFromMessages(aMessages:NsISupportsArray, aKeywords:ACString) : Void;
	function getMsgTextFromStream(aMsgHdr:NsIMsgDBHdr, aStream:NsIInputStream, aBytesToRead:Long, aMaxOutputLen:Long, aCompressQuotes:Bool) : AUTF8String;
}
