package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIMsgDatabase") extern class NsIMsgDatabase
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
}
