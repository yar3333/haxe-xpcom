package xpcom.mozilla;

import xpcom.types.*;

@:native("nsILoginManagerIEMigrationHelper") extern class NsILoginManagerIEMigrationHelper extends NsISupports
{
	function migrateAndAddLogin(aLogin:NsILoginInfo) : Void;
}
