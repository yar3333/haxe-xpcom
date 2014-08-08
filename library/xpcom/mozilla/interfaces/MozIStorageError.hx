package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.mozIStorageError") extern class MozIStorageError extends NsISupports
{
	/**
	 * General SQL error, or missing database
	 */
	static inline var ERROR = 1;
	/**
	 * A disk I/O error occurred.
	 */
	static inline var IOERR = 10;
	/**
	 * The database on disk is malformed.
	 */
	static inline var CORRUPT = 11;
	/**
	 * An insertion failed because the database is full.
	 */
	static inline var FULL = 13;
	/**
	 * Unable to open the database file.
	 */
	static inline var CANTOPEN = 14;
	/**
	 * The database is empty.
	 */
	static inline var EMPTY = 16;
	/**
	 * The database schema changed.
	 */
	static inline var SCHEMA = 17;
	/**
	 * A string or blob exceeds the size limit.
	 */
	static inline var TOOBIG = 18;
	/**
	 * Aborted due to a constraint violation.
	 */
	static inline var CONSTRAINT = 19;
	/**
	 * An internal logic error occurred.
	 */
	static inline var INTERNAL = 2;
	/**
	 * A data type mismatch occurred.
	 */
	static inline var MISMATCH = 20;
	/**
	 * Library used incorrectly.
	 */
	static inline var MISUSE = 21;
	/**
	 * Attempted to use OS features not supported on the host system.
	 */
	static inline var NOLFS = 22;
	/**
	 * Authorization denied.
	 */
	static inline var AUTH = 23;
	/**
	 * Auxiliary database format error.
	 */
	static inline var FORMAT = 24;
	/**
	 * The opened file is not a database.
	 */
	static inline var NOTADB = 26;
	/**
	 * Access permission denied.
	 */
	static inline var PERM = 3;
	/**
	 * A callback routine requested an abort.
	 */
	static inline var ABORT = 4;
	/**
	 * The database file is locked.
	 */
	static inline var BUSY = 5;
	/**
	 * A table in the database is locked.
	 */
	static inline var LOCKED = 6;
	/**
	 * A memory allocation failed.
	 */
	static inline var NOMEM = 7;
	/**
	 * Attempted to write to a read-only database.
	 */
	static inline var READONLY = 8;
	/**
	 * The operation was terminated by an interrupt.
	 */
	static inline var INTERRUPT = 9;
	
	/**
	 * A human readable error string with details; this may be null if no details are available. Read only.
	 */
	var message : AUTF8String;
	/**
	 * One of the error code values listed under Constants on this page.
	 */
	var result : Long;
}
