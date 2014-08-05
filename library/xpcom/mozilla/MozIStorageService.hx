package xpcom.mozilla;

import xpcom.types.*;

@:native("mozIStorageService") extern class MozIStorageService extends NsISupports
{
	function backupDatabaseFile(aDBFile:NsIFile, aBackupFileName:AString, ?aFile:NsIFile, aBackupParentDirectory:String) : NsIFile;
	function openDatabase(aDatabaseFile:NsIFile) : MozIStorageConnection;
	function openSpecialDatabase(aStorageKey:String) : MozIStorageConnection;
	function openUnsharedDatabase(aDatabaseFile:NsIFile) : MozIStorageConnection;
}
