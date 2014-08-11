package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsISearchEngine") extern class NsISearchEngine extends NsISupports
{
	static inline var TYPE_MOZSEARCH = 1;
	static inline var TYPE_SHERLOCK = 2;
	static inline var TYPE_OPENSEARCH = 3;
	/**
	 * Data type is XML
	 */
	static inline var DATA_XML = 1;
	/**
	 * Data type is Text.
	 */
	static inline var DATA_TEXT = 2;
	
	/**
	 * An optional shortcut alias for the engine. When non-null, this is a unique identifier.
	 */
	var alias : AString;
	/**
	 * A text description describing the engine. Read only.
	 */
	var description : AString;
	/**
	 * Whether the engine should be hidden from the user.
	 */
	var hidden : Bool;
	/**
	 * A nsIURI corresponding to the engine's icon, stored locally. May be null. Read only.
	 */
	var iconURI : NsIURI;
	/**
	 * The display name of the search engine. This is a unique identifier. Read only.
	 */
	var name : AString;
	/**
	 * A URL string pointing to the engine's search form. Read only.
	 */
	var searchForm : AString;
	/**
	 * The search engine type. Read only.
	 */
	var type : Long;
	
	function addParam(name:AString, value:AString, responseType:AString) : Void;
	function getSubmission(data:AString, ?responseType:AString, ?purpose:AString) : NsISearchSubmission;
	function supportsResponseType(responseType:AString) : Bool;
}
