package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIURL") extern class NsIURL extends NsIURI
{
	/**
	 * Directory portion of a URL. If the URL denotes a path to a directory and not a file, for example http://host/foo/bar/, then the Directory attribute accesses the complete /foo/bar/ portion, and the FileName is the empty string. If the trailing slash is omitted, then the Directory is /foo/ and the file is bar (that is this is a syntactic, not a semantic breakdown of the Path). And hence don't rely on this for something to be a definitely be a file. But you can get just the leading directory portion for sure. Some characters may be escaped.
	 */
	var directory : AUTF8String;
	/**
	 * File basename portion of a filename in a url. Some characters may be escaped.
	 */
	var fileBaseName : AUTF8String;
	/**
	 * File extension portion of a filename in a url. If a file extension does not exist, the empty string is returned. Some characters may be escaped.
	 */
	var fileExtension : AUTF8String;
	/**
	 * File name portion of a URL. If the URL denotes a path to a directory and not a file, for example http://host/foo/bar/, then the Directory attribute accesses the complete /foo/bar/ portion, and the FileName is the empty string. Note that this is purely based on searching for the last trailing slash. And hence don't rely on this to be a definite file. Some characters may be escaped.
	 */
	var fileName : AUTF8String;
	/**
	 * Path including the directory and file portions of a URL. For example, the filePath of "http://host/foo/bar.html#baz" is "/foo/bar.html". Some characters may be escaped.
	 */
	var filePath : AUTF8String;
	/**
	 * Parameters specified after the ; in the URL. Some characters may be escaped. Obsolete since Gecko 9.0
	 * Note: This was removed in Gecko 9.0 (Firefox 9.0 / Thunderbird 9.0 / SeaMonkey 2.6) because the semicolon is not actually valid for this purpose and should not have been specially handled.
	 */
	var param : AUTF8String;
	/**
	 * Query portion (the part after the "?") of the URL. If there isn't one, an empty string is returned. Some characters may be escaped.
	 */
	var query : AUTF8String;
}
