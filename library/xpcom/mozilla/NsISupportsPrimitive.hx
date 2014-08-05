package xpcom.mozilla;

import xpcom.types.*;

@:native("nsISupportsPrimitive") extern class NsISupportsPrimitive extends NsISupports
{
	/**
	 * Corresponding to <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsISupportsID" title="">nsISupportsID</a></code>.
	 */
	static inline var TYPE_ID = 1;
	/**
	 * Corresponding to <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsISupportsCString" title="">nsISupportsCString</a></code>.
	 */
	static inline var TYPE_CSTRING = 2;
	/**
	 * Corresponding to <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsISupportsString" title="">nsISupportsString</a></code>.
	 */
	static inline var TYPE_STRING = 3;
	/**
	 * Corresponding to <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsISupportsPRBool" title="">nsISupportsPRBool</a></code>.
	 */
	static inline var TYPE_PRBOOL = 4;
	/**
	 * Corresponding to <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsISupportsPRUint8" title="">nsISupportsPRUint8</a></code>.
	 */
	static inline var TYPE_PRUINT8 = 5;
	/**
	 * Corresponding to <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsISupportsPRUint16" title="">nsISupportsPRUint16</a></code>.
	 */
	static inline var TYPE_PRUINT16 = 6;
	/**
	 * Corresponding to <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsISupportsPRUint32" title="">nsISupportsPRUint32</a></code>.
	 */
	static inline var TYPE_PRUINT32 = 7;
	/**
	 * Corresponding to <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsISupportsPRUint64" title="">nsISupportsPRUint64</a></code>.
	 */
	static inline var TYPE_PRUINT64 = 8;
	/**
	 * Corresponding to <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsISupportsPRTime" title="">nsISupportsPRTime</a></code>.
	 */
	static inline var TYPE_PRTIME = 9;
	/**
	 * Corresponding to <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsISupportsChar" title="">nsISupportsChar</a></code>.
	 */
	static inline var TYPE_CHAR = 10;
	/**
	 * Corresponding to <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsISupportsPRInt16" title="">nsISupportsPRInt16</a></code>.
	 */
	static inline var TYPE_PRINT16 = 11;
	/**
	 * Corresponding to <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsISupportsPRInt32" title="">nsISupportsPRInt32</a></code>.
	 */
	static inline var TYPE_PRINT32 = 12;
	/**
	 * Corresponding to <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsISupportsPRInt64" title="">nsISupportsPRInt64</a></code>.
	 */
	static inline var TYPE_PRINT64 = 13;
	/**
	 * Corresponding to <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsISupportsFloat" title="">nsISupportsFloat</a></code>.
	 */
	static inline var TYPE_FLOAT = 14;
	/**
	 * Corresponding to <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsISupportsDouble" title="">nsISupportsDouble</a></code>.
	 */
	static inline var TYPE_DOUBLE = 15;
	/**
	 * Corresponding to <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsISupportsVoid" title="">nsISupportsVoid</a></code>.
	 */
	static inline var TYPE_VOID = 16;
	/**
	 * Corresponding to <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsISupportsInterfacePointer" title="">nsISupportsInterfacePointer</a></code>.
	 */
	static inline var TYPE_INTERFACE_POINTER = 17;
	
	/**
	 * This attribute provides access to the type represented by the nsISupportsPrimitive instance.
	 */
	var type : UShort;
}
