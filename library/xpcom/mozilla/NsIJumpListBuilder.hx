package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIJumpListBuilder") extern class NsIJumpListBuilder extends NsISupports
{
	/**
	 *  <p>Tasks are common actions performed by users within the application. A task can be represented by an application shortcut and associated command line parameters or a URI. Task lists should generally be static lists that do not change often, if at all - similar to an application menu.</p> Tasks are given the highest priority of all lists when space is limited.
	 */
	static inline var JUMPLIST_CATEGORY_TASKS = 0;
	/**
	 * Recent lists are based on Window's recent document lists. The lists are generated automatically by Windows. Applications that use recent or frequent lists should keep document use tracking up to date by calling the SHAddToRecentDocs shell api.
	 */
	static inline var JUMPLIST_CATEGORY_RECENT = 1;
	/**
	 * Frequent lists are based on Window's recent document lists. The lists are generated automatically by Windows. Applications that use recent or frequent lists should keep document use tracking up to date by calling the SHAddToRecentDocs shell api.
	 */
	static inline var JUMPLIST_CATEGORY_FREQUENT = 2;
	/**
	 * Custom lists can be made up of tasks, links, and separators. The title of of the list is passed through the optional string parameter of addBuildList.
	 */
	static inline var JUMPLIST_CATEGORY_CUSTOMLIST = 3;
	
	/**
	 * Indicates whether jump list taskbar features are supported by the current host. Read only.
	 */
	var available : Short;
	/**
	 * JumpList management. Indicates if a commit has already occurred in this session. Read only. Exceptions thrown  NS_ERROR_NOT_AVAILABLE On all calls if taskbar functionality is not supported by the operating system.
	 */
	var isListCommitted : Bool;
	/**
	 * The maximum number of jump list items the current desktop can support. Read only.
	 */
	var maxListItems : Short;
	
	function abortListBuild() : Void;
	function addListToBuild(aCatType:Short, ?items:NsIArray, ?catName:AString) : Bool;
	function commitListBuild() : Bool;
	function deleteActiveList() : Bool;
	function initListBuild(removedItems:NsIMutableArray) : Bool;
}
