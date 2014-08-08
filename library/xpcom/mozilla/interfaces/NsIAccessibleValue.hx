package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAccessibleValue") extern class NsIAccessibleValue extends NsISupports
{
	var currentValue : Float;
	/**
	 * Read only.
	 */
	var maximumValue : Float;
	/**
	 * Read only.
	 */
	var minimumIncrement : Float;
	/**
	 * Read only.
	 */
	var minimumValue : Float;
	
	function setCurrentValue(value:Float) : Bool;
}
