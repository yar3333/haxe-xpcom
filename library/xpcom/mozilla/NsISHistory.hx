package xpcom.mozilla;

import xpcom.types.*;

@:native("nsISHistory") extern class NsISHistory extends NsISupports
{
	/**
	 * The number of toplevel documents currently available in session history. Read only.
	 */
	var count : Long;
	/**
	 * The index of the current document in session history. Read only.
	 */
	var index : Long;
	/**
	 * Used to Get/Set the maximum number of toplevel documents, session history can hold for each instance.
	 */
	var maxLength : Long;
	/**
	 * The index of the last document that started to load that is not yet finished loading. When the document finishes loading the value -1 is returned. Read only.
	 */
	var requestedIndex : Long;
	/**
	 * Called to obtain a enumerator for all the documents stored in session history. The enumerator object thus returned by this method can be traversed using nsISimpleEnumerator.
	 * To access individual history entries of the enumerator, perform the following steps:
	 * Call GetSHistoryEnumerator() to obtain handle the nsISimpleEnumerator object.
	 * Use nsISimpleEnumerator.GetNext() on the object returned by step #1 to obtain handle to the next object in the list. The object returned by this step is of type nsISupports.
	 * Perform a QueryInterface on the object returned by step #2 to nsISHEntry.
	 * Use nsISHEntry to access properties of each history entry.
	 * Read only.
	 */
	var SHistoryEnumerator : NsISimpleEnumerator;
}
