package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIHTMLEditor") extern class NsIHTMLEditor extends NsISupports
{
	/**
	 *  
	 */
	static inline var eLeft = 0;
	/**
	 *  
	 */
	static inline var eCenter = 1;
	/**
	 *  
	 */
	static inline var eRight = 2;
	/**
	 *  
	 */
	static inline var eJustify = 3;
	
	/**
	 * A boolean which is true is the HTMLEditor has been instantiated with CSS knowledge and if the CSS pref is currently checked.
	 */
	var isCSSEnabled : Bool;
	/**
	 * A boolean indicating if a return key pressed in a paragraph creates another paragraph or just inserts a  at the caret.
	 */
	var returnInParagraphCreatesNewParagraph : Bool;
}
