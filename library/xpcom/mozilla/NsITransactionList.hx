package xpcom.mozilla;

import xpcom.types.*;

@:native("nsITransactionList") extern class NsITransactionList extends NsISupports
{
	/**
	 * The number of transactions contained in this list. Read only.
	 */
	var numItems : Long;
	
	function getChildListForItem(aIndex:Long) : NsITransactionList;
	function getItem(aIndex:Long) : NsITransaction;
	function getNumChildrenForItem(aIndex:Long) : Long;
	function itemIsBatch(aIndex:Long) : Bool;
}
