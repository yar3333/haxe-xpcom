package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("mozIStorageStatement") extern class MozIStorageStatement extends MozIStorageValueArray
{
	/**
	 * Number of columns returned. Read only.
	 */
	var columnCount : ULong;
	/**
	 * Number of parameters. Read only.
	 */
	var parameterCount : ULong;
	/**
	 * The current list of named parameters, which may be set. Only available to JavaScript code. Read only.
	 */
	var params : MozIStorageStatementParams;
	/**
	 * The current row, with access to all data members by name. Available only to JavaScript code. Read only.
	 */
	var row : MozIStorageStatementRow;
	/**
	 * The current state defined by mozIStorageStatement.MOZ_STORAGE_STATEMENT_INVALID, mozIStorageStatement.MOZ_STORAGE_STATEMENT_READY, or mozIStorageStatement.MOZ_STORAGE_STATEMENT_EXECUTING. Read only.
	 */
	var state : Long;
}
