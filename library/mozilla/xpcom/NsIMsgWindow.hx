package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIMsgWindow") extern class NsIMsgWindow extends NsISupports
{
	/**
	 * This allows the backend code to send commands to the UI, such as clearMsgPane.
	 */
	var windowCommands : NsIMsgWindowCommands;
	/**
	 * This allows the backend code to send status feedback to the UI.
	 */
	var statusFeedback : NsIMsgStatusFeedback;
	/**
	 * This allows the backend code to send message header information to the UI.
	 */
	var msgHeaderSink : NsIMsgHeaderSink;
	/**
	 * This is used to track undo/redo transactions.
	 */
	var transactionManager : NsITransactionManager;
	/**
	 * This is used to track the folder currently open in the UI.
	 */
	var openFolder : NsIMsgFolder;
	/**
	 * This is used to track the chrome window's nsIDocShell object. You don't normally need to set this, instead set the domWindow property instead.
	 */
	var rootDocShell : NsIDocShell;
	/**
	 * Readonly: This retrieves the nsIDocShell object for the message pane. You should not store this in a global variable.
	 */
	var messageWindowDocShell : NsIDocShell;
	/**
	 * These are currently used to set notification callbacks on protocol channels to handle things like bad cert exceptions.
	 */
	var notificationCallbacks : NsIInterfaceRequestor;
	/**
	 * Readonly: This is the equivalent of calling GetInterface on the rootDocShell object.
	 */
	var promptDialog : NsIPrompt;
	/**
	 * This is used to track the character set of the currently displayed message. If set to an alias, the actual character set is returned.
	 */
	var mailCharacterSet : ACString;
	/**
	 * Remember the message's charset was overridden, so it can be inherited (e.g for quoting).
	 */
	var charsetOverride : Bool;
	/**
	 * Check if a running url been stopped. If you are checking this flag, you need to clear it before you start your operation since there's no convenient place to clear it.
	 */
	var stopped : Bool;
	/**
	 * The message window's global chrome window object. Set this to initialize the rootDocShell.
	 */
	var domWindow : NsIDOMWindow;
}
