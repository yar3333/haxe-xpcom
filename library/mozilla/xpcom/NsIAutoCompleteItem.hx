package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIAutoCompleteItem") extern class NsIAutoCompleteItem extends NsISupports
{
	/**
	 * Class name used to define some style through css like the colors, an icon url, and so on.
	 */
	var className : String;
	/**
	 * An extra comment that will be displayed next to the value but that will not be part of the value itself.
	 */
	var comment : Wstring;
	/**
	 * Parameter use by the search engine.
	 */
	var param : NsISupports;
	/**
	 * The result value using AString to avoid excess allocations.
	 */
	var value : AString;
}
