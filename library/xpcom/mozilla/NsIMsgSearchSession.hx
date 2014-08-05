package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIMsgSearchSession") extern class NsIMsgSearchSession
{
	/**
	 * Readonly:
	 */
	var searchTerms : NsISupportsArray;
	/**
	 * Readonly:
	 */
	var numSearchTerms : ULong;
	/**
	 * Readonly:
	 */
	var runningAdapter : NsIMsgSearchAdapter;
	/**
	 * Not scriptable and readonly:
	 */
	var searchParam : VoidPtr;
	/**
	 * Readonly:
	 */
	var searchType : NsMsgSearchType;
	/**
	 * Readonly:
	 */
	var numResults : Long;
	var window : NsIMsgWindow;
}
