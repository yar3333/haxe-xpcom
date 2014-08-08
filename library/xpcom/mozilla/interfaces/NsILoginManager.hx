package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsILoginManager") extern class NsILoginManager extends NsISupports
{
	public static inline function createInstance() : NsILoginManager
	{
		return xpcom.Components.classes[cast "@mozilla.org/login-manager;1"].createInstance(NsILoginManager);
	}
	
	function addLogin(aLogin:NsILoginInfo) : Void;
	function autoCompleteSearch(aSearchString:AString, aPreviousResult:NsIAutoCompleteResult, aElement:NsIDOMHTMLInputElement) : NsIAutoCompleteResult;
	function countLogins(aHostname:AString, aActionURL:AString, aHttpRealm:AString) : ULong;
	function fillForm(aForm:NsIDOMHTMLFormElement) : Bool;
	function findLogins(count:{value:ULong}, aHostname:AString, aActionURL:AString, aHttpRealm:AString, logins:Array<NsILoginInfo>) : Void;
	function getAllDisabledHosts(?count:{value:ULong}, hostnames:Array<Wstring>) : Void;
	function getAllLogins(?count:{value:ULong}, logins:Array<NsILoginInfo>) : Void;
	function getLoginSavingEnabled(aHost:AString) : Bool;
	function modifyLogin(oldLogin:NsILoginInfo, newLoginData:NsISupports) : Void;
	function removeAllLogins() : Void;
	function removeLogin(aLogin:NsILoginInfo) : Void;
	function searchLogins(count:{value:ULong}, matchData:NsIPropertyBag, logins:Array<NsILoginInfo>) : Void;
	function setLoginSavingEnabled(aHost:AString, isEnabled:Bool) : Void;
}
