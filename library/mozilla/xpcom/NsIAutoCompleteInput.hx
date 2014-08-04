package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIAutoCompleteInput") extern class NsIAutoCompleteInput extends NsISupports
{
	/**
	 * If a search result has its defaultIndex set, this will optionally try to complete the text in the textbox to the entire text of the result at the default index as the user types. This means that auto-fill is enabled.
	 */
	var completeDefaultIndex : Bool;
	/**
	 * If true, the text in the text field will be autocompleted as the user selects from the popup list.
	 */
	var completeSelectedIndex : Bool;
	/**
	 * If true, the event that rolls up the popup should be consumed by the popup itself. If false, the rollup event will be dispatched. Read only.
	 */
	var consumeRollupEvent : Bool;
	/**
	 * The controller. Read only.
	 */
	var controller : NsIAutoCompleteController;
	/**
	 * true if auto-complete is currently disabled; otherwise false.
	 */
	var disableAutoComplete : Bool;
	/**
	 * If true, the text field automatically completes to the default result whenever the user hits the enter key or the text field loses focus.
	 */
	var forceComplete : Bool;
	/**
	 * The maximum number of rows to display in the autocomplete suggestion popup.
	 */
	var maxRows : ULong;
	/**
	 * Specifies a minimum number of search results that must be available before the autocomplete popup will open.
	 */
	var minResultsForPopup : ULong;
	/**
	 * The view in which results will be displayed.Read only.
	 */
	var popup : NsIAutoCompletePopup;
	/**
	 * Indicates whether or not the popup view is already open.
	 */
	var popupOpen : Bool;
	/**
	 * The number of autocomplete sessions to search. Read only.
	 */
	var searchCount : ULong;
	/**
	 * An additional parameter used for configuring searches.
	 */
	var searchParam : AString;
	/**
	 * The ending index of the current selection in the text field. Read only.
	 */
	var selectionEnd : Long;
	/**
	 * The starting index of the current selection in the text field. Read only.
	 */
	var selectionStart : Long;
	/**
	 * If true, a column is added to the popup, showing the comment for each autocomplete result.
	 */
	var showCommentColumn : Bool;
	/**
	 * If true, a column is added to the popup, showing an additional image for each autocomplete result.
	 */
	var showImageColumn : Bool;
	/**
	 * The value of the text in the autocomplete text field.
	 */
	var textValue : AString;
	/**
	 * The number of milliseconds after a keystroke before a search begins.
	 */
	var timeout : ULong;
}
