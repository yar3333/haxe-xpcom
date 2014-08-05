package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDOMUserDataHandler") extern class NsIDOMUserDataHandler extends NsISupports
{
	/**
	 * The node was cloned.
	 */
	static inline var NODE_CLONED = 1;
	/**
	 * The node was cloned into a new document.
	 */
	static inline var NODE_IMPORTED = 2;
	/**
	 * Unimplemented
	 */
	static inline var NODE_DELETED = 3;
	/**
	 * Unimplemented
	 */
	static inline var NODE_RENAMED = 4;
	/**
	 *  The node was adopted into a new document.
	 */
	static inline var NODE_ADOPTED = 5;
}
