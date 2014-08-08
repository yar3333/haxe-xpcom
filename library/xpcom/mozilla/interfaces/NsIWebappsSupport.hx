package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIWebappsSupport") extern class NsIWebappsSupport extends NsISupports
{
	function installApplication(title:Wstring, uri:Wstring, iconUri:Wstring, iconData:Wstring) : Void;
	function isApplicationInstalled(uri:Wstring) : Bool;
}
