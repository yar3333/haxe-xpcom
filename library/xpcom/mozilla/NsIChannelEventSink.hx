package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIChannelEventSink") extern class NsIChannelEventSink extends NsISupports
{
	/**
	 * 
	 *     <p>This is a temporary redirect. New requests for this resource should continue to use the URI of the old channel.</p>
	 *     The new URI may be identical to the old one.
	 */
	static inline var REDIRECT_TEMPORARY = 1 << 0;
	/**
	 * 
	 *     <p>This is a permanent redirect. New requests for this resource should use the URI of the new channel (This might be an HTTP 301 reponse). If this flag is not set, this is a temporary redirect.</p>
	 *     The new URI may be identical to the old one.
	 */
	static inline var REDIRECT_PERMANENT = 1 << 1;
	/**
	 * 
	 *     <p>This is an internal redirect, i.e. it was not initiated by the remote server, but is specific to the channel implementation.</p>
	 *     The new URI may be identical to the old one.
	 */
	static inline var REDIRECT_INTERNAL = 1 << 2;
}
