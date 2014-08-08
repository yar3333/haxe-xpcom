package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAnnotationService") extern class NsIAnnotationService extends NsISupports
{
	public static inline function getService() : NsIAnnotationService
	{
		return xpcom.Components.classes[cast "@mozilla.org/browser/annotation-service;1"].getService(NsIAnnotationService);
	}
	
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
	
	function setPageAnnotation(aURI:NsIURI, aName:AUTF8String, aValue:NsIVariant, aFlags:Long, aExpiration:UShort) : Void;
	function setItemAnnotation(aItemId:LongLong, aName:AUTF8String, aValue:NsIVariant, aFlags:Long, aExpiration:UShort) : Void;
	function setPageAnnotationString(aURI:NsIURI, aName:AUTF8String, aValue:AString, aFlags:Long, aExpiration:UShort) : Void;
	function setItemAnnotationString(aItemId:LongLong, aName:AUTF8String, aValue:AString, aFlags:Long, aExpiration:UShort) : Bool;
	function setPageAnnotationInt32(aURI:NsIURI, aName:AUTF8String, aValue:Long, aFlags:Long, aExpiration:UShort) : Void;
	function setItemAnnotationInt32(aItemId:LongLong, aName:AUTF8String, aValue:Long, aFlags:Long, aExpiration:UShort) : Void;
	function setPageAnnotationInt64(aURI:NsIURI, aName:AUTF8String, aValue:LongLong, aFlags:Long, aExpiration:UShort) : Void;
	function setItemAnnotationInt64(aItemId:LongLong, aName:AUTF8String, aValue:LongLong, aFlags:Long, aExpiration:UShort) : Void;
	function setPageAnnotationDouble(aURI:NsIURI, aName:AUTF8String, aValue:Float, aFlags:Long, aExpiration:UShort) : Void;
	function setItemAnnotationDouble(aItemId:LongLong, aName:AUTF8String, aValue:Float, aFlags:Long, aExpiration:UShort) : Void;
	function setPageAnnotationBinary(aURI:NsIURI, aName:AUTF8String, aData:Array<Octet>, aDataLen:ULong, aMimeType:AUTF8String, aFlags:Long, aExpiration:UShort) : Void;
	function setItemAnnotationBinary(aItemId:LongLong, aName:AUTF8String, aData:Array<Octet>, aDataLen:ULong, aMimeType:AUTF8String, aFlags:Long, aExpiration:UShort) : Void;
	function getPageAnnotation(aURI:NsIURI, aName:AUTF8String) : NsIVariant;
	function getItemAnnotation(aItemId:LongLong, aName:AUTF8String) : NsIVariant;
	function getPageAnnotationString(aURI:NsIURI, aName:AUTF8String) : AString;
	function getItemAnnotationString(aItemId:LongLong, aName:AUTF8String) : AString;
	function getPageAnnotationInt32(aURI:NsIURI, aName:AUTF8String) : Long;
	function getItemAnnotationInt32(aItemId:LongLong, aName:AUTF8String) : Long;
	function getPageAnnotationInt64(aURI:NsIURI, aName:AUTF8String) : LongLong;
	function getItemAnnotationInt64(aItemId:LongLong, aName:AUTF8String) : LongLong;
	function getPageAnnotationDouble(aURI:NsIURI, aName:AUTF8String) : Float;
	function getItemAnnotationDouble(aItemId:LongLong, aName:AUTF8String) : Float;
	function getPageAnnotationBinary(aURI:NsIURI, aName:AUTF8String, aData:Array<Octet>, aDataLen:ULong, aMimeType:AUTF8String) : Void;
	function getItemAnnotationBinary(aItemId:LongLong, aName:AUTF8String, aData:Array<Octet>, aDataLen:ULong, aMimeType:AUTF8String) : Void;
	function getPageAnnotationInfo(aURI:NsIURI, aName:AUTF8String, aFlags:PRInt32, aExpiration:UShort, aMimeType:AUTF8String, aType:UShort) : Void;
	function getItemAnnotationInfo(aItemId:LongLong, aName:AUTF8String, aFlags:Long, aExpiration:UShort, aMimeType:AUTF8String, aType:UShort) : Void;
	function getPageAnnotationType(aURI:NsIURI, aName:AUTF8String) : PRUint16;
	function getItemAnnotationType(aItemId:LongLong, aName:AUTF8String) : PRUint16;
	function getPagesWithAnnotation(name:AUTF8String, ?resultCount:ULong, results:Array<NsIURI>) : Void;
	function getItemsWithAnnotation(name:AUTF8String, ?resultCount:ULong, results:Array<LongLong>) : Void;
	function getPageAnnotationNames(aURI:NsIURI, ?count:ULong, result:Array<NsIVariant>) : Void;
	function getItemAnnotationNames(aItemId:LongLong, ?count:ULong, result:Array<NsIVariant>) : Void;
	function pageHasAnnotation(aURI:NsIURI, aName:AUTF8String) : Bool;
	function itemHasAnnotation(aItemId:LongLong, aName:AUTF8String) : Bool;
	function removePageAnnotation(aURI:NsIURI, aName:AUTF8String) : Void;
	function removeItemAnnotation(aItemId:LongLong, aName:AUTF8String) : Void;
	function removePageAnnotations(aURI:NsIURI) : Void;
	function removeItemAnnotations(aItemId:LongLong) : Void;
	function copyPageAnnotations(aSourceURI:NsIURI, aDestURI:NsIURI, aOverwriteDest:Bool) : Void;
	function copyItemAnnotations(aSourceItemId:LongLong, aDestItemId:LongLong, aOverwriteDest:Bool) : Void;
	function addObserver(aObserver:NsIAnnotationObserver) : Void;
	function removeObserver(aObserver:NsIAnnotationObserver) : Void;
	function getAnnotationURI(aURI:NsIURI, aName:AUTF8String) : NsIURI;
}
