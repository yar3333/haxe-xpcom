package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAccessibleEvent") extern class NsIAccessibleEvent extends NsISupports
{
	/**
	 * An object has been created.
	 */
	static inline var EVENT_SHOW = 0x0001;
	/**
	 * An object has been destroyed.
	 */
	static inline var EVENT_HIDE = 0x0002;
	/**
	 * An object's children have changed.
	 */
	static inline var EVENT_REORDER = 0x0003;
	/**
	 * The active descendant of a component has changed. The active descendant is used in objects with transient children.
	 */
	static inline var EVENT_ACTIVE_DECENDENT_CHANGED = 0x0004;
	/**
	 * An object has received the keyboard focus.
	 */
	static inline var EVENT_FOCUS = 0x0005;
	/**
	 * An object's state has changed.
	 */
	static inline var EVENT_STATE_CHANGE = 0x0006;
	/**
	 * An object has changed location, shape, or size.
	 */
	static inline var EVENT_LOCATION_CHANGE = 0x0007;
	/**
	 * An object's Name property has changed.
	 */
	static inline var EVENT_NAME_CHANGE = 0x0008;
	/**
	 * An object's Description property has changed.
	 */
	static inline var EVENT_DESCRIPTION_CHANGE = 0x0009;
	/**
	 * An object's Value property has changed.
	 */
	static inline var EVENT_VALUE_CHANGE = 0x000A;
	/**
	 * An object's help has changed.
	 */
	static inline var EVENT_HELP_CHANGE = 0x000B;
	/**
	 * An object's default action has changed.
	 */
	static inline var EVENT_DEFACTION_CHANGE = 0x000C;
	/**
	 * An object's action has changed.
	 */
	static inline var EVENT_ACTION_CHANGE = 0x000D;
	/**
	 * An object's keyboard shortcut has changed.
	 */
	static inline var EVENT_ACCELERATOR_CHANGE = 0x000E;
	/**
	 * The selection within a container object has changed.
	 */
	static inline var EVENT_SELECTION = 0x000F;
	/**
	 * An item within a container object has been added to the selection.
	 */
	static inline var EVENT_SELECTION_ADD = 0x0010;
	/**
	 * An item within a container object has been removed from the selection.
	 */
	static inline var EVENT_SELECTION_REMOVE = 0x0011;
	/**
	 * Numerous selection changes have occurred within a container object.
	 */
	static inline var EVENT_SELECTION_WITHIN = 0x0012;
	/**
	 * An alert has been generated. Server applications send this event when a user needs to know that a user interface element has changed.
	 */
	static inline var EVENT_ALERT = 0x0013;
	/**
	 * The foreground window has changed.
	 */
	static inline var EVENT_FOREGROUND = 0x0014;
	/**
	 * A menu item on the menu bar has been selected.
	 */
	static inline var EVENT_MENU_START = 0x0015;
	/**
	 * A menu from the menu bar has been closed.
	 */
	static inline var EVENT_MENU_END = 0x0016;
	/**
	 * A pop-up menu has been displayed.
	 */
	static inline var EVENT_MENUPOPUP_START = 0x0017;
	/**
	 * A pop-up menu has been closed.
	 */
	static inline var EVENT_MENUPOPUP_END = 0x0018;
	/**
	 * A window has received mouse capture.
	 */
	static inline var EVENT_CAPTURE_START = 0x0019;
	/**
	 * A window has lost mouse capture.
	 */
	static inline var EVENT_CAPTURE_END = 0x001A;
	/**
	 * A window is being moved or resized.
	 */
	static inline var EVENT_MOVESIZE_START = 0x001B;
	/**
	 * The movement or resizing of a window has finished.
	 */
	static inline var EVENT_MOVESIZE_END = 0x001C;
	/**
	 * A window has entered context-sensitive Help mode.
	 */
	static inline var EVENT_CONTEXTHELP_START = 0x001D;
	/**
	 * A window has exited context-sensitive Help mode.
	 */
	static inline var EVENT_CONTEXTHELP_END = 0x001E;
	/**
	 * An application is about to enter drag-and-drop mode.
	 */
	static inline var EVENT_DRAGDROP_START = 0x001F;
	/**
	 * An application is about to exit drag-and-drop mode.
	 */
	static inline var EVENT_DRAGDROP_END = 0x0020;
	/**
	 * A dialog box has been displayed.
	 */
	static inline var EVENT_DIALOG_START = 0x0021;
	/**
	 * A dialog box has been closed.
	 */
	static inline var EVENT_DIALOG_END = 0x0022;
	/**
	 * Scrolling has started on a scroll bar.
	 */
	static inline var EVENT_SCROLLING_START = 0x0023;
	/**
	 * Scrolling has ended on a scroll bar.
	 */
	static inline var EVENT_SCROLLING_END = 0x0024;
	/**
	 * A window object is about to be minimized or maximized.
	 */
	static inline var EVENT_MINIMIZE_START = 0x0025;
	/**
	 * A window object has been minimized or maximized.
	 */
	static inline var EVENT_MINIMIZE_END = 0x0026;
	/**
	 * The loading of the document has completed.
	 */
	static inline var EVENT_DOCUMENT_LOAD_COMPLETE = 0x0027;
	/**
	 * The document contents are being reloaded.
	 */
	static inline var EVENT_DOCUMENT_RELOAD = 0x0028;
	/**
	 * The loading of the document was interrupted.
	 */
	static inline var EVENT_DOCUMENT_LOAD_STOPPED = 0x0029;
	/**
	 * The document wide attributes of the document object have changed.
	 */
	static inline var EVENT_DOCUMENT_ATTRIBUTES_CHANGED = 0x002A;
	/**
	 * The contents of the document have changed.
	 */
	static inline var EVENT_DOCUMENT_CONTENT_CHANGED = 0x002B;
	/**
	 *  
	 */
	static inline var EVENT_PROPERTY_CHANGED = 0x002C;
	/**
	 *  
	 */
	static inline var EVENT_SELECTION_CHANGED = 0x002D;
	/**
	 * A text object's attributes changed. Also see EVENT_OBJECT_ATTRIBUTE_CHANGED.
	 */
	static inline var EVENT_TEXT_ATTRIBUTE_CHANGED = 0x002E;
	/**
	 * The caret has moved to a new position.
	 */
	static inline var EVENT_TEXT_CARET_MOVED = 0x002F;
	/**
	 * This event indicates general text changes. That is, changes to text that is exposed through the <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/IAccessibleText" title="">IAccessibleText</a></code> and <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/IAccessibleEditableText" title="">IAccessibleEditableText</a></code> interfaces.
	 */
	static inline var EVENT_TEXT_CHANGED = 0x0030;
	/**
	 * Text was inserted.
	 */
	static inline var EVENT_TEXT_INSERTED = 0x0031;
	/**
	 * Text was removed.
	 */
	static inline var EVENT_TEXT_REMOVED = 0x0032;
	/**
	 * Text was updated.
	 */
	static inline var EVENT_TEXT_UPDATED = 0x0033;
	/**
	 * The text selection changed.
	 */
	static inline var EVENT_TEXT_SELECTION_CHANGED = 0x0034;
	/**
	 * A visible data event indicates the change of the visual appearance of an accessible object. This includes for example most of the attributes available via the <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/IAccessibleComponent" title="">IAccessibleComponent</a></code> interface.
	 */
	static inline var EVENT_VISIBLE_DATA_CHANGED = 0x0035;
	/**
	 * The caret moved from one column to the next.
	 */
	static inline var EVENT_TEXT_COLUMN_CHANGED = 0x0036;
	/**
	 * The caret moved from one section to the next.
	 */
	static inline var EVENT_SECTION_CHANGED = 0x0037;
	/**
	 * A table caption changed.
	 */
	static inline var EVENT_TABLE_CAPTION_CHANGED = 0x0038;
	/**
	 * A table's data changed.
	 */
	static inline var EVENT_TABLE_MODEL_CHANGED = 0x0039;
	/**
	 * A table's summary changed.
	 */
	static inline var EVENT_TABLE_SUMMARY_CHANGED = 0x003A;
	/**
	 * A table's row description changed.
	 */
	static inline var EVENT_TABLE_ROW_DESCRIPTION_CHANGED = 0x003B;
	/**
	 * A table's row header changed.
	 */
	static inline var EVENT_TABLE_ROW_HEADER_CHANGED = 0x003C;
	/**
	 *  
	 */
	static inline var EVENT_TABLE_ROW_INSERT = 0x003D;
	/**
	 *  
	 */
	static inline var EVENT_TABLE_ROW_DELETE = 0x003E;
	/**
	 *  
	 */
	static inline var EVENT_TABLE_ROW_REORDER = 0x003F;
	/**
	 * A table's column description changed.
	 */
	static inline var EVENT_TABLE_COLUMN_DESCRIPTION_CHANGED = 0x0040;
	/**
	 * A table's column header changed.
	 */
	static inline var EVENT_TABLE_COLUMN_HEADER_CHANGED = 0x0041;
	/**
	 *  
	 */
	static inline var EVENT_TABLE_COLUMN_INSERT = 0x0042;
	/**
	 *  
	 */
	static inline var EVENT_TABLE_COLUMN_DELETE = 0x0043;
	/**
	 *  
	 */
	static inline var EVENT_TABLE_COLUMN_REORDER = 0x0044;
	/**
	 *  
	 */
	static inline var EVENT_WINDOW_ACTIVATE = 0x0045;
	/**
	 *  
	 */
	static inline var EVENT_WINDOW_CREATE = 0x0046;
	/**
	 *  
	 */
	static inline var EVENT_WINDOW_DEACTIVATE = 0x0047;
	/**
	 *  
	 */
	static inline var EVENT_WINDOW_DESTROY = 0x0048;
	/**
	 *  
	 */
	static inline var EVENT_WINDOW_MAXIMIZE = 0x0049;
	/**
	 *  
	 */
	static inline var EVENT_WINDOW_MINIMIZE = 0x004A;
	/**
	 *  
	 */
	static inline var EVENT_WINDOW_RESIZE = 0x004B;
	/**
	 *  
	 */
	static inline var EVENT_WINDOW_RESTORE = 0x004C;
	/**
	 * The ending index of this link within the containing string has changed.
	 */
	static inline var EVENT_HYPERLINK_END_INDEX_CHANGED = 0x004D;
	/**
	 * The number of anchors associated with this hyperlink object has changed.
	 */
	static inline var EVENT_HYPERLINK_NUMBER_OF_ANCHORS_CHANGED = 0x004E;
	/**
	 * The hyperlink selected state changed from selected to unselected or from unselected to selected.
	 */
	static inline var EVENT_HYPERLINK_SELECTED_LINK_CHANGED = 0x004F;
	/**
	 * One of the links associated with the hypertext object has been activated.
	 */
	static inline var EVENT_HYPERTEXT_LINK_ACTIVATED = 0x0050;
	/**
	 * One of the links associated with the hypertext object has been selected.
	 */
	static inline var EVENT_HYPERTEXT_LINK_SELECTED = 0x0051;
	/**
	 * The starting index of this link within the containing string has changed.
	 */
	static inline var EVENT_HYPERLINK_START_INDEX_CHANGED = 0x0052;
	/**
	 * Focus has changed from one hypertext object to another, or focus moved from a non-hypertext object to a hypertext object, or focus moved from a hypertext object to a non-hypertext object.
	 */
	static inline var EVENT_HYPERTEXT_CHANGED = 0x0053;
	/**
	 * The number of hyperlinks associated with a hypertext object changed.
	 */
	static inline var EVENT_HYPERTEXT_NLINKS_CHANGED = 0x0054;
	/**
	 *  <p>An object's attributes changed. Also see EVENT_TEXT_ATTRIBUTE_CHANGED.</p> <div class="blockIndicator geckoMinVer standardNote standardNoteBlock"> 
	 *   <div style="text-align: center; font-weight: bold; padding-bottom: 0.5em;">Gecko 1.9.2 note</div> 
	 *   <div>This event is never sent in versions of Gecko prior to 1.9.2, even though the constant existed.</div> 
	 * </div>
	 */
	static inline var EVENT_OBJECT_ATTRIBUTE_CHANGED = 0x0055;
	/**
	 * A slide changed in a presentation document or a page boundary was crossed in a word processing document.
	 */
	static inline var EVENT_PAGE_CHANGED = 0x0056;
	/**
	 * Help make sure event map does not get out-of-line.
	 */
	static inline var EVENT_LAST_ENTRY = 0x0057;
	
	/**
	 * The nsIAccessible associated with the event. May return null if no accessible is available. Read only.
	 */
	var accessible : NsIAccessible;
	/**
	 * The nsIAccessibleDocument that the event target nsIAccessible resides in. This can be used to get the DOM window, the DOM document and the window handler, among other things. Read only.
	 */
	var accessibleDocument : NsIAccessibleDocument;
	/**
	 * The nsIDOMNode associated with the event. May return null if accessible for event has been shut down. Read only.
	 */
	var DOMNode : NsIDOMNode;
	/**
	 * The type of event, based on the enumerated event values defined in this interface. Read only.
	 */
	var eventType : ULong;
	/**
	 * Returns true if the event was caused by explicit user input, as opposed to purely originating from a timer or mouse movement.
	 */
	var isFromUserInput : Bool;
}
