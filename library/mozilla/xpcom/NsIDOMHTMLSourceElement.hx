package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIDOMHTMLSourceElement") extern class NsIDOMHTMLSourceElement
{
	/**
	 * The src attribute gives the address of the media resource. The value must be a valid URL. This attribute must be present. Note that dynamically manipulating this value after the page has loaded has no effect on the containing element; instead, change the src attribute of that element (audio or video) instead.
	 */
	var src : DOMString;
	/**
	 * The type attribute gives the type of the media resource, to help the user agent determine if it can play this media resource before fetching it. If specified, its value must be a valid MIME type. The codecs parameter may be specified and might be necessary to specify exactly how the resource is encoded.
	 */
	var type : DOMString;
	/**
	 * The media attribute gives the intended media type of the media resource, to help the user agent determine if this media resource is useful to the user before fetching it. Its value must be a valid media query.
	 * Unimplemented.
	 */
	var media : DOMString;
}
