package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIFileView") extern class NsIFileView extends NsISupports
{
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
}
