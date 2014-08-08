package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIMessenger") extern class NsIMessenger extends NsISupports
{
	public static inline function createInstance() : NsIMessenger return xpcom.Components.Constructor("@mozilla.org/messenger;1", xpcom.Components.interfaces.nsIMessenger);
	
	/**
	 * Unknown transaction type.
	 */
	static inline var eUnknown = 0;
	/**
	 * Delete transaction type.
	 */
	static inline var eDeleteMsg = 1;
	/**
	 * Move transaction type.
	 */
	static inline var eMoveMsg = 2;
	/**
	 * Copy transaction type.
	 */
	static inline var eCopyMsg = 3;
	
	/**
	 * Readonly: The transaction manager for this nsIMessenger instance.
	 */
	var transactionManager : NsITransactionManager;
	/**
	 * Indicates if sending messages is in progress.
	 */
	var sendingUnsentMsgs : Bool;
	/**
	 * Readonly: The URL of the last displayed message.
	 */
	var lastDisplayedMessageUri : ACString;
	/**
	 * The current index in the navigation history.
	 */
	var navigatePos : Long;
	
	function setDisplayCharset(aCharset:ACString) : Void;
	function setWindow(ptr:NsIDOMWindow, msgWindow:NsIMsgWindow) : Void;
	function openURL(aURL:ACString) : Void;
	function loadURL(ptr:NsIDOMWindow, aURL:ACString) : Void;
	function launchExternalURL(aURL:ACString) : Void;
	function canUndo() : Bool;
	function canRedo() : Bool;
	function getUndoTransactionType() : ULong;
	function getRedoTransactionType() : ULong;
	function undo(msgWindow:NsIMsgWindow) : Void;
	function redo(msgWindow:NsIMsgWindow) : Void;
	function sendUnsentMessages(aIdentity:NsIMsgIdentity, aMsgWindow:NsIMsgWindow) : Void;
	function setDocumentCharset(characterSet:ACString) : Void;
	function saveAs(aURI:ACString, aAsFile:Bool, aIdentity:NsIMsgIdentity, aMsgFilename:AString) : Void;
	function openAttachment(contentTpe:ACString, url:ACString, displayName:ACString, messageUri:ACString, isExternalAttachment:Bool) : Void;
	function saveAttachment(contentTpe:ACString, url:ACString, displayName:ACString, messageUri:ACString, isExternalAttachment:Bool) : Void;
	function saveAllAttachments(count:ULong, contentTypeArray:Array<String>, urlArray:Array<String>, displayNameArray:Array<String>, messageUriArray:Array<String>) : Void;
	function saveAttachmentToFile(aFile:NsIFile, aUrl:ACString, aMessageUri:ACString, aContentType:ACString, aListener:NsIUrlListener) : Void;
	function detachAttachment(contentTpe:String, url:String, displayName:String, messageUri:String, saveFirst:Bool, ?withoutWarning:Bool) : Void;
	function detachAllAttachments(count:ULong, contentTypeArray:Array<String>, urlArray:Array<String>, displayNameArray:Array<String>, messageUriArray:Array<String>, saveFirst:Bool, ?withoutWarning:Bool) : Void;
	function saveAttachmentToFolder(contentType:ACString, url:ACString, displayName:ACString, messageUri:ACString, aDestFolder:NsILocalFile) : NsILocalFile;
	function messageServiceFromURI(aUri:ACString) : NsIMsgMessageService;
	function msgHdrFromURI(aUri:ACString) : NsIMsgDBHdr;
	function getMsgUriAtNavigatePos(aPos:Long) : ACString;
	function getFolderUriAtNavigatePos(aPos:Long) : ACString;
	function getNavigateHistory(aCurPos:ULong, aCount:ULong, aHistory:Array<String>) : Void;
}
