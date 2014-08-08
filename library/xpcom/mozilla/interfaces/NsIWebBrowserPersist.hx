package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIWebBrowserPersist") extern class NsIWebBrowserPersist extends NsICancelable
{
	public static inline function createInstance() : NsIWebBrowserPersist
	{
		return xpcom.Components.classes[cast "@mozilla.org/embedding/browser/nsWebBrowser;1"].createInstance(NsIWebBrowserPersist);
	}
	
	/**
	 * No special persistence behavior.
	 */
	static inline var PERSIST_FLAGS_NONE = 0;
	/**
	 * Only use cached data (could result in failure if data is not cached).
	 */
	static inline var PERSIST_FLAGS_FROM_CACHE = 1;
	/**
	 * Bypass the cached data.
	 */
	static inline var PERSIST_FLAGS_BYPASS_CACHE = 2;
	/**
	 * Ignore any redirected data (usually adverts).
	 */
	static inline var PERSIST_FLAGS_IGNORE_REDIRECTED_DATA = 4;
	/**
	 * Ignore iframe content (usually adverts).
	 */
	static inline var PERSIST_FLAGS_IGNORE_IFRAMES = 8;
	/**
	 * Do not run the incoming data through a content converter for example to decompress it.
	 */
	static inline var PERSIST_FLAGS_NO_CONVERSION = 16;
	/**
	 * Replace existing files on the disk (use with due diligence!)
	 */
	static inline var PERSIST_FLAGS_REPLACE_EXISTING_FILES = 32;
	/**
	 * Don't modify or add base tags.
	 */
	static inline var PERSIST_FLAGS_NO_BASE_TAG_MODIFICATIONS = 64;
	/**
	 * Make changes to original DOM rather than cloning nodes.
	 */
	static inline var PERSIST_FLAGS_FIXUP_ORIGINAL_DOM = 128;
	/**
	 * Fix links relative to destination location (not origin)
	 */
	static inline var PERSIST_FLAGS_FIXUP_LINKS_TO_DESTINATION = 256;
	/**
	 * Do not make any adjustments to links.
	 */
	static inline var PERSIST_FLAGS_DONT_FIXUP_LINKS = 512;
	/**
	 * Force serialization of output (one file at a time; not concurrent)
	 */
	static inline var PERSIST_FLAGS_SERIALIZE_OUTPUT = 1024;
	/**
	 * Don't make any adjustments to filenames.
	 */
	static inline var PERSIST_FLAGS_DONT_CHANGE_FILENAMES = 2048;
	/**
	 * Fail on broken in-line links.
	 */
	static inline var PERSIST_FLAGS_FAIL_ON_BROKEN_LINKS = 4096;
	/**
	 * Automatically cleanup after a failed or cancelled operation, deleting all created files and directories. This flag does nothing for failed upload operations to remote servers.
	 */
	static inline var PERSIST_FLAGS_CLEANUP_ON_FAILURE = 8192;
	/**
	 * Let the WebBrowserPersist decide whether the incoming data is encoded and whether it needs to go through a content converter, for example to decompress it. 
	 */
	static inline var PERSIST_FLAGS_AUTODETECT_APPLY_CONVERSION = 16384;
	/**
	 * Append the downloaded data to the target file. This can only be used when persisting to a local file. 
	 */
	static inline var PERSIST_FLAGS_APPEND_TO_FILE = 32768;
	/**
	 * Force relevant cookies to be sent with this load even if normally they wouldn't be. 
	 */
	static inline var PERSIST_FLAGS_FORCE_ALLOW_COOKIES = 65536;
	/**
	 * Persister is ready to save data.
	 */
	static inline var PERSIST_STATE_READY = 1;
	/**
	 * Persister is saving data.
	 */
	static inline var PERSIST_STATE_SAVING = 2;
	/**
	 * Persister has finished saving data.
	 */
	static inline var PERSIST_STATE_FINISHED = 3;
	/**
	 * Output only the current selection as opposed to the whole document.
	 */
	static inline var ENCODE_FLAGS_SELECTION_ONLY = 1;
	/**
	 * For plain text output. Convert html to plain text that looks like the html. Implies wrap (except inside <pre>), since html wraps. HTML output: always do prettyprinting, ignoring existing formatting.
	 */
	static inline var ENCODE_FLAGS_FORMATTED = 2;
	/**
	 * Output without formatting or wrapping the content. This flag may be used to preserve the original formatting as much as possible.
	 */
	static inline var ENCODE_FLAGS_RAW = 4;
	/**
	 * Output only the body section, no HTML tags.
	 */
	static inline var ENCODE_FLAGS_BODY_ONLY = 8;
	/**
	 * Wrap even if when not doing formatted output (for example for text fields).
	 */
	static inline var ENCODE_FLAGS_PREFORMATTED = 16;
	/**
	 * Wrap documents at the specified column.
	 */
	static inline var ENCODE_FLAGS_WRAP = 32;
	/**
	 * For plain text output. Output for format flowed (RFC 2646). This is used when converting to text for mail sending. This differs just slightly but in an important way from normal formatted, and that is that lines are space stuffed. This can't (correctly) be done later.
	 */
	static inline var ENCODE_FLAGS_FORMAT_FLOWED = 64;
	/**
	 * Convert links to absolute links where possible.
	 */
	static inline var ENCODE_FLAGS_ABSOLUTE_LINKS = 128;
	/**
	 * Attempt to encode entities standardized at W3C (HTML, MathML, and so on.). This is a catch-all flag for documents with mixed contents. Beware of interoperability issues. See below for other flags which might likely do what you want.
	 */
	static inline var ENCODE_FLAGS_ENCODE_W3C_ENTITIES = 256;
	/**
	 * Output with carriage return line breaks. May also be combined with ENCODE_FLAGS_LF_LINEBREAKS and if neither is specified, the platform default format is used.
	 */
	static inline var ENCODE_FLAGS_CR_LINEBREAKS = 512;
	/**
	 * Output with linefeed line breaks. May also be combined with ENCODE_FLAGS_CR_LINEBREAKS and if neither is specified, the platform default format is used.
	 */
	static inline var ENCODE_FLAGS_LF_LINEBREAKS = 1024;
	/**
	 * For plain text output. Output the content of noscript elements.
	 */
	static inline var ENCODE_FLAGS_NOSCRIPT_CONTENT = 2048;
	/**
	 * For plain text output. Output the content of noframes elements.
	 */
	static inline var ENCODE_FLAGS_NOFRAMES_CONTENT = 4096;
	/**
	 * Encode basic entities, for example output   instead of character code 0xa0. The basic set is just   & < > " for interoperability with older products that don't support α and friends.
	 */
	static inline var ENCODE_FLAGS_ENCODE_BASIC_ENTITIES = 8192;
	/**
	 * Encode Latin1 entities. This includes the basic set and accented letters between 128 and 255.
	 */
	static inline var ENCODE_FLAGS_ENCODE_LATIN1_ENTITIES = 16384;
	/**
	 * Encode HTML4 entities. This includes the basic set, accented letters, Greek letters and certain special markup symbols.
	 */
	static inline var ENCODE_FLAGS_ENCODE_HTML_ENTITIES = 32768;
	
	/**
	 * Current state of the persister object. Read only.
	 */
	var currentState : ULong;
	/**
	 * Flags governing how data is fetched and saved from the network. It is best to set this value explicitly unless you are prepared to accept the default values.
	 */
	var persistFlags : ULong;
	/**
	 * Callback listener for progress notifications. The object that the embbedder supplies may also implement nsIInterfaceRequestor and be prepared to return nsIAuthPrompt or other interfaces that may be required to download data.
	 */
	var progressListener : NsIWebProgressListener;
	/**
	 * Value indicating the success or failure of the persist operation. Read only.
	 */
	var result : ULong;
	
	function cancelSave() : Void;
	function saveChannel(aChannel:NsIChannel, aFile:NsISupports) : Void;
	function saveDocument(aDocument:NsIDOMDocument, aFile:NsISupports, aDataPath:NsISupports, aOutputContentType:String, aEncodingFlags:ULong, aWrapColumn:ULong) : Void;
	function saveURI(aURI:NsIURI, aCacheKey:NsISupports, aReferrer:NsIURI, aPostData:NsIInputStream, aExtraHeaders:String, aFile:NsISupports, aPrivacyContext:NsILoadContext) : Void;
	function savePrivacyAwareURI(aURI:NsIURI, aCacheKey:NsISupports, aReferrer:NsIURI, aPostData:NsIInputStream, aExtraHeaders:String, aFile:NsISupports, aIsPrivate:Bool) : Void;
}
