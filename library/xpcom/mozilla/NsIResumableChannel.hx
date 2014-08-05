package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIResumableChannel") extern class NsIResumableChannel extends NsISupports
{
	/**
	 * The entity id for this URI. Available after OnStartRequest. Read only. Exceptions thrown  NS_ERROR_NOT_RESUMABLE If this load is not resumable.
	 */
	var entityID : ACString;
	
	function asyncOpenAt(listener:NsIStreamListener, ctxt:NsISupports, startPos:ULong, entityID:NsIResumableEntityID) : Void;
	function resumeAt(startPos:ULongLong, entityID:ACString) : Void;
}
