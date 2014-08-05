package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIAutoCompleteController") extern class NsIAutoCompleteController extends NsISupports
{
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
}
