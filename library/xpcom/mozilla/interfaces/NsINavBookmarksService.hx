package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsINavBookmarksService") extern class NsINavBookmarksService extends NsISupports
{
	public static inline function getService() : NsINavBookmarksService
	{
		return xpcom.Components.classes[cast "@mozilla.org/browser/nav-bookmarks-service;1"].getService(NsINavBookmarksService);
	}
	
	/**
	 * The item ID of the Bookmarks Menu folder. Read only. Renamed from bookmarksRoot in Gecko 1.9
	 */
	var bookmarksMenuFolder : LongLong;
	/**
	 * The item ID of the top-level folder that contains bookmarks, tags and all other Places data. This contains administrative data as well as user data, and is therefore not recommended for use in queries. Read only.
	 */
	var placesRoot : LongLong;
	/**
	 * The item ID of the top-level folder that contains the tag "folders". Read only. Renamed from tagRoot in Gecko 1.9
	 */
	var tagsFolder : LongLong;
	/**
	 * The item ID of the personal toolbar folder. Read only. Renamed from toolbarRoot in Gecko 1.9
	 */
	var toolbarFolder : LongLong;
	/**
	 * The item ID of the Unfiled Bookmarks folder. Read only.
	 */
	var unfiledBookmarksFolder : LongLong;
	
	function addObserver(observer:NsINavBookmarkObserver, ownsWeak:Bool) : Void;
	function beginUpdateBatch() : Void;
	function changeBookmarkURI(aItemId:LongLong, aNewURI:NsIURI) : Void;
	function createDynamicContainer(aParentFolder:LongLong, aName:AUTF8String, aContractId:AString, aIndex:Long) : LongLong;
	function createFolder(aParentFolder:LongLong, name:AUTF8String, index:Long) : LongLong;
	function endUpdateBatch() : Void;
	function exportBookmarksHTML(file:NsIFile) : Void;
	function getBookmarkedURIFor(aURI:NsIURI) : NsIURI;
	function getBookmarkFoldersTArray(aURI:NsIURI, aResult:PRInt64Array) : Void;
	function getBookmarkIdsForURI(aURI:NsIURI, ?count:ULong, bookmarks:Array<LongLong>) : Void;
	function getBookmarkIdsForURITArray(aURI:NsIURI, aResult:PRInt64Array) : Void;
	function getBookmarkURI(aItemId:LongLong) : NsIURI;
	function getChildFolder(aFolder:LongLong, aSubFolder:AString) : LongLong;
	function getFolderIdForItem(aItemId:LongLong) : LongLong;
	function getFolderReadonly(aItemId:LongLong) : Bool;
	function getFolderTitle(folder:PRInt64) : AString;
	function getFolderURI(folder:PRInt64) : NsIURI;
	function getIdForItemAt(aParentId:LongLong, aIndex:Long) : LongLong;
	function getItemDateAdded(aItemId:LongLong) : PRTime;
	function getItemGUID(aItemId:LongLong) : AString;
	function getItemIdForGUID(aGUID:AString) : LongLong;
	function getItemIndex(aItemId:LongLong) : Long;
	function getItemLastModified(aItemId:LongLong) : PRTime;
	function getItemTitle(aItemId:LongLong) : AUTF8String;
	function getItemType(aItemId:LongLong) : UShort;
	function getKeywordForBookmark(aItemId:LongLong) : AString;
	function getKeywordForURI(aURI:NsIURI) : AString;
	function getRemoveFolderTransaction(aItemId:LongLong) : NsITransaction;
	function getURIForKeyword(keyword:AString) : NsIURI;
	function importBookmarksHTML(url:NsIURI) : Void;
	function importBookmarksHTMLToFolder(url:NsIURI, folder:PRInt64) : Void;
	function indexOfFolder(parent:PRInt64, folder:PRInt64) : PRInt32;
	function indexOfItem(folder:PRInt64, uri:NsIURI) : PRInt32;
	function insertBookmark(aParentId:LongLong, aURI:NsIURI, aIndex:Long, aTitle:AUTF8String) : LongLong;
	function insertItem(folder:PRInt64, item:NsIURI, index:PRInt32) : Void;
	function insertSeparator(aParentId:LongLong, aIndex:Long) : LongLong;
	function isBookmarked(aURI:NsIURI) : Bool;
	function moveFolder(folder:PRInt64, newParent:PRInt64, index:PRInt32) : Void;
	function moveItem(aItemId:LongLong, aNewParentId:LongLong, aIndex:Long) : Void;
	function removeChildAt(aFolder:LongLong, aIndex:Long) : Void;
	function removeFolder(aFolder:LongLong) : Void;
	function removeFolderChildren(aItemId:LongLong) : Void;
	function removeItem(aItemId:LongLong) : Void;
	function removeObserver(observer:NsINavBookmarkObserver) : Void;
	function replaceItem(folder:PRInt64, item:NsIURI, newItem:NsIURI) : Void;
	function runInBatchMode(aCallback:NsINavHistoryBatchCallback, aUserData:NsISupports) : Void;
	function setFolderReadonly(aFolder:LongLong, aReadOnly:Bool) : Void;
	function setFolderTitle(folder:PRInt64, title:AString) : Void;
	function setItemDateAdded(aItemId:LongLong, aDateAdded:PRTime) : Void;
	function setItemGUID(aItemId:LongLong, aGUID:AString) : Void;
	function setItemIndex(aItemId:LongLong, aNewIndex:Long) : Void;
	function setItemLastModified(aItemId:LongLong, aLastModified:PRTime) : Void;
	function setItemTitle(aItemId:LongLong, aTitle:AUTF8String) : Void;
	function setKeywordForBookmark(aItemId:LongLong, aKeyword:AString) : Void;
	function setKeywordForURI(uri:NsIURI, keyword:AString) : Void;
}
