package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIMarkupDocumentViewer") extern class NsIMarkupDocumentViewer extends NsISupports
{
	/**
	 * If true, plugins are allowed within the doc shell. default = true. Obsolete since Gecko 1.8
	 */
	var allowPlugins : Bool;
	/**
	 * Disable entire author style level (including HTML presentation hints)
	 */
	var authorStyleDisabled : Bool;
	/**
	 * Whether to force the user's character set 1 - use the document character set 2 - use the character set chosen by the user. Obsolete since Gecko 6.0
	 */
	var bidiCharacterSet : Octet;
	/**
	 * The order of bidirectional text in form controls. 1 - logical 2 - visual 3 - like the containing document. Obsolete since Gecko 2.0
	 */
	var bidiControlsTextMode : Octet;
	/**
	 * The type of numerals to display. 1 - depending on context, default is Arabic numerals 2 - depending on context, default is Hindi numerals 3 - Arabic numerals 4 - Hindi numerals.
	 */
	var bidiNumeral : Octet;
	/**
	 * Use this attribute to access all the Bidi options in one operation.
	 */
	var bidiOptions : PRUint32;
	/**
	 * Whether to use platform bidi support or Mozilla's bidi support 1 - Use Mozilla's bidi support 2 - Use the platform bidi support 3 - Disable bidi support.
	 */
	var bidiSupport : Octet;
	/**
	 * Options for Bidi presentation.
	 * Use these attributes to access the individual Bidi options.
	 * The default direction for the layout of bidirectional text. 1 - left to right 2 - right to left.
	 */
	var bidiTextDirection : Octet;
	/**
	 * The ordering of bidirectional text. This may be either "logical" or "visual". Logical text will be reordered for presentation using the Unicode Bidi Algorithm. Visual text will be displayed without reordering. 1 - the default order for the charset 2 - logical order 3 - visual order.
	 */
	var bidiTextType : Octet;
	var defaultCharacterSet : ACString;
	var forceCharacterSet : ACString;
	/**
	 * The amount by which to scale all lengths. Default is 1.0.
	 */
	var fullZoom : Float;
	var hintCharacterSet : ACString;
	var hintCharacterSetSource : PRInt32;
	/**
	 * The minimum font size to allow. 
	 * Note: This attribute was added late in the Gecko 2.0 development cycle and was implemented by the nsIMarkupDocumentViewer_MOZILLA_2_0_BRANCH interface; it was merged into this interface in Gecko 7.0.
	 */
	var minFontSize : Long;
	var prevDocCharacterSet : ACString;
	/**
	 * The amount by which to scale all text. Default is 1.0.
	 */
	var textZoom : Float;
}
