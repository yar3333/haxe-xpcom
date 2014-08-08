package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIURLParser") extern class NsIURLParser extends NsISupports
{
	function parseAuthority(authority:String, authorityLen:Long, usernamePos:{value:ULong}, usernameLen:{value:Long}, passwordPos:{value:ULong}, passwordLen:{value:Long}, hostnamePos:{value:ULong}, hostnameLen:{value:Long}, port:{value:Long}) : Void;
	function parseFileName(filename:String, filenameLen:Long, basenamePos:{value:ULong}, basenameLen:{value:Long}, extensionPos:{value:ULong}, extensionLen:{value:Long}) : Void;
	function parseFilePath(filepath:String, filepathLen:Long, directoryPos:{value:ULong}, directoryLen:{value:Long}, basenamePos:{value:ULong}, basenameLen:{value:Long}, extensionPos:{value:ULong}, extensionLen:{value:Long}) : Void;
	function parsePath(path:String, pathLen:Long, filepathPos:{value:ULong}, filepathLen:{value:Long}, paramPos:{value:ULong}, paramLen:{value:Long}, queryPos:{value:ULong}, queryLen:{value:Long}, refPos:{value:ULong}, refLen:{value:Long}) : Void;
	function parseServerInfo(serverinfo:String, serverinfoLen:Long, hostnamePos:{value:ULong}, hostnameLen:{value:Long}, port:{value:Long}) : Void;
	function parseURL(spec:String, specLen:Long, schemePos:{value:ULong}, schemeLen:{value:Long}, authorityPos:{value:ULong}, authorityLen:{value:Long}, pathPos:{value:ULong}, pathLen:{value:Long}) : Void;
	function parseUserInfo(userinfo:String, userinfoLen:Long, usernamePos:{value:ULong}, usernameLen:{value:Long}, passwordPos:{value:ULong}, passwordLen:{value:Long}) : Void;
}
