package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIDBFolderInfo") extern class NsIDBFolderInfo extends NsISupports
{
	var characterSetOverride : Bool;
	var ExpiredMark : NsMsgKey;
	var expungedBytes : Long;
	var Flags : Long;
	var FolderDate : ULong;
	var folderName : String;
	var FolderSize : ULong;
	var HighWater : NsMsgKey;
	var IMAPHierarchySeparator : Wchar;
	var ImapTotalPendingMessages : Long;
	var ImapUidValidity : Long;
	var ImapUnreadPendingMessages : Long;
	var knownArtsSet : String;
	var locale : AString;
	var mailboxName : AString;
	var NumMessages : Long;
	var NumUnreadMessages : Long;
	var sortOrder : NsMsgViewSortOrderValue;
	var sortType : NsMsgViewSortTypeValue;
	var Version : ULong;
	var viewFlags : NsMsgViewFlagsTypeValue;
	var viewType : NsMsgViewTypeValue;
}
