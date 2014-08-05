package xpcom.mozilla;

import xpcom.types.*;

@:native("nsICRLManager") extern class NsICRLManager extends NsISupports
{
	/**
	 *  
	 */
	static inline var TYPE_AUTOUPDATE_TIME_BASED = 1;
	/**
	 *  
	 */
	static inline var TYPE_AUTOUPDATE_FREQ_BASED = 2;
	
	function computeNextAutoUpdateTime(info:NsICRLInfo, autoUpdateType:ULong, noOfDays:Float) : Wstring;
	function deleteCrl(crlIndex:ULong) : Void;
	function getCrls() : NsIArray;
	function importCrl(data:Array<Octet>, length:ULong, uri:NsIURI, type:ULong, doSilentDownload:Bool, crlKey:Wstring) : Void;
	function rescheduleCRLAutoUpdate() : Void;
	function updateCRLFromURL(url:Wstring, key:Wstring) : Bool;
}
