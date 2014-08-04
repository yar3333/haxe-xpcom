package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIHTMLEditor") extern class NsIHTMLEditor extends NsISupports
{
	/**
	 * A boolean which is true is the HTMLEditor has been instantiated with CSS knowledge and if the CSS pref is currently checked.
	 */
	var isCSSEnabled : Bool;
	/**
	 * A boolean indicating if a return key pressed in a paragraph creates another paragraph or just inserts a  at the caret.
	 */
	var returnInParagraphCreatesNewParagraph : Bool;
}
