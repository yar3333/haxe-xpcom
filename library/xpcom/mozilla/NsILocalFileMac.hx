package xpcom.mozilla;

import xpcom.types.*;

@:native("nsILocalFileMac") extern class NsILocalFileMac extends NsILocalFile
{
	/**
	 * Use with SetFileType() to specify the signature of current process. <span class="inlineIndicator obsolete obsoleteInline" title="(Firefox 4 / Thunderbird 3.3 / SeaMonkey 2.1)">Obsolete since Gecko 2.0</span>
	 */
	static inline var CURRENT_PROCESS_CREATOR = 0x8000000;
	
	/**
	 * Returns the display name of the application bundle (usually the human readable name of the application) Read only.
	 */
	var bundleDisplayName : AString;
	/**
	 * Returns the identifier of the bundle. Read only.
	 */
	var bundleIdentifier : AUTF8String;
	/**
	 * Native code only!
	 */
	var fileCreator : OSType;
	/**
	 * Returns the combined size of both the data fork and the resource fork (if present) rather than just the size of the data fork as returned by GetFileSize() Read only.
	 */
	var fileSizeWithResFork : PRInt64;
	/**
	 * File type and creator attributes. Native code only!
	 */
	var fileType : OSType;
	
	function getCFURL() : CFURLRef;
	function getFSRef() : FSRef;
	function getFSSpec() : FSSpec;
	function initToAppWithCreatorCode(aAppCreator:OSType) : Void;
	function initWithCFURL(aCFURL:CFURLRef) : Void;
	function initWithFSRef(aFSRef:FSRefPtr) : Void;
	function initWithFSSpec(aFileSpec:FSSpecPtr) : Void;
	function isPackage() : Bool;
	function launchWithDoc(aDocToLoad:NsILocalFile, aLaunchInBackground:Bool) : Void;
	function openDocWithApp(aAppToOpenWith:NsILocalFile, aLaunchInBackground:Bool) : Void;
	function setFileTypeAndCreatorFromExtension(aExtension:String) : Void;
	function setFileTypeAndCreatorFromMIMEType(aMIMEType:String) : Void;
}
