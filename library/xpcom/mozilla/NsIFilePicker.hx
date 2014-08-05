package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIFilePicker") extern class NsIFilePicker extends NsISupports
{
	/**
	 * If true, the file is added to the operating system's "recent documents" list (if the operating system has one; nothing happens if there is no such concept on the user's platform). This attribute has no effect if private browsing mode is in effect.
	 */
	var addToRecentDocs  : Bool;
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
}
