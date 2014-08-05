package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIMessenger") extern class NsIMessenger extends NsISupports
{
	public static inline function createInstance() : NsIMessenger return Components.Constructor("@mozilla.org/messenger;1", Components.interfaces.nsIMessenger);
	
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
}
