package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIRadioInterfaceLayer") extern class NsIRadioInterfaceLayer extends NsISupports
{
	/**
	 * Read only. Obsolete since Gecko 13.0
	 */
	var currentState : Jsval;
	var microphoneMuted : Bool;
	/**
	 * Read only.
	 */
	var radioState : Jsval;
	var speakerEnabled : Bool;
}
