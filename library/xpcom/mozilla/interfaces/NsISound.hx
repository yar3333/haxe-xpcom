package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsISound") extern class NsISound extends NsISupports
{
	public static inline function createInstance() : NsISound
	{
		var r : NsISound = xpcom.Components.classes[cast "@mozilla.org/sound;1"].createInstance(NsISound);
		r.init();
		return r;
	}
	
	/**
	 * The system receives email.
	 */
	static inline var EVENT_NEW_MAIL_RECEIVED = 0;
	/**
	 * An alert dialog is opened.
	 */
	static inline var EVENT_ALERT_DIALOG_OPEN = 1;
	/**
	 * A confirm dialog is opened.
	 */
	static inline var EVENT_CONFIRM_DIALOG_OPEN = 2;
	/**
	 * A prompt dialog (one that allows the user to enter data, such as an authentication dialog) is opened.
	 */
	static inline var EVENT_PROMPT_DIALOG_OPEN = 3;
	/**
	 * A select dialog (one that contains a list box) is opened.
	 */
	static inline var EVENT_SELECT_DIALOG_OPEN = 4;
	/**
	 * A menu item is executed.
	 */
	static inline var EVENT_MENU_EXECUTE = 5;
	/**
	 * A popup menu is shown.
	 */
	static inline var EVENT_MENU_POPUP = 6;
	/**
	 * More characters than the maximum allowed are typed into a text field.
	 */
	static inline var EVENT_EDITOR_MAX_LEN = 7;
	
	function beep() : Void;
	function init() : Void;
	function play(aURL:NsIURL) : Void;
	function playEventSound(aEventId:ULong) : Void;
	function playSystemSound(soundAlias:AString) : Void;
}
