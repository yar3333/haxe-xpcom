package xpcom.mozilla;

import xpcom.types.*;

@:native("nsITransaction") extern class NsITransaction extends NsISupports
{
	/**
	 * The transaction's transient state. This attribute is checked by the transaction manager after the transaction's Execute() method is called. If the transient state is false, a reference to the transaction is held by the transaction manager so that the transactions' undoTransaction() and redoTransaction() methods can be called. If the transient state is true, the transaction manager returns immediately after the transaction's doTransaction() method is called, no references to the transaction are maintained. Transient transactions cannot be undone or redone by the transaction manager. Read only.
	 */
	var isTransient : Bool;
}
