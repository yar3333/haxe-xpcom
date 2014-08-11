package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAccessibleProvider") extern class NsIAccessibleProvider extends NsISupports
{
	/**
	 * Do not create an accessible for this object This is useful if an ancestor binding already implements nsIAccessibleProvider, but no accessible is desired for the inheriting binding.
	 */
	static inline var NoAccessible = 0;
	/**
	 * For elements that spawn a new document. For example now it is used by <xul:iframe>, <xul:browser> and <xul:editor>.
	 */
	static inline var OuterDoc = 0x00000001;
	static inline var XULAlert = 0x00001001;
	static inline var XULButton = 0x00001002;
	static inline var XULCheckbox = 0x00001003;
	static inline var XULColorPicker = 0x00001004;
	static inline var XULColorPickerTile = 0x00001005;
	static inline var XULCombobox = 0x00001006;
	static inline var XULDropmarker = 0x00001007;
	static inline var XULGroupbox = 0x00001008;
	static inline var XULImage = 0x00001009;
	static inline var XULLink = 0x0000100A;
	static inline var XULListbox = 0x0000100B;
	static inline var XULListCell = 0x00001026;
	static inline var XULListHead = 0x00001024;
	static inline var XULListHeader = 0x00001025;
	static inline var XULListitem = 0x0000100C;
	static inline var XULMenubar = 0x0000100D;
	static inline var XULMenuitem = 0x0000100E;
	static inline var XULMenupopup = 0x0000100F;
	static inline var XULMenuSeparator = 0x00001010;
	static inline var XULPane = 0x00001011;
	static inline var XULProgressMeter = 0x00001012;
	static inline var XULScale = 0x00001013;
	static inline var XULStatusBar = 0x00001014;
	static inline var XULRadioButton = 0x00001015;
	static inline var XULRadioGroup = 0x00001016;
	/**
	 * The single tab in a dialog or tabbrowser/editor interface.
	 */
	static inline var XULTab = 0x00001017;
	/**
	 * A combination of a tabs object and a tabpanels object.
	 */
	static inline var XULTabBox = 0x00001018;
	/**
	 * The collection of tab objects, usable in the TabBox and independent of as well.
	 */
	static inline var XULTabs = 0x00001019;
	static inline var XULText = 0x0000101A;
	static inline var XULTextBox = 0x0000101B;
	static inline var XULThumb = 0x0000101C;
	static inline var XULTree = 0x0000101D;
	static inline var XULTreeColumns = 0x0000101E;
	static inline var XULTreeColumnItem = 0x0000101F;
	static inline var XULToolbar = 0x00001020;
	static inline var XULToolbarSeparator = 0x00001021;
	static inline var XULTooltip = 0x00001022;
	static inline var XULToolbarButton = 0x00001023;
	/**
	 * Used for xforms elements that provide accessible object for itself as well for anonymous content. This property is used for upload, input[type="xsd:gDay"] and input[type="xsd:gMonth"]
	 */
	static inline var XFormsContainer = 0x00002000;
	/**
	 * Used for label element.
	 */
	static inline var XFormsLabel = 0x00002001;
	/**
	 * Used for output element.
	 */
	static inline var XFormsOuput = 0x00002002;
	/**
	 * Used for trigger and submit elements.
	 */
	static inline var XFormsTrigger = 0x00002003;
	/**
	 * Used for input and textarea elements.
	 */
	static inline var XFormsInput = 0x00002004;
	/**
	 * Used for input[xsd:boolean] element.
	 */
	static inline var XFormsInputBoolean = 0x00002005;
	/**
	 * Used for input[xsd:date] element.
	 */
	static inline var XFormsInputDate = 0x00002006;
	/**
	 * Used for secret element.
	 */
	static inline var XFormsSecret = 0x00002007;
	/**
	 * Used for range element represented by slider.
	 */
	static inline var XFormsSliderRange = 0x00002008;
	/**
	 * Used for select and select1 that are implemented using host document's native widget. For example, a select1 in a xhtml document may be represented by the native html control html:select.
	 */
	static inline var XFormsSelect = 0x00002009;
	/**
	 * Used for xforms choices element.
	 */
	static inline var XFormsChoices = 0x00002010;
	/**
	 * Used for xforms full select/select1 elements that may be represented by group of checkboxes and radiogroup.
	 */
	static inline var XFormsSelectFull = 0x00002011;
	/**
	 * Used for xforms item element that is used inside xforms select elements represented by group of checkboxes.
	 */
	static inline var XFormsItemCheckgroup = 0x00002012;
	/**
	 * Used for xforms item element that is used inside xforms select1 elements represented by radio group.
	 */
	static inline var XFormsItemRadiogroup = 0x00002013;
	/**
	 * Used for xforms select1 element that is represented by combobox.
	 */
	static inline var XFormsSelectCombobox = 0x00002014;
	/**
	 * Used for xforms item element that is used inside xforms select1 elements represented by combobox.
	 */
	static inline var XFormsItemCombobox = 0x00002015;
	/**
	 * Used for dropmarker widget that is used by xforms elements.
	 */
	static inline var XFormsDropmarkerWidget = 0x00002101;
	/**
	 * Used for calendar widget that is used by xforms elements.
	 */
	static inline var XFormsCalendarWidget = 0x00002102;
	/**
	 * Used for popup widget that is used by xforms minimal select1 elements.
	 */
	static inline var XFormsComboboxPopupWidget = 0x00002103;
	
	/**
	 * Read only. Obsolete since Gecko 1.9
	 */
	var accessible : NsIAccessible;
	/**
	 * Value representing the type of accessible object. See constants for details. Read only.
	 */
	var accessibleType : Long;
}
