package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIFileProtocolHandler") extern class NsIFileProtocolHandler extends NsIProtocolHandler
{
	function getFileFromURLSpec(url:AUTF8String) : NsIFile;
	function getURLSpecFromActualFile(file:NsIFile) : AUTF8String;
	function getURLSpecFromDir(file:NsIFile) : AUTF8String;
	function getURLSpecFromFile(file:NsIFile) : AUTF8String;
	function newFileURI(aFile:NsIFile) : NsIURI;
	function readURLFile(file:NsIFile) : NsIURI;
}
