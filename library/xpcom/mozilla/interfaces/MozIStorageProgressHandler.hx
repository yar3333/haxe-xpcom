package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.mozIStorageProgressHandler") extern class MozIStorageProgressHandler extends NsISupports
{
	function onProgress(aConnection:MozIStorageConnection) : Bool;
}
