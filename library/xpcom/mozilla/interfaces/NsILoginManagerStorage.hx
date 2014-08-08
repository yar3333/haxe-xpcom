package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsILoginManagerStorage") extern class NsILoginManagerStorage extends NsISupports
{
	/**
	 * true when a master password prompt is being shown. Read only.
	 */
	var uiBusy : Bool;
	
	function addLogin(aLogin:NsILoginInfo) : Void;
	function countLogins(aHostname:AString, aActionURL:AString, aHttpRealm:AString) : ULong;
	function findLogins(count:{value:ULong}, aHostname:AString, aActionURL:AString, aHttpRealm:AString, logins:Array<NsILoginInfo>) : Void;
	function getAllDisabledHosts(?count:{value:ULong}, hostnames:Array<Wstring>) : Void;
	function getAllEncryptedLogins(?count:{value:ULong}, logins:Array<NsILoginInfo>) : Void;
	function getAllLogins(?count:{value:ULong}, logins:Array<NsILoginInfo>) : Void;
	function getLoginSavingEnabled(aHost:AString) : Bool;
	function init() : Void;
	function initWithFile(aInputFile:NsIFile, aOutputFile:NsIFile) : Void;
	function modifyLogin(oldLogin:NsILoginInfo, newLoginData:NsISupports) : Void;
	function removeAllLogins() : Void;
	function removeLogin(aLogin:NsILoginInfo) : Void;
	function searchLogins(count:{value:ULong}, matchData:NsIPropertyBag, logins:Array<NsILoginInfo>) : Void;
	function setLoginSavingEnabled(aHost:AString, isEnabled:Bool) : Void;
}
