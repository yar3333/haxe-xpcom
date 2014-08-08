package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIPrefBranch") extern class NsIPrefBranch extends NsISupports
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
	
	function addObserver(aDomain:String, aObserver:NsIObserver, aHoldWeak:Bool) : Void;
	function clearUserPref(aPrefName:String) : Void;
	function deleteBranch(aStartingAt:String) : Void;
	function getBoolPref(aPrefName:String) : Bool;
	function getCharPref(aPrefName:String) : String;
	function getChildList(aStartingAt:String, ?aCount:{value:ULong}, aChildArray:Array<String>) : Void;
	function getComplexValue(aPrefName:String, aType:NsIIDRef, aValue:{value:NsQIResult}) : Void;
	function getIntPref(aPrefName:String) : Long;
	function getPrefType(aPrefName:String) : Long;
	function lockPref(aPrefName:String) : Void;
	function prefHasUserValue(aPrefName:String) : Bool;
	function prefIsLocked(aPrefName:String) : Bool;
	function removeObserver(aDomain:String, aObserver:NsIObserver) : Void;
	function resetBranch(aStartingAt:String) : Void;
	function setBoolPref(aPrefName:String, aValue:Long) : Void;
	function setCharPref(aPrefName:String, aValue:String) : Void;
	function setComplexValue(aPrefName:String, aType:NsIIDRef, aValue:NsISupports) : Void;
	function setIntPref(aPrefName:String, aValue:Long) : Void;
	function unlockPref(aPrefName:String) : Void;
}
