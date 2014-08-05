package xpcom.mozilla;

import xpcom.types.*;

@:native("mozIStorageVacuumParticipant") extern class MozIStorageVacuumParticipant extends NsISupports
{
	/**
	 * A connection to the database file to be vacuumed.
	 */
	var databaseConnection : MozIStorageConnection;
	/**
	 * The expected page size, in bytes, for the database. The vacuum manager will try to correct the page size when the browser is idle, using this value as a target. Valid page sizes are in the range 512 to 65,536. The recommended value is mozIStorageConnection::DEFAULT_PAGE_SIZE. Note: If the database is using the WAL journal node and the current page size is not the expected one, the journal node will be changed to TRUNCATE because WAL doesn't allow page size changes. The vacuum manager will try to restore WAL mode, but this will only work reliably if the participant properly resets statements. If the attempt to restore the journal node fails, it will remain TRUNCATE.
	 */
	var expectedDatabasePageSize : Long;
}
