package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIFileView") extern class NsIFileView extends NsISupports
{
	public static inline function createInstance() : NsIFileView
	{
		return xpcom.Components.classes[cast "@mozilla.org/filepicker/fileview;1"].createInstance(NsIFileView);
	}
	
	/**
	 * Sort by file name.
	 */
	static inline var sortName = 0;
	/**
	 * Sort by file size.
	 */
	static inline var sortSize = 1;
	/**
	 * Sort by the date of the last modification.
	 */
	static inline var sortDate = 2;
	
	/**
	 * If true results will be sorted in ascending order. Read only.
	 */
	var reverseSort : Bool;
	/**
	 * An nsIArray of selected files, which contains nsIArray instances. Read only.
	 */
	var selectedFiles : NsIArray;
	/**
	 * If true hidden files will be shown.
	 */
	var showHiddenFiles : Bool;
	/**
	 * If true only directory entries will be returned.
	 */
	var showOnlyDirectories : Bool;
	/**
	 * The current sort type in effect. Read only.
	 */
	var sortType : Short;
	
	function setDirectory(directory:NsIFile) : Void;
	function setFilter(filterString:AString) : Void;
	function sort(sortType:Short, reverseSort:Bool) : Void;
}
