package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIMsgIncomingServer") extern class NsIMsgIncomingServer extends NsISupports
{
	static inline var defaultSocket = 0;
	static inline var tryTLS = 1;
	static inline var alwaysUseTLS = 2;
	static inline var useSSL = 3;
	static inline var keepDups = 0;
	static inline var deleteDups = 1;
	static inline var moveDupsToTrash = 2;
	static inline var markDupsRead = 3;
	
	/**
	 * Read only.
	 */
	var accountManagerChrome : AString;
	var biffMinutes : Long;
	var biffState : ULong;
	/**
	 * Read only.
	 */
	var canBeDefaultServer : Bool;
	/**
	 * Read only.
	 */
	var canCompactFoldersOnServer : Bool;
	var canCreateFoldersOnServer : Bool;
	/**
	 * can this server be removed from the account manager? for instance, local mail is not removable, but an imported folder is.
	 */
	var canDelete : Bool;
	/**
	 * Read only.
	 */
	var canEmptyTrashOnExit : Bool;
	var canFileMessagesOnServer : Bool;
	/**
	 * Read only.
	 */
	var canHaveFilters : Bool;
	/**
	 * Read only.
	 */
	var canSearchMessages : Bool;
	/**
	 * Read only.
	 */
	var canUndoDeleteOnServer : Bool;
	/**
	 * helper function to construct the pretty name in a server type specific way - for example, mail for foo@test.com, news on news.mozilla.org. Read only.
	 */
	var constructedPrettyName : AString;
	/**
	 * If the server supports Fcc/Sent/etc, default prefs can point to the server. Otherwise, copies and folders prefs should point to Local Folders. By default this value is set to true via global pref 'allows_specialfolders_usage' (mailnews.js). For Nntp, the value is overridden to be false. If ISPs want to modify this value, they should do that in their rdf file by using this attribute. Please look at mozilla/mailnews/base/ispdata/aol.rdf for usage example.
	 */
	var defaultCopiesAndFoldersPrefsToServer : Bool;
	var displayStartupPage : Bool;
	var doBiff : Bool;
	/**
	 * Read only.
	 */
	var downloadMessagesAtStartup : Bool;
	var downloadOnBiff : Bool;
	var downloadSettings : NsIMsgDownloadSettings;
	var emptyTrashOnExit : Bool;
	/**
	 * Read only.
	 */
	var filterScope : NsMsgSearchScopeValue;
	/**
	 * hostname of the server.
	 */
	var hostName : ACString;
	var incomingDuplicateAction : Long;
	/**
	 * Read only.
	 */
	var isDeferredTo : Bool;
	var isSecure : Bool;
	/**
	 * Read only.
	 */
	var isSecureServer : Bool;
	/**
	 * internal pref key - guaranteed to be unique across all servers.
	 */
	var key : ACString;
	var limitOfflineMessageSize : Bool;
	var localPath : NsILocalFile;
	/**
	 * the schema for the local mail store, such as "mailbox", "imap", or "news" used to construct URIs. Read only.
	 */
	var localStoreType : ACString;
	var loginAtStartUp : Bool;
	var logonFallback : Bool;
	var maxMessageSize : Long;
	var offlineSupportLevel : Long;
	var password : ACString;
	/**
	 * If the password for the server is available either via authentication in the current session or from password manager stored entries, return false. Otherwise, return true. If password is obtained from password manager, set the password member variable. Read only.
	 */
	var passwordPromptRequired : Bool;
	var performingBiff : Bool;
	var port : Long;
	/**
	 * pretty name - should be "userid on hostname" if the pref is not set.
	 */
	var prettyName : AString;
	/**
	 * real hostname of the server (if server name is changed it is stored here)
	 */
	var realHostName : ACString;
	/**
	 * real username of the server (if username is changed it is stored here)
	 */
	var realUsername : ACString;
	/**
	 * Obsolete since Gecko 1.9
	 */
	var redirectorType : String;
	var rememberPassword : Bool;
	var retentionSettings : NsIMsgRetentionSettings;
	var rootFolder : NsIMsgFolder;
	/**
	 * Read only.
	 */
	var rootMsgFolder : NsIMsgFolder;
	/**
	 * Read only.
	 */
	var searchScope : NsMsgSearchScopeValue;
	var serverBusy : Bool;
	/**
	 * Read only.
	 */
	var serverRequiresPasswordForBiff : Bool;
	/**
	 * Read only.
	 */
	var serverURI : ACString;
	var socketType : Long;
	/**
	 * Read only.
	 */
	var spamFilterPlugin : NsIMsgFilterPlugin;
	/**
	 * spam settings. Read only.
	 */
	var spamSettings : NsISpamSettings;
	/**
	 * Read only.
	 */
	var supportsDiskSpace : Bool;
	/**
	 * protocol type, that is "pop3", "imap", "nntp", "none", and so on. used to construct URLs.
	 */
	var type : ACString;
	/**
	 * userid to log into the server.
	 */
	var username : ACString;
	var useSecAuth : Bool;
	var valid : Bool;
	
	function clearAllValues() : Void;
	function clearTemporaryReturnReceiptsFilter() : Void;
	function closeCachedConnections() : Void;
	function configureTemporaryFilters(filterList:NsIMsgFilterList) : Void;
	function configureTemporaryReturnReceiptsFilter(filterList:NsIMsgFilterList) : Void;
	function displayOfflineMsg(aWindow:NsIMsgWindow) : Void;
	function equals(server:NsIMsgIncomingServer) : Bool;
	function forgetPassword() : Void;
	function forgetSessionPassword() : Void;
	function generatePrettyNameForMigration() : AString;
	function getBoolAttribute(name:String) : Bool;
	function getBoolValue(attr:String) : Bool;
	function getCharAttribute(name:String) : ACString;
	function getCharValue(attr:String) : ACString;
	function getFileValue(relpref:String, abspref:String) : NsILocalFile;
	function getFilterList(aMsgWindow:NsIMsgWindow) : NsIMsgFilterList;
	function getIntAttribute(name:String) : Long;
	function getIntValue(attr:String) : Long;
	function getMsgFolderFromURI(aFolderResource:NsIMsgFolder, aURI:ACString) : NsIMsgFolder;
	function getNewMessages(aFolder:NsIMsgFolder, aMsgWindow:NsIMsgWindow, aUrlListener:NsIUrlListener) : Void;
	function getPasswordWithUI(aPromptString:AString, aPromptTitle:AString, aMsgWindow:NsIMsgWindow, okayValue:Bool) : ACString;
	function getUnicharAttribute(name:String) : AString;
	function getUnicharValue(attr:String) : AString;
	function isNewHdrDuplicate(aNewHdr:NsIMsgDBHdr) : Bool;
	function onUserOrHostNameChanged(oldName:ACString, newName:ACString) : Void;
	function performBiff(aMsgWindow:NsIMsgWindow) : Void;
	function performExpand(aMsgWindow:NsIMsgWindow) : Void;
	function removeFiles() : Void;
	function setBoolAttribute(name:String, value:Bool) : Void;
	function setBoolValue(attr:String, value:Bool) : Void;
	function setCharAttribute(name:String, value:ACString) : Void;
	function setCharValue(attr:String, value:ACString) : Void;
	function setDefaultLocalPath(aDefaultLocalPath:NsILocalFile) : Void;
	function setFileValue(relpref:String, abspref:String, aValue:NsILocalFile) : Void;
	function setFilterList(aFilterList:NsIMsgFilterList) : Void;
	function setIntAttribute(name:String, value:Long) : Void;
	function setIntValue(attr:String, value:Long) : Void;
	function setUnicharAttribute(name:String, value:AString) : Void;
	function setUnicharValue(attr:String, value:AString) : Void;
	function shutdown() : Void;
	function storePassword() : Void;
	function toString() : AString;
	function writeToFolderCache(folderCache:NsIMsgFolderCache) : Void;
}
