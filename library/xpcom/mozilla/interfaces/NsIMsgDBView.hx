package xpcom.mozilla.interfaces;

import xpcom.Components;
import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIMsgDBView") extern class NsIMsgDBView extends NsISupports
{
	public static inline function createInstance() : NsIMsgDBView return Components.Constructor("@mozilla.org/messenger/msgdbview;1", Components.interfaces.nsIMsgDBView);
	
	/**
	 * Readonly: Type of view. Constants are defined in nsMsgViewType.
	 */
	var viewType : NsMsgViewTypeValue;
	/**
	 * Constants are defined in nsMsgViewFlagsType.
	 */
	var viewFlags : NsMsgViewFlagsTypeValue;
	/**
	 * The type of sort being used (i.e. author, date, status, etc). Sort types are defined in nsMsgViewSortType.
	 */
	var sortType : NsMsgViewSortTypeValue;
	/**
	 * Readonly: Constants are defined in nsMsgViewSortOrder.
	 */
	var sortOrder : NsMsgViewSortOrderValue;
	/**
	 * Readonly: The key of the first message in the current selection. nsMsgKey is defined as an unsigned long in MailNewsTypes2.idl.
	 */
	var keyForFirstSelectedMessage : NsMsgKey;
	/**
	 * Readonly: The index of the first selected message. nsMsgViewIndex is defined as a unsigned long in MailNewsTypes2.idl.
	 */
	var viewIndexForFirstSelectedMsg : NsMsgViewIndex;
	/**
	 * Readonly: The current folder.
	 */
	var msgFolder : NsIMsgFolder;
	var viewFolder : NsIMsgFolder;
	/**
	 * Readonly: URL of the first selected message.
	 */
	var URIForFirstSelectedMessage : ACString;
	/**
	 * Readonly: Header of the first selected message.
	 */
	var hdrForFirstSelectedMessage : NsIMsgDBHdr;
	/**
	 * Readonly: The number of messages currently selected.
	 */
	var numSelected : Long;
	/**
	 * Readonly: The index of the message to select after the current one is deleted. nsMsgViewIndex is defined as a unsigned long in MailNewsTypes2.idl.
	 */
	var msgToSelectAfterDelete : NsMsgViewIndex;
	/**
	 * Readonly: The index of the currently displayed message. nsMsgViewIndex is defined as a unsigned long in MailNewsTypes2.idl.
	 */
	var currentlyDisplayedMessage : NsMsgViewIndex;
	/**
	 * Suppress displaying messages. Used when the message pane is collapsed.
	 */
	var suppressMsgDisplay : Bool;
	/**
	 * Suppress command updating. Used during folder loading.
	 */
	var suppressCommandUpdating : Bool;
	/**
	 * Readonly: The current database of messages.
	 */
	var db : NsIMsgDatabase;
	/**
	 * Readonly: Does the current database support threading?
	 */
	var supportsThreading : Bool;
	/**
	 * The current search session.
	 */
	var searchSession : NsIMsgSearchSession;
	/**
	 * Readonly:
	 */
	var removeRowOnMoveOrDelete : Bool;
	/**
	 * Readonly: Use lines for size. If false kB are used.
	 */
	var usingLines : Bool;
	
	function open(folder:NsIMsgFolder, sortType:NsMsgViewSortTypeValue, sortOrder:NsMsgViewSortOrderValue, viewFlags:NsMsgViewFlagsTypeValue, count:Long) : Void;
	function openWithHdrs(aHeaders:NsISimpleEnumerator, aSortType:NsMsgViewSortTypeValue, aSortOrder:NsMsgViewSortOrderValue, aViewFlags:NsMsgViewFlagsTypeValue, aCount:Long) : Void;
	function close() : Void;
	function init(aMessengerInstance:NsIMessenger, aMsgWindow:NsIMsgWindow, aCommandUpdater:NsIMsgDBViewCommandUpdater) : Void;
	function sort(sortType:NsMsgViewSortTypeValue, sortOrder:NsMsgViewSortOrderValue) : Void;
	function doCommand(command:NsMsgViewCommandTypeValue) : Void;
	function doCommandWithFolder(command:NsMsgViewCommandTypeValue, destFolder:NsIMsgFolder) : Void;
	function getCommandStatus(command:NsMsgViewCommandTypeValue, selectable_p:Bool, selected_p:NsMsgViewCommandCheckStateValue) : Void;
	function viewNavigate(motion:NsMsgNavigationTypeValue, resultId:NsMsgKey, resultIndex:NsMsgViewIndex, threadIndex:NsMsgViewIndex, wrap:Bool) : Void;
	function navigateStatus(motion:NsMsgNavigationTypeValue) : Bool;
	function getKeyAt(index:NsMsgViewIndex) : NsMsgKey;
	function getFolderForViewIndex(index:NsMsgViewIndex) : NsIMsgFolder;
	function getURIForViewIndex(index:NsMsgViewIndex) : ACString;
	function cloneDBView(aMessengerInstance:NsIMessenger, aMsgWindow:NsIMsgWindow, aCommandUpdater:NsIMsgDBViewCommandUpdater) : NsIMsgDBView;
	function getURIsForSelection(uris:Array<String>, count:ULong) : Void;
	function getIndicesForSelection(indices:Array<NsMsgViewIndex>, count:ULong) : Void;
	function loadMessageByMsgKey(aMsgKey:NsMsgKey) : Void;
	function loadMessageByViewIndex(aIndex:NsMsgViewIndex) : Void;
	function loadMessageByUrl(aUrl:String) : Void;
	function reloadMessage() : Void;
	function reloadMessageWithAllParts() : Void;
	function selectMsgByKey(key:NsMsgKey) : Void;
	function selectFolderMsgByKey(aFolder:NsIMsgFolder, aKey:NsMsgKey) : Void;
	function onDeleteCompleted(succeeded:Bool) : Void;
	function findIndexFromKey(aMsgKey:NsMsgKey, aExpand:Bool) : NsMsgViewIndex;
	function ExpandAndSelectThreadByIndex(aIndex:NsMsgViewIndex, aAugment:Bool) : Void;
	function addColumnHandler(aColumn:AString, aHandler:NsIMsgCustomColumnHandler) : Void;
	function removeColumnHandler(aColumn:AString) : Void;
	function getColumnHandler(aColumn:AString) : NsIMsgCustomColumnHandler;
}
