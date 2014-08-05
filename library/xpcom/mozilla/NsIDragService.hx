package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDragService") extern class NsIDragService extends NsISupports
{
	/**
	 * No action.
	 */
	static inline var DRAGDROP_ACTION_NONE = 0;
	/**
	 * The drag and drop operation should copy the object.
	 */
	static inline var DRAGDROP_ACTION_COPY = 1;
	/**
	 * The drag and drop operation should move the object.
	 */
	static inline var DRAGDROP_ACTION_MOVE = 2;
	/**
	 * The drag and drop operation should link the object.
	 */
	static inline var DRAGDROP_ACTION_LINK = 4;
	/**
	 * The action is not initialized. 
	 */
	static inline var DRAGDROP_ACTION_UNINITIALIZED = 64;
}
