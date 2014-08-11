package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAutoCompleteController") extern class NsIAutoCompleteController extends NsISupports
{
	public static inline function getService() : NsIAutoCompleteController
	{
		return xpcom.Components.classes[cast "@mozilla.org/autocomplete/controller;1"].getService(NsIAutoCompleteController);
	}
	
	/**
	 * Default status.
	 */
	static inline var STATUS_NONE = 1;
	/**
	 * Searching for matches.
	 */
	static inline var STATUS_SEARCHING = 2;
	/**
	 * Search completed but found no matches.
	 */
	static inline var STATUS_COMPLETE_NO_MATCH = 3;
	/**
	 * Search completed and found matches.
	 */
	static inline var STATUS_COMPLETE_MATCH = 4;
	
	/**
	 * Either the XUL autocomplete textbox that is currently being controlled, or a form fill controller that handles website form history.
	 */
	var input : NsIAutoCompleteInput;
	/**
	 * The number of matches. Read only.
	 */
	var matchCount : ULong;
	/**
	 * State which indicates the status of possible ongoing searches. Read only.
	 */
	var searchStatus : UShort;
	/**
	 * Get or set the current search string.
	 * Note: Setting this attribute will not initiate a search.
	 */
	var searchString : AString;
	
	function getCommentAt(index:Long) : AString;
	function getImageAt(index:Long) : AString;
	function getLabelAt(index:Long) : AString;
	function getStyleAt(index:Long) : AString;
	function getValueAt(index:Long) : AString;
	function handleDelete() : Bool;
	function handleEndComposition() : Void;
	function handleEnter(aIsPopupSelection:Bool) : Bool;
	function handleEscape() : Bool;
	function handleKeyNavigation(key:ULong) : Bool;
	function handleStartComposition() : Void;
	function handleTab() : Void;
	function handleText() : Void;
	function setSearchString(aSearchString:AString) : Void;
	function startSearch(searchString:AString) : Void;
	function stopSearch() : Void;
}
