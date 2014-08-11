package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIFilePicker") extern class NsIFilePicker extends NsISupports
{
	public static inline function createInstance(parent:NsIDOMWindow, title:AString, mode:Short) : NsIFilePicker
	{
		var r : NsIFilePicker = xpcom.Components.classes[cast "@mozilla.org/filepicker;1"].createInstance(NsIFilePicker);
		r.init(parent, title, mode);
		return r;
	}
	
	/**
	 * Load a file or directory.
	 */
	static inline var modeOpen = 0;
	/**
	 * Save a file or directory.
	 */
	static inline var modeSave = 1;
	/**
	 * Select a folder/directory.
	 */
	static inline var modeGetFolder = 2;
	/**
	 * Load multiple files.
	 */
	static inline var modeOpenMultiple = 3;
	
	/**
	 * If true, the file is added to the operating system's "recent documents" list (if the operating system has one; nothing happens if there is no such concept on the user's platform). This attribute has no effect if private browsing mode is in effect.
	 */
	var addToRecentDocs : Bool;
	/**
	 * The extension for the type of files you want to work with. On some platforms, this is automatically appended to filenames the user enters, if required.  Specify it without a leading dot, for example "jpg".
	 */
	var defaultExtension : AString;
	/**
	 * The filename, including extension, that should be suggested to the user as a default. This should be set before calling open() or show().
	 * Exceptions thrown
	 * 
	 * NS_ERROR_FAILURE
	 * If you try to read this attribute.
	 */
	var defaultString : AString;
	/**
	 * The directory that the file picker dialog should initially display. This should be set this before calling open() or show() to specify a starting point.
	 */
	var displayDirectory : NsILocalFile;
	/**
	 * The currently selected file or directory. Read only.
	 */
	var file : NsILocalFile;
	/**
	 * An enumerator of the currently selected files. Read only.
	 * Note: Only works with modeOpenMultiple mode.
	 */
	var files : NsISimpleEnumerator;
	/**
	 * The URI of the currently selected file or directory. Read only.
	 */
	var fileURL : NsIURI;
	/**
	 * The (0-based) index of the filter which is currently selected in the file picker dialog. Set this to choose a particular filter to be selected by default.
	 */
	var filterIndex : Long;
	
	function appendFilter(title:AString, filter:AString) : Void;
	function appendFilters(filterMask:Long) : Void;
	function init(parent:NsIDOMWindow, title:AString, mode:Short) : Void;
	function open(aFilePickerShownCallback:NsIFilePickerShownCallback) : Void;
	function show() : Short;
}
