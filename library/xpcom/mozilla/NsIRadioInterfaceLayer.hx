package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIRadioInterfaceLayer") extern class NsIRadioInterfaceLayer extends NsISupports
{
	public static inline function createInstance() : NsIRadioInterfaceLayer return Components.Constructor("@mozilla.org/telephony/system-worker-manager;1", Components.interfaces.nsIRadioInterfaceLayer);
	
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
