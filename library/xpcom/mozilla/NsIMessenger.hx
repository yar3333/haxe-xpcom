package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIMessenger") extern class NsIMessenger
{
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
}
