package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDownloadProgressListener") extern class NsIDownloadProgressListener extends NsISupports
{
	/**
	 * document The document of the download manager frontend.
	 */
	var document : NsIDOMDocument;
}
