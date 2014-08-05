package xpcom.mozilla;

import xpcom.types.*;

@:native("nsITransactionManager") extern class NsITransactionManager extends NsISupports
{
	/**
	 * Sets the maximum number of transaction items the transaction manager will maintain at any time. This is commonly referred to as the number of levels of undo. A value of -1 means no limit. A value of zero means the transaction manager will execute each transaction, then immediately release all references it has to the transaction without pushing it on the undo stack. A value greater than zero indicates the max number of transactions that can exist at any time on both the undo and redo stacks. This method will prune the necessary number of transactions on the undo and redo stacks if the value specified is less than the number of items that exist on both the undo and redo stacks.
	 */
	var maxTransactionCount : Long;
	/**
	 * The number of items on the redo stack. Read only.
	 */
	var numberOfRedoItems : Long;
	/**
	 * The number of items on the undo stack. Read only.
	 */
	var numberOfUndoItems : Long;
	
	function AddListener(aListener:NsITransactionListener) : Void;
	function beginBatch() : Void;
	function clear() : Void;
	function doTransaction(aTransaction:NsITransaction) : Void;
	function endBatch() : Void;
	function getRedoList() : NsITransactionList;
	function getUndoList() : NsITransactionList;
	function peekRedoStack() : NsITransaction;
	function peekUndoStack() : NsITransaction;
	function redoTransaction() : Void;
	function RemoveListener(aListener:NsITransactionListener) : Void;
	function undoTransaction() : Void;
}
