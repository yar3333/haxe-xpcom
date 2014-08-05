package xpcom.mozilla;

import xpcom.types.*;

@:native("nsISearchEngine") extern class NsISearchEngine extends NsISupports
{
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
}
