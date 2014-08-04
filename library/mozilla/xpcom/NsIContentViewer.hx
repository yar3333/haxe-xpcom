package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIContentViewer") extern class NsIContentViewer extends NsISupports
{
	var container : NsISupports;
	var DOMDocument : NsIDOMDocument;
	/**
	 * Obsolete since Gecko 2.0
	 */
	var enableRendering : Bool;
	/**
	 * Get the history entry that this viewer will save itself into when destroyed. Can return null. Read only.
	 */
	var historyEntry : NsISHEntry;
	/**
	 * Read only.
	 */
	var isTabModalPromptAllowed : Bool;
	/**
	 * Read only. Native code only! 
	 * Note: Prior to Gecko 10.0 (Firefox 10.0 / Thunderbird 10.0 / SeaMonkey 2.7), this attribute was part of nsIDocumentViewer.
	 */
	var presContext : NsPresContextPtr;
	/**
	 * Read only. Native code only! 
	 * Note: Prior to Gecko 10.0 (Firefox 10.0 / Thunderbird 10.0 / SeaMonkey 2.7), this attribute was part of nsIDocumentViewer.
	 */
	var presShell : NsIPresShellPtr;
	/**
	 * The previous content viewer, which has been closed but not destroyed. Native code only!
	 */
	var previousViewer : NsIContentViewer;
	var sticky : Bool;
}
