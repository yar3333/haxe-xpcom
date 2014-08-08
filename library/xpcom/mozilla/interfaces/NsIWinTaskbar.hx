package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIWinTaskbar") extern class NsIWinTaskbar extends NsISupports
{
	public static inline function createInstance() : NsIWinTaskbar
	{
		return xpcom.Components.classes[cast "@mozilla.org/windows-taskbar;1"].createInstance(NsIWinTaskbar);
	}
	
	/**
	 * Returns true if the operating system supports Windows 7 or later taskbar features; you can use this instead of in-place operating system version checking. Read only.
	 */
	var available : Bool;
	/**
	 * The default application user model ID the application registers with the system. This ID is used by the taskbar for grouping windows and when associating pinned shortcuts with running instances and jump lists. Read only.
	 */
	var defaultGroupId : AString;
	
	function createJumpListBuilder() : NsIJumpListBuilder;
	function createTaskbarTabPreview(shell:NsIDocShell, controller:NsITaskbarPreviewController) : NsITaskbarTabPreview;
	function getTaskbarProgress(shell:NsIDocShell) : NsITaskbarProgress;
	function getTaskbarWindowPreview(shell:NsIDocShell) : NsITaskbarWindowPreview;
	function setGroupIdForWindow(aParent:NsIDOMWindow, aIdentifier:AString) : Void;
}
