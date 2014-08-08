package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIMsgDatabase") extern class NsIMsgDatabase extends NsIDBChangeAnnouncer
{
	/**
	 * Readonly:
	 */
	var dBFolderInfo : NsIDBFolderInfo;
	/**
	 * Readonly:
	 */
	var FirstNew : NsMsgKey;
	var msgRetentionSettings : NsIMsgRetentionSettings;
	var msgDownloadSettings : NsIMsgDownloadSettings;
	/**
	 * Readonly:
	 */
	var lowWaterArticleNum : NsMsgKey;
	/**
	 * Readonly:
	 */
	var highWaterArticleNum : NsMsgKey;
	/**
	 * For undo-redo of move pop->imap.
	 */
	var nextPseudoMsgKey : NsMsgKey;
	/**
	 * Readonly: For saving "fake" offline msg hdrs.
	 */
	var nextFakeOfflineMsgKey : NsMsgKey;
	/**
	 * Readonly:
	 */
	var defaultViewFlags : NsMsgViewFlagsTypeValue;
	/**
	 * Readonly:
	 */
	var defaultSortType : NsMsgViewSortTypeValue;
	/**
	 * Readonly:
	 */
	var defaultSortOrder : NsMsgViewSortOrderValue;
	var msgHdrCacheSize : ULong;
	var folderStream : NsIOutputStream;
	var summaryValid : Bool;
	
	function Open(aFolderName:NsILocalFile, aCreate:Bool, aLeaveInvalidDB:Bool) : Void;
	function forceFolderDBClosed(aFolder:NsIMsgFolder) : Void;
	function Close(aForceCommit:Bool) : Void;
	function Commit(commitType:NsMsgDBCommit) : Void;
	function ForceClosed() : Void;
	function resetHdrCacheSize(size:ULong) : Void;
	function GetMsgHdrForKey(key:NsMsgKey) : NsIMsgDBHdr;
	function getMsgHdrForMessageID(messageID:String) : NsIMsgDBHdr;
	function ContainsKey(key:NsMsgKey) : Bool;
	function CreateNewHdr(key:NsMsgKey) : NsIMsgDBHdr;
	function AddNewHdrToDB(newHdr:NsIMsgDBHdr, notify:Bool) : Void;
	function CopyHdrFromExistingHdr(key:NsMsgKey, existingHdr:NsIMsgDBHdr, addHdrToDB:Bool) : NsIMsgDBHdr;
	function EnumerateMessages() : NsISimpleEnumerator;
	function EnumerateThreads() : NsISimpleEnumerator;
	function GetThreadContainingMsgHdr(msgHdr:NsIMsgDBHdr) : NsIMsgThread;
	function MarkHdrRead(msgHdr:NsIMsgDBHdr, bRead:Bool, instigator:NsIDBChangeListener) : Void;
	function MarkHdrReplied(msgHdr:NsIMsgDBHdr, bReplied:Bool, instigator:NsIDBChangeListener) : Void;
	function MarkHdrMarked(msgHdr:NsIMsgDBHdr, mark:Bool, instigator:NsIDBChangeListener) : Void;
	function MarkMDNNeeded(key:NsMsgKey, bNeeded:Bool, instigator:NsIDBChangeListener) : Void;
	function IsMDNNeeded(key:NsMsgKey) : Bool;
	function MarkMDNSent(key:NsMsgKey, bNeeded:Bool, instigator:NsIDBChangeListener) : Void;
	function IsMDNSent(key:NsMsgKey) : Bool;
	function MarkRead(key:NsMsgKey, bRead:Bool, instigator:NsIDBChangeListener) : Void;
	function MarkReplied(key:NsMsgKey, bReplied:Bool, instigator:NsIDBChangeListener) : Void;
	function MarkForwarded(key:NsMsgKey, bForwarded:Bool, instigator:NsIDBChangeListener) : Void;
	function MarkHasAttachments(key:NsMsgKey, bHasAttachments:Bool, instigator:NsIDBChangeListener) : Void;
	function MarkThreadIgnored(thread:NsIMsgThread, threadKey:NsMsgKey, bIgnored:Bool, instigator:NsIDBChangeListener) : Void;
	function MarkThreadWatched(thread:NsIMsgThread, threadKey:NsMsgKey, bWatched:Bool, instigator:NsIDBChangeListener) : Void;
	function MarkHeaderKilled(msg:NsIMsgDBHdr, bIgnored:Bool, instigator:NsIDBChangeListener) : Void;
	function IsRead(key:NsMsgKey) : Bool;
	function IsIgnored(key:NsMsgKey) : Bool;
	function IsMarked(key:NsMsgKey) : Bool;
	function HasAttachments(key:NsMsgKey) : Bool;
	function DeleteMessage(key:NsMsgKey, instigator:NsIDBChangeListener, commit:Bool) : Void;
	function DeleteHeader(msgHdr:NsIMsgDBHdr, instigator:NsIDBChangeListener, commit:Bool, notify:Bool) : Void;
	function RemoveHeaderMdbRow(msgHdr:NsIMsgDBHdr) : Void;
	function UndoDelete(msgHdr:NsIMsgDBHdr) : Void;
	function MarkMarked(key:NsMsgKey, mark:Bool, instigator:NsIDBChangeListener) : Void;
	function MarkOffline(key:NsMsgKey, offline:Bool, instigator:NsIDBChangeListener) : Void;
	function SetLabel(key:NsMsgKey, label:NsMsgLabelValue) : Void;
	function setStringProperty(aKey:NsMsgKey, aProperty:String, aValue:String) : Void;
	function MarkImapDeleted(key:NsMsgKey, deleted:Bool, instigator:NsIDBChangeListener) : Void;
	function applyRetentionSettings(aMsgRetentionSettings:NsIMsgRetentionSettings, aDeleteViaFolder:Bool) : Void;
	function HasNew() : Bool;
	function ClearNewList(notify:Bool) : Void;
	function AddToNewList(key:NsMsgKey) : Void;
	function StartBatch() : Void;
	function EndBatch() : Void;
	function GetOfflineOpForKey(messageKey:NsMsgKey, create:Bool) : NsIMsgOfflineImapOperation;
	function RemoveOfflineOp(op:NsIMsgOfflineImapOperation) : Void;
	function EnumerateOfflineOps() : NsISimpleEnumerator;
	function setAttributesOnPendingHdr(pendingHdr:NsIMsgDBHdr, property:String, propertyVal:String, flags:Long) : Void;
	function getNewList(count:{value:ULong}, newKeys:Array<NsMsgKey>) : Void;
	function getCachedHits(aSearchFolderUri:String) : NsISimpleEnumerator;
	function refreshCache(aSearchFolderUri:String, aNumKeys:ULong, aNewHits:Array<NsMsgKey>, aNumBadHits:{value:ULong}, aStaleHits:Array<NsMsgKey>) : Void;
	function updateHdrInCache(aSearchFolderUri:String, aHdr:NsIMsgDBHdr, aAdd:Bool) : Void;
	function hdrIsInCache(aSearchFolderUri:String, aHdr:NsIMsgDBHdr) : Bool;
}
