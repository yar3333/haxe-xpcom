package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIAnnotationService") extern class NsIAnnotationService extends NsISupports
{
	public static inline function getService() : NsIAnnotationService return Components.classes[cast "@mozilla.org/browser/annotation-service;1"].getService(Components.interfaces.nsIAnnotationService);
	
	/**
	 * For temporary data that can be discarded when the user exits. Removed at application exit.
	 */
	static inline var EXPIRE_SESSION = 0;
	/**
	 * For general page settings, things the user is interested in seeing if they come back to this page some time in the near future. Removed at 30 days.
	 */
	static inline var EXPIRE_WEEKS = 2;
	/**
	 * Something that the user will be interested in seeing in their history like favicons. If they haven't visited a page in a couple of months, they probably aren't interested in many other annotations, the positions of things, or other stuff you create, so put that in the weeks policy. Removed at 180 days.
	 */
	static inline var EXPIRE_MONTHS = 3;
	/**
	 * For data that should never expire as long as the URI is in the database.
	 */
	static inline var EXPIRE_NEVER = 4;
	/**
	 * For annotations that only live as long as the URI is in history (For example, has > 0 visits). This is only valid for page annotations.
	 */
	static inline var EXPIRE_WITH_HISTORY = 5;
	/**
	 * For short-lived temporary data that you still want to outlast a session. Removed at 7 days.
	 */
	static inline var EXPIRE_DAYS = 6;
	/**
	 * INT32 type constant.
	 */
	static inline var TYPE_INT32 = 1;
	/**
	 * DOUBLE type constant.
	 */
	static inline var TYPE_DOUBLE = 2;
	/**
	 * STRING type constant.
	 */
	static inline var TYPE_STRING = 3;
	/**
	 * BINARY type constant.
	 */
	static inline var TYPE_BINARY = 4;
	/**
	 * INT64 type constant.
	 */
	static inline var TYPE_INT64 = 5;
}
