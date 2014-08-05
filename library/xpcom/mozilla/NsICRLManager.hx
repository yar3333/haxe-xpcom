package xpcom.mozilla;

import xpcom.types.*;

@:native("nsICRLManager") extern class NsICRLManager extends NsISupports
{
	/**
	 *  
	 */
	static inline var TYPE_AUTOUPDATE_TIME_BASED = 1;
	/**
	 *  
	 */
	static inline var TYPE_AUTOUPDATE_FREQ_BASED = 2;
}
