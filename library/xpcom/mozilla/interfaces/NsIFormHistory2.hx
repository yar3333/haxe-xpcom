package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIFormHistory2") extern class NsIFormHistory2 extends NsISupports
{
	/**
	 * Returns the underlying DB connection the form history module is using. Read only.
	 */
	var DBConnection : MozIStorageConnection;
	/**
	 * Returns true if the form history has any entries. Read only.
	 */
	var hasEntries : Bool;
	
	function addEntry(name:AString, value:AString) : Void;
	function entryExists(name:AString, value:AString) : Bool;
	function nameExists(name:AString) : Bool;
	function removeAllEntries() : Void;
	function removeEntriesByTimeframe(aBeginTime:LongLong, aEndTime:LongLong) : Void;
	function removeEntriesForName(name:AString) : Void;
	function removeEntry(name:AString, value:AString) : Void;
}
