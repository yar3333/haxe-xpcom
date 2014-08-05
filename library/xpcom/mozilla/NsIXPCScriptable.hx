package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIXPCScriptable") extern class NsIXPCScriptable extends NsISupports
{
	/**
	 *  
	 */
	static inline var WANT_PRECREATE = 1 << 0;
	/**
	 *  
	 */
	static inline var WANT_CREATE = 1 << 1;
	/**
	 *  
	 */
	static inline var WANT_POSTCREATE = 1 << 2;
	/**
	 *  
	 */
	static inline var WANT_ADDPROPERTY = 1 << 3;
	/**
	 *  
	 */
	static inline var WANT_DELPROPERTY = 1 << 4;
	/**
	 *  
	 */
	static inline var WANT_GETPROPERTY = 1 << 5;
	/**
	 *  
	 */
	static inline var WANT_SETPROPERTY = 1 << 6;
	/**
	 *  
	 */
	static inline var WANT_ENUMERATE = 1 << 7;
	/**
	 *  Indicates that the object wants to have its <a class="internal" href="#newEnumerate.28.29" title="newEnumerate()">newEnumerate</a> method called.
	 */
	static inline var WANT_NEWENUMERATE = 1 << 8;
	/**
	 *  Indicates that the object wants to have its <a class="internal" href="#newResolve.28.29" title="newResolve()">newResolve</a> method called.
	 */
	static inline var WANT_NEWRESOLVE = 1 << 9;
	/**
	 *  
	 */
	static inline var WANT_CONVERT = 1 << 10;
	/**
	 *  
	 */
	static inline var WANT_FINALIZE = 1 << 11;
	/**
	 *  
	 */
	static inline var WANT_CHECKACCESS = 1 << 12;
	/**
	 *  
	 */
	static inline var WANT_CALL = 1 << 13;
	/**
	 *  
	 */
	static inline var WANT_CONSTRUCT = 1 << 14;
	/**
	 *  
	 */
	static inline var WANT_HASINSTANCE = 1 << 15;
	/**
	 *  
	 */
	static inline var WANT_TRACE = 1 << 16;
	/**
	 *  
	 */
	static inline var USE_JSSTUB_FOR_ADDPROPERTY = 1 << 17;
	/**
	 *  
	 */
	static inline var USE_JSSTUB_FOR_DELPROPERTY = 1 << 18;
	/**
	 *  
	 */
	static inline var USE_JSSTUB_FOR_SETPROPERTY = 1 << 19;
	/**
	 *  
	 */
	static inline var DONT_ENUM_STATIC_PROPS = 1 << 20;
	/**
	 *  
	 */
	static inline var DONT_ENUM_QUERY_INTERFACE = 1 << 21;
	/**
	 *  
	 */
	static inline var DONT_ASK_INSTANCE_FOR_SCRIPTABLE = 1 << 22;
	/**
	 *  
	 */
	static inline var CLASSINFO_INTERFACES_ONLY = 1 << 23;
	/**
	 *  
	 */
	static inline var ALLOW_PROP_MODS_DURING_RESOLVE = 1 << 24;
	/**
	 *  
	 */
	static inline var ALLOW_PROP_MODS_TO_PROTOTYPE = 1 << 25;
	/**
	 *  
	 */
	static inline var DONT_SHARE_PROTOTYPE = 1 << 26;
	/**
	 *  
	 */
	static inline var DONT_REFLECT_INTERFACE_NAMES = 1 << 27;
	/**
	 *  
	 */
	static inline var WANT_EQUALITY = 1 << 28;
	/**
	 *  
	 */
	static inline var WANT_OUTER_OBJECT = 1 << 29;
	/**
	 *  
	 */
	static inline var WANT_INNER_OBJECT = 1 << 30;
	/**
	 * The high order bit is RESERVED for consumers of these flags. No implementor of this interface should ever return flags with this bit set.
	 */
	static inline var RESERVED = 1 << 31;
	
	var className : String;
	/**
	 * The bitwise or'd set of flags (define below) that indicate the behavior of this object.
	 */
	var scriptableFlags : PRUint32;
}
