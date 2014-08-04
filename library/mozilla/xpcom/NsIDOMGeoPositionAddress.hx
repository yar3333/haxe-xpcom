package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIDOMGeoPositionAddress") extern class NsIDOMGeoPositionAddress extends NsISupports
{
	/**
	 * The city. Read only.
	 */
	var city : DOMString;
	/**
	 * The country. Read only.
	 */
	var country : DOMString;
	/**
	 * Removed in Firefox 11, since it isn't defined in the specification; use country instead.
	 * Obsolete since Gecko 11
	 */
	var countryCode  : DOMString;
	/**
	 * The county. Read only.
	 */
	var county : DOMString;
	/**
	 * The postal or ZIP code. Read only.
	 */
	var postalCode : DOMString;
	/**
	 * The premises. Read only.
	 */
	var premises : DOMString;
	/**
	 * The region. Read only.
	 */
	var region : DOMString;
	/**
	 * The street of the address. Read only.
	 */
	var street : DOMString;
	/**
	 * The street number of the address. Read only.
	 */
	var streetNumber : DOMString;
}
