package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDBFolderInfo") extern class NsIDBFolderInfo extends NsISupports
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
	
	function AndFlags(flags:Long) : Long;
	function ChangeExpungedBytes(delta:Long) : Void;
	function ChangeNumMessages(delta:Long) : Void;
	function ChangeNumUnreadMessages(delta:Long) : Void;
	function getBooleanProperty(propertyName:String, defaultValue:Bool) : Bool;
	function getCharacterSet(charSet:{value:ACString}, overriden:{value:Bool}) : Void;
	function getCharacterSetOverride(characterSetOverride:{value:Bool}) : Void;
	function getCharPtrCharacterSet() : String;
	function getCharPtrProperty(propertyName:String) : String;
	function getLocale(result:NsString) : Void;
	function getMailboxName(boxName:NsString) : Void;
	function getProperty(propertyName:String) : AString;
	function GetTransferInfo() : NsIDBFolderInfo;
	function getUint32Property(propertyName:String, defaultValue:ULong) : ULong;
	function initFromTransferInfo(transferInfo:NsIDBFolderInfo) : Void;
	function OrFlags(flags:Long) : Long;
	function setBooleanProperty(propertyName:String, aPropertyValue:Bool) : Void;
	function setCharacterSet(charSet:String) : Void;
	function setCharacterSetOverride(characterSetOverride:Bool) : Void;
	function setCharPtrProperty(aPropertyName:String, aPropertyValue:String) : Void;
	function SetHighWater(highwater:NsMsgKey, force:Bool) : Void;
	function setLocale(locale:NsString) : Void;
	function setMailboxName(newBoxName:NsString) : Void;
	function setProperty(propertyName:String, propertyStr:AString) : Void;
	function setUint32Property(propertyName:String, propertyValue:ULong) : Void;
}
