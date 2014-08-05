package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIMsgSearchSession") extern class NsIMsgSearchSession extends NsISupports
{
	/**
	 *  
	 */
	static inline var BooleanOR = 0;
	/**
	 *  
	 */
	static inline var BooleanAND = 1;
	
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
