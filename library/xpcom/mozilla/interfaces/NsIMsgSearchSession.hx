package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIMsgSearchSession") extern class NsIMsgSearchSession extends NsISupports
{
	static inline var BooleanOR = 0;
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
	
	function addSearchTerm(attrib:NsMsgSearchAttribValue, op:NsMsgSearchOpValue, value:NsIMsgSearchValue, BooleanAND:Bool, arbitraryHeader:String) : Void;
	function createTerm() : NsIMsgSearchTerm;
	function appendTerm(term:NsIMsgSearchTerm) : Void;
	function registerListener(listener:NsIMsgSearchNotify) : Void;
	function unregisterListener(listener:NsIMsgSearchNotify) : Void;
	function getNthSearchTerm(whichTerm:Long, attrib:NsMsgSearchAttribValue, op:NsMsgSearchOpValue, value:NsIMsgSearchValue) : Void;
	function countSearchScopes() : Long;
	function getNthSearchScope(which:Long, scopeId:{value:NsMsgSearchScopeValue}, folder:{value:NsIMsgFolder}) : Void;
	function addScopeTerm(scope:NsMsgSearchScopeValue, folder:NsIMsgFolder) : Void;
	function addDirectoryScopeTerm(scope:NsMsgSearchScopeValue) : Void;
	function clearScopes() : Void;
	function ScopeUsesCustomHeaders(scope:NsMsgSearchScopeValue, selection:VoidPtr, forFilters:Bool) : Bool;
	function IsStringAttribute(attrib:NsMsgSearchAttribValue) : Bool;
	function AddAllScopes(attrib:NsMsgSearchScopeValue) : Void;
	function search(aWindow:NsIMsgWindow) : Void;
	function interruptSearch() : Void;
	function pauseSearch() : Void;
	function resumeSearch() : Void;
	function SetSearchParam(type:NsMsgSearchType, param:VoidPtr) : NsMsgSearchType;
	function AddResultElement(element:NsMsgResultElement) : Void;
	function MatchHdr(aMsgHdr:NsIMsgDBHdr, aDatabase:NsIMsgDatabase) : Bool;
	function addSearchHit(header:NsIMsgDBHdr, folder:NsIMsgFolder) : Void;
}
