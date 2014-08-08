package xpcom.mozilla.interfaces;

import xpcom.Components;
import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsILoginManager") extern class NsILoginManager extends NsISupports
{
	public static inline function createInstance() : NsILoginManager return Components.Constructor("@mozilla.org/login-manager;1", Components.interfaces.nsILoginManager);
	
	function addLogin(aLogin:NsILoginInfo) : Void;
	function autoCompleteSearch(aSearchString:AString, aPreviousResult:NsIAutoCompleteResult, aElement:NsIDOMHTMLInputElement) : NsIAutoCompleteResult;
	function countLogins(aHostname:AString, aActionURL:AString, aHttpRealm:AString) : ULong;
	function fillForm(aForm:NsIDOMHTMLFormElement) : Bool;
	function findLogins(count:ULong, aHostname:AString, aActionURL:AString, aHttpRealm:AString, logins:Array<NsILoginInfo>) : Void;
	function getAllDisabledHosts(?count:ULong, hostnames:Array<Wstring>) : Void;
	function getAllLogins(?count:ULong, logins:Array<NsILoginInfo>) : Void;
	function getLoginSavingEnabled(aHost:AString) : Bool;
	function modifyLogin(oldLogin:NsILoginInfo, newLoginData:NsISupports) : Void;
	function removeAllLogins() : Void;
	function removeLogin(aLogin:NsILoginInfo) : Void;
	function searchLogins(count:ULong, matchData:NsIPropertyBag, logins:Array<NsILoginInfo>) : Void;
	function setLoginSavingEnabled(aHost:AString, isEnabled:Bool) : Void;
}
