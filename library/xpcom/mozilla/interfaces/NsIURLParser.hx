package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIURLParser") extern class NsIURLParser extends NsISupports
{
	function parseAuthority(authority:String, authorityLen:Long, usernamePos:ULong, usernameLen:Long, passwordPos:ULong, passwordLen:Long, hostnamePos:ULong, hostnameLen:Long, port:Long) : Void;
	function parseFileName(filename:String, filenameLen:Long, basenamePos:ULong, basenameLen:Long, extensionPos:ULong, extensionLen:Long) : Void;
	function parseFilePath(filepath:String, filepathLen:Long, directoryPos:ULong, directoryLen:Long, basenamePos:ULong, basenameLen:Long, extensionPos:ULong, extensionLen:Long) : Void;
	function parsePath(path:String, pathLen:Long, filepathPos:ULong, filepathLen:Long, paramPos:ULong, paramLen:Long, queryPos:ULong, queryLen:Long, refPos:ULong, refLen:Long) : Void;
	function parseServerInfo(serverinfo:String, serverinfoLen:Long, hostnamePos:ULong, hostnameLen:Long, port:Long) : Void;
	function parseURL(spec:String, specLen:Long, schemePos:ULong, schemeLen:Long, authorityPos:ULong, authorityLen:Long, pathPos:ULong, pathLen:Long) : Void;
	function parseUserInfo(userinfo:String, userinfoLen:Long, usernamePos:ULong, usernameLen:Long, passwordPos:ULong, passwordLen:Long) : Void;
}
