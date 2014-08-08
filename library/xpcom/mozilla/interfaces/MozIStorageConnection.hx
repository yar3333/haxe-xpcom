package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.mozIStorageConnection") extern class MozIStorageConnection extends NsISupports
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
	
	function asyncClose(?aCallback:MozIStorageCompletionCallback) : Void;
	function beginTransaction() : Void;
	function beginTransactionAs(transactionType:PRInt32) : Void;
	function clone(?aReadOnly:Bool) : MozIStorageStatement;
	function close() : Void;
	function commitTransaction() : Void;
	function createAggregateFunction(aFunctionName:AUTF8String, aNumArguments:Long, aFunction:MozIStorageAggregateFunction) : Void;
	function createAsyncStatement(aSQLStatement:AUTF8String) : MozIStorageAsyncStatement;
	function createFunction(aFunctionName:AUTF8String, aNumArguments:Long, aFunction:MozIStorageFunction) : Void;
	function createStatement(aSQLStatement:AUTF8String) : MozIStorageStatement;
	function createTable(aTableName:String, aTableSchema:String) : Void;
	function executeAsync(aStatements:Array<MozIStorageBaseStatement>, aNumStatements:ULong, ?aCallback:MozIStorageStatementCallback) : MozIStoragePendingStatement;
	function executeSimpleSQL(aSQLStatement:AUTF8String) : Void;
	function indexExists(aIndexName:AUTF8String) : Bool;
	function preload() : Void;
	function removeFunction(aFunctionName:AUTF8String) : Void;
	function removeProgressHandler() : MozIStorageProgressHandler;
	function rollbackTransaction() : Void;
	function setGrowthIncrement(aIncrement:PRInt32, aDatabaseName:AUTF8String) : Void;
	function setProgressHandler(aGranularity:PRInt32, aHandler:MozIStorageProgressHandler) : MozIStorageProgressHandler;
	function tableExists(aTableName:AUTF8String) : Bool;
}
