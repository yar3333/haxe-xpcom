package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.mozIStorageStatement") extern class MozIStorageStatement extends MozIStorageValueArray
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
	
	function initialize(aDBConnection:MozIStorageConnection, aSQLStatement:AUTF8String) : Void;
	function finalize() : Void;
	function clone() : MozIStorageStatement;
	function getParameterName(aParamIndex:ULong) : AUTF8String;
	function getParameterIndex(aName:AUTF8String) : ULong;
	function getColumnName(aColumnIndex:ULong) : AUTF8String;
	function getColumnIndex(aName:AUTF8String) : ULong;
	function reset() : Void;
	function escapeStringForLIKE(aValue:AString, aEscapeChar:Wchar) : AString;
	function bindParameters(aParameters:MozIStorageBindingParamsArray) : Void;
	function newBindingParamsArray() : MozIStorageBindingParamsArray;
	function bindUTF8StringParameter(aParamIndex:ULong, aValue:AUTF8String) : Void;
	function bindStringParameter(aParamIndex:ULong, aValue:AString) : Void;
	function bindDoubleParameter(aParamIndex:ULong, aValue:Float) : Void;
	function bindInt32Parameter(aParamIndex:ULong, aValue:Long) : Void;
	function bindInt64Parameter(aParamIndex:ULong, aValue:LongLong) : Void;
	function bindNullParameter(aParamIndex:ULong) : Void;
	function bindBlobParameter(aParamIndex:ULong, aValue:Array<Octet>, aValueSize:ULong) : Void;
	function executeAsync(aCallback:MozIStorageStatementCallback) : MozIStoragePendingStatement;
	function executeStep() : Bool;
	function step() : Bool;
	function execute() : Void;
}
