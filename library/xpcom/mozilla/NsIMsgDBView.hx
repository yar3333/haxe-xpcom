package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIMsgDBView") extern class NsIMsgDBView
{
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
}
