package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIWebNavigation") extern class NsIWebNavigation extends NsISupports
{
	/**
	 * Indicates if the object can go back. If true this indicates that there is back session history available for navigation. Read only.
	 */
	var canGoBack : PRBool;
	/**
	 * Indicates if the object can go forward. If true this indicates that there is forward session history available for navigation. Read only.
	 */
	var canGoForward : PRBool;
	/**
	 * The currently loaded URI or null. Read only.
	 */
	var currentURI : NsIURI;
	/**
	 * Retrieves the current DOM document for the frame, or lazily creates a blank document if there is none. This attribute never returns null except for unexpected error situations. Read only.
	 */
	var document : NsIDOMDocument;
	/**
	 * The referring URI for the currently loaded URI or null. Read only.
	 */
	var referringURI : NsIURI;
	/**
	 * The session history object used by this web navigation instance.
	 */
	var sessionHistory : NsISHistory;
	
	function gotoIndex(index:Long) : Void;
	function loadURI(URI:Wstring, loadFlags:ULong, referrer:NsIURI, postData:NsIInputStream, headers:NsIInputStream) : Void;
	function reload(reloadFlags:ULong) : Void;
	function stop(stopFlags:ULong) : Void;
}
