package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsITransferable") extern class NsITransferable extends NsISupports
{
	/**
	 * Plain text.
	 */
	public static inline var kTextMime = "text/plain";
	
	/**
	 * Unicode text.
	 */
	public static inline var kUnicodeMime = "text/unicode";
	
	/**
	 * Text data that isn't meant to be used by non-Mozilla code.
	 */
	public static inline var kMozTextInternal = "text/x-moz-text-internal";
	
	/**
	 * HTML.
	 */
	public static inline var kHTMLMime = "text/html";
	
	/**
	 * AOL mail. Need details.
	 */
	public static inline var kAOLMailMime = "AOLMAIL";
	
	/**
	 * PNG image.
	 */
	public static inline var kPNGImageMime = "image/png";
	
	/**
	 * JPEG image.
	 */
	public static inline var kJPEGImageMime = "image/jpeg";
	
	/**
	 * JPEG image.
	 */
	public static inline var kJPGImageMime = "image/jpg";
	
	/**
	 * GIF image.
	 */
	public static inline var kGIFImageMime = "image/gif";
	
	/**
	 * An arbitrary file (is this an nsIFile?)
	 */
	public static inline var kFileMime = "application/x-moz-file";
	
	/**
	 * A Mozilla URL object; this is a text string containing the URL, a newline (\n), then the title of the page.
	 */
	public static inline var kURLMime = "text/x-moz-url";
	
	/**
	 * A string containing only a URL.
	 */
	public static inline var kURLDataMime = "text/x-moz-url-data";
	
	/**
	 * A string containing only a description.
	 */
	public static inline var kURLDescriptionMime = "text/x-moz-url-desc";
	
	/**
	 * The same as kURLDataMIme, except intended for private use only.
	 */
	public static inline var kURLPrivateMime = "text/x-moz-url-priv";
	
	/**
	 * An image in Gecko's native internal image storage format.
	 */
	public static inline var kNativeImageMime = "application/x-moz-nativeimage";
	
	/**
	 * HTML in Gecko's native internal storage format.
	 */
	public static inline var kNativeHTMLMime = "application/x-moz-nativehtml";
	
	/**
	 * Along with kHTMLInfo, this is used to provide the context for a fragment of HTML source. Contains the serialized ancestor elements.
	 */
	public static inline var kHTMLContext = "text/_moz_htmlcontext";
	
	/**
	 * Along with kHTMLContext, this is used to provide the context for a fragment of HTML source. Contains numbers identifying where in the context the fragment came from.
	 */
	public static inline var kHTMLInfo = "text/_moz_htmlinfo";
	
	/**
	 * The source URL for a file promise.
	 */
	public static inline var kFilePromiseURLMime = "application/x-moz-file-promise-url";
	
	/**
	 * The destination URL for a file promise.
	 */
	public static inline var kFilePromiseDestFilename = "application/x-moz-file-promise-dest-filename";
	
	/**
	 * A dataless flavor used to interact with the operating system during file drags.
	 */
	public static inline var kFilePromiseMime = "application/x-moz-file-promise";
	
	/**
	 * A synthetic flavor which is added to the transferable once the destination directory for a file drag is known.
	 */
	public static inline var kFilePromiseDirectoryMime = "application/x-moz-file-promise-dir";
	
	public static inline function createInstance() : NsITransferable
	{
		return xpcom.Components.classes[cast "@mozilla.org/widget/transferable;1"].createInstance(NsITransferable);
	}
	
	/**
	 * Flavor example: "text/unicode", "image/png".
	 */
	function addDataFlavor(flavor:String) : Void;
	
	function getTransferData(flavor:String, data:{ value:NsISupports }, dataLen:{ value:Int }) : Void;
	
	/**
	 * n may be: -1 if value is object
	 */
	function setTransferData(flavor:String, value:Dynamic, n:Int) : Void;
}