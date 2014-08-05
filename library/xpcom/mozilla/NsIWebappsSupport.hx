package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIWebappsSupport") extern class NsIWebappsSupport extends NsISupports
{
	function installApplication(title:Wstring, uri:Wstring, iconUri:Wstring, iconData:Wstring) : Void;
	function isApplicationInstalled(uri:Wstring) : Bool;
}
