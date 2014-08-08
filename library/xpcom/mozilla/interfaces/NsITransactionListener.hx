package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsITransactionListener") extern class NsITransactionListener extends NsISupports
{
	function didBeginBatch(aManager:NsITransactionManager, aResult:Nsresult) : Void;
	function didDo(aManager:NsITransactionManager, aTransaction:NsITransaction, aDoResult:Nsresult) : Void;
	function didEndBatch(aManager:NsITransactionManager, aResult:Nsresult) : Void;
	function didMerge(aManager:NsITransactionManager, aTopTransaction:NsITransaction, aTransactionToMerge:NsITransaction, aDidMerge:Bool, aMergeResult:Nsresult) : Void;
	function didRedo(aManager:NsITransactionManager, aTransaction:NsITransaction, aRedoResult:Nsresult) : Void;
	function didUndo(aManager:NsITransactionManager, aTransaction:NsITransaction, aUndoResult:Nsresult) : Void;
	function willBeginBatch(aManager:NsITransactionManager) : Bool;
	function willDo(aManager:NsITransactionManager, aTransaction:NsITransaction) : Bool;
	function willEndBatch(aManager:NsITransactionManager) : Bool;
	function willMerge(aManager:NsITransactionManager, aTopTransaction:NsITransaction, aTransactionToMerge:NsITransaction) : Bool;
	function willRedo(aManager:NsITransactionManager, aTransaction:NsITransaction) : Bool;
	function willUndo(aManager:NsITransactionManager, aTransaction:NsITransaction) : Bool;
}
