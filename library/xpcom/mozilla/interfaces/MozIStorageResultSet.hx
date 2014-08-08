package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.mozIStorageResultSet") extern class MozIStorageResultSet extends NsISupports
{
	function getNextRow() : MozIStorageRow;
}
