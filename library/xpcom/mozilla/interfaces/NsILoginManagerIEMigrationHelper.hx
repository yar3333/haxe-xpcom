package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsILoginManagerIEMigrationHelper") extern class NsILoginManagerIEMigrationHelper extends NsISupports
{
	function migrateAndAddLogin(aLogin:NsILoginInfo) : Void;
}
