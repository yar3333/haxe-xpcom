package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIAccessibleValue") extern class NsIAccessibleValue extends NsISupports
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
