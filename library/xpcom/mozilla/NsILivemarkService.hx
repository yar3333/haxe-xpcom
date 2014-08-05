package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsILivemarkService") extern class NsILivemarkService extends NsISupports
{
	public static inline function getService() : NsILivemarkService return Components.classes[cast "@mozilla.org/browser/livemark-service;2"].getService(Components.interfaces.nsILivemarkService);
	
	function createLivemark(folder:LongLong, name:AString, siteURI:NsIURI, feedURI:NsIURI, index:Long) : LongLong;
	function createLivemarkFolderOnly(folder:LongLong, name:AString, siteURI:NsIURI, feedURI:NsIURI, index:Long) : LongLong;
	function getFeedURI(container:LongLong) : NsIURI;
	function getLivemarkIdForFeedURI(aFeedURI:NsIURI) : LongLong;
	function getSiteURI(container:LongLong) : NsIURI;
	function isLivemark(folder:LongLong) : Bool;
	function reloadAllLivemarks() : Void;
	function reloadLivemarkFolder(folderID:LongLong) : Void;
	function setFeedURI(container:LongLong, feedURI:NsIURI) : Void;
	function setSiteURI(container:LongLong, siteURI:NsIURI) : Void;
	function start() : Void;
	function stopUpdateLivemarks() : Void;
}
