package xpcom.mozilla;

import xpcom.types.*;

@:native("mozIStorageConnection") extern class MozIStorageConnection extends NsISupports
{
	/**
	 * Indicates if the connection is open and ready to use. This will be false if the connection failed to open, or it has been closed. Read only.
	 */
	var connectionReady : Bool;
	/**
	 * The current database nsIFile. null if the database connection refers to an in-memory database. Read only.
	 */
	var databaseFile : NsIFile;
	/**
	 * The last SQLite error code that occurred. Read only.
	 * Note: This is not reliable if you are using asynchronous statements or if you are using the connection on multiple threads.
	 */
	var lastError : Long;
	/**
	 * The English error string reported by the SQLite library for the last SQLite operation. Read only.
	 * Note: This is not reliable if you are using asynchronous statements or if you are using the connection on multiple threads.
	 */
	var lastErrorString : AUTF8String;
	/**
	 * The row ID from the last SQL INSERT operation. Read only.
	 * Note: This is not reliable if you are using asynchronous statements or if you are using the connection on multiple threads.
	 */
	var lastInsertRowID : LongLong;
	/**
	 * The schema version of the database. This should not be used until the database is ready. The version will be reported as 0 if it is not set.
	 */
	var schemaVersion : Long;
	/**
	 * Returns true if there is a transaction in progress on the database. Otherwise returns false. Read only.
	 */
	var transactionInProgress : Bool;
}
