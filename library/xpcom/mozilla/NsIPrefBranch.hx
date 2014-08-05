package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIPrefBranch") extern class NsIPrefBranch extends NsISupports
{
	/**
	 * long
	 */
	static inline var PREF_INVALID = 0;
	/**
	 * long data type.
	 */
	static inline var PREF_STRING = 32;
	/**
	 * long data type.
	 */
	static inline var PREF_INT = 64;
	/**
	 * long data type.
	 */
	static inline var PREF_BOOL = 128;
	
	/**
	 * Called to get the root on which this branch is based, such as "browser.startup." Read only.
	 */
	var root : String;
}
