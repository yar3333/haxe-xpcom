package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIRequest") extern class NsIRequest extends NsISupports
{
	/**
	 * The load flags of this request. Bits 0-15 are reserved. When added to a load group, this request's load flags are merged with the load flags of the load group.
	 */
	var loadFlags : NsLoadFlags;
	/**
	 * The load group of this request. While pending, the request is a member of the load group. It is the responsibility of the request to implement this policy.
	 */
	var loadGroup : NsILoadGroup;
	/**
	 * The name of the request. Often this is the URI of the request. Read only.
	 */
	var name : AUTF8String;
	/**
	 * The error status associated with the request. Read only.
	 */
	var status : Nsresult;
}
