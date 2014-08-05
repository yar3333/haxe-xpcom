package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIXULSortService") extern class NsIXULSortService extends NsISupports
{
	static inline var SORT_COMPARECASE = 0x0001;
	static inline var SORT_INTEGER = 0x0100;
}
