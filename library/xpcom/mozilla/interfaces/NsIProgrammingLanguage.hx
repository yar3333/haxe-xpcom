package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIProgrammingLanguage") extern class NsIProgrammingLanguage extends NsISupports
{
	static inline var UNKNOWN = 0;
	/**
	 * C++
	 */
	static inline var CPLUSPLUS = 1;
	/**
	 * JavaScript
	 */
	static inline var JAVASCRIPT = 2;
	/**
	 * Python
	 */
	static inline var PYTHON = 3;
	/**
	 * Perl
	 */
	static inline var PERL = 4;
	/**
	 * Java
	 */
	static inline var JAVA = 5;
	/**
	 * ZX81 Basic
	 */
	static inline var ZX81_BASIC = 6;
	/**
	 * JavaScript 2
	 */
	static inline var JAVASCRIPT2 = 7;
	/**
	 * Ruby
	 */
	static inline var RUBY = 8;
	/**
	 * PHP
	 */
	static inline var PHP = 9;
	/**
	 * TCL
	 */
	static inline var TCL = 10;
	/**
	 * This will be kept at the largest index.
	 */
	static inline var MAX = 10;
}
