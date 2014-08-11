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
	 * The file picker dialog was closed by the user hitting 'Ok'
	 */
	static inline var returnOK = 0;
	/**
	 * The file picker dialog was closed by the user hitting 'Cancel'
	 */
	static inline var returnCancel = 1;
	/**
	 * The user chose an existing file and acknowledged that they want to overwrite the file
	 */
	static inline var returnReplace = 2;
	/**
	 * Corresponds to the *.* filter for file extensions. All files will pass through the filter.
	 */
	static inline var filterAll = 0x001;
	/**
	 * Corresponds to the *.html, *.htm, *.shtml and *.xhtml filters for file extensions.
	 */
	static inline var filterHTML = 0x002;
	/**
	 * Corresponds to the *.txt and *.text filter for file extensions.
	 */
	static inline var filterText = 0x004;
	/**
	 * Corresponds to the *.jpe, *.jpg, *.jpeg, *.gif, *.png, *.bmp, *.ico, *.svg, *.svgz, *.tif, *.tiff, *.ai, *.drw, *.pct, *.psp, *.xcf, *.psd and *.raw filters for file extensions.
	 */
	static inline var filterImages = 0x008;
	/**
	 * Corresponds to the *.xml filter for file extensions.
	 */
	static inline var filterXML = 0x010;
	/**
	 * Corresponds to the *.xul filter for file extensions.
	 */
	static inline var filterXUL = 0x020;
	/**
	 * Corresponds to the platform specific application filter for file extensions. Application files for the user's platform will pass through the filter.
	 */
	static inline var filterApps = 0x040;
	/**
	 * Allow URLs.
	 */
	static inline var filterAllowURLs = 0x80;
	/**
	 * Corresponds to the *.aac, *.aif, *.flac, *.iff, *.m4a, *.m4b, *.mid, *.midi, *.mp3, *.mpa, *.mpc, *.oga, *.ogg, *.ra, *.ram, *.snd, *.wav and *.wma filters for file extensions.
	 */
	static inline var filterAudio = 0x100;
	/**
	 * Corresponds to the *.avi, *.divx, *.flv, *.m4v, *.mkv, *.mov, *.mp4, *.mpeg, *.mpg, *.ogm, *.ogv, *.ogx, *.rm, *.rmvb, *.smil, *.webm, *.wmv and *.xvid filters for file extensions.
	 */
	static inline var filterVideo = 0x200;
	
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
