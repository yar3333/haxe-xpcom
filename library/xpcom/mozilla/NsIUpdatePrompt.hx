package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIUpdatePrompt") extern class NsIUpdatePrompt extends NsISupports
{
	function checkForUpdates() : Void;
	function showUpdateAvailable(update:NsIUpdate) : Void;
	function showUpdateDownloaded(update:NsIUpdate, ?background:Bool) : Void;
	function showUpdateError(update:NsIUpdate) : Void;
	function showUpdateHistory(parent:NsIDOMWindow) : Void;
	function showUpdateInstalled() : Void;
}
