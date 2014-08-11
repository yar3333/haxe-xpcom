package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAccessibleStates") extern class NsIAccessibleStates extends NsISupports
{
	/**
	 * The object is unavailable, that is disabled.
	 */
	static inline var STATE_UNAVAILABLE = 0x00000001;
	/**
	 * The object is selected, That is it indicates this object is the child of an object that allows its children to be selected and that this child is one of those children that has been selected.
	 */
	static inline var STATE_SELECTED = 0x00000002;
	/**
	 * The object is focused.
	 */
	static inline var STATE_FOCUSED = 0x00000004;
	/**
	 * The object is pressed.
	 */
	static inline var STATE_PRESSED = 0x00000008;
	/**
	 * The object is checked.
	 */
	static inline var STATE_CHECKED = 0x00000010;
	/**
	 * Indicates that the state of a three-state check box or toolbar button is not determined. The check box is neither checked nor unchecked and is therefore in the third or mixed state.
	 */
	static inline var STATE_MIXED = 0x00000020;
	/**
	 * The object is designated read-only.
	 */
	static inline var STATE_READONLY = 0x00000040;
	/**
	 * The object is hot-tracked by the mouse, which means that its appearance has changed to indicate that the mouse pointer is located over it. Currently unused.
	 */
	static inline var STATE_HOTTRACKED = 0x00000080;
	/**
	 * This state represents the default button in a window.
	 */
	static inline var STATE_DEFAULT = 0x00000100;
	/**
	 * Children of this object that have the ROLE_OUTLINEITEM role are displayed. (See <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIAccessibleRole#Constants">nsIAccessibleRole.Constants</a></code>).
	 */
	static inline var STATE_EXPANDED = 0x00000200;
	/**
	 * Children of this object that have the ROLE_OUTLINEITEM role are hidden. (See <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIAccessibleRole#Constants">nsIAccessibleRole.Constants</a></code>).
	 */
	static inline var STATE_COLLAPSED = 0x00000400;
	/**
	 * The control cannot accept input at this time.
	 */
	static inline var STATE_BUSY = 0x00000800;
	/**
	 * Children "owned" not "contained" by parent.
	 */
	static inline var STATE_FLOATING = 0x00001000;
	/**
	 * The object is scrolling or moving text or graphics.
	 */
	static inline var STATE_MARQUEED = 0x00002000;
	/**
	 * The object's appearance changes rapidly or constantly. Graphics that are occasionally animated are described as ROLE_GRAPHIC (See <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIAccessibleRole#Constants">nsIAccessibleRole.Constants</a></code>) with the State property set to STATE_ANIMATED. This state is used to indicate that the object's location is changing.
	 */
	static inline var STATE_ANIMATED = 0x00004000;
	/**
	 * The object is programmatically hidden. For example, menu items are programmatically hidden until a user activates the menu. Because objects with this state are not available to users, client applications should not communicate information about the object to users. However, if client applications find an object with this state, they should check to see if STATE_OFFSCREEN is also set. If this second state is defined, then clients can communicate the information about the object to users. For example, a list box can have both STATE_INVISIBLE and STATE_OFFSCREEN set. In this case, the client application can communicate all items in the list to users.
	 */
	static inline var STATE_INVISIBLE = 0x00008000;
	/**
	 * Scrolled off.
	 */
	static inline var STATE_OFFSCREEN = 0x00010000;
	/**
	 * The object can be resized. For example, a user could change the size of a window by clicking the border with a mouse and dragging the mouse.
	 */
	static inline var STATE_SIZEABLE = 0x00020000;
	/**
	 * The object can be moved. For example, a user can click on the titlebar for the object and drag the object to a new location.
	 */
	static inline var STATE_MOVEABLE = 0x00040000;
	/**
	 * The object or child uses text-to-speech (TTS) technology for description purposes. A speech-based accessibility aid does not announce information when an object with this state has the focus because the object automatically announces information. Currently unused.
	 */
	static inline var STATE_SELFVOICING = 0x00080000;
	/**
	 * The object can be focused.
	 */
	static inline var STATE_FOCUSABLE = 0x00100000;
	/**
	 * The object can be selected.
	 */
	static inline var STATE_SELECTABLE = 0x00200000;
	/**
	 * The object is formatted as a hyperlink. The object role will usually be ROLE_TEXT_LEAF. (See <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIAccessibleRole#Constants">nsIAccessibleRole.Constants</a></code>).
	 */
	static inline var STATE_LINKED = 0x00400000;
	/**
	 * The object is a hyperlink that has been visited (previously clicked) by a user.
	 */
	static inline var STATE_TRAVERSED = 0x00800000;
	/**
	 * Supports multiple selection.
	 */
	static inline var STATE_MULTISELECTABLE = 0x01000000;
	/**
	 * Supports extended selection.
	 */
	static inline var STATE_EXTSELECTABLE = 0x02000000;
	/**
	 * This information is of low priority.
	 */
	static inline var STATE_ALERT_LOW = 0x04000000;
	/**
	 * This information is of medium priority.
	 */
	static inline var STATE_ALERT_MEDIUM = 0x08000000;
	/**
	 * This information is of high priority.
	 */
	static inline var STATE_ALERT_HIGH = 0x10000000;
	/**
	 * Maps to Gnome's Role* ATK_ROLE_PASSWD_TEXT, nothing for Java?
	 */
	static inline var STATE_PROTECTED = 0x20000000;
	/**
	 * New in MSAA 2.0.
	 */
	static inline var STATE_HASPOPUP = 0x40000000;
	/**
	 * For editable areas that have any kind of auto completion.
	 */
	static inline var EXT_STATE_SUPPORTS_AUTOCOMPLETION = 0x00000001;
	/**
	 * Object no longer exists.
	 */
	static inline var EXT_STATE_DEFUNCT = 0x00000002;
	/**
	 * For text which is selectable, object must implement <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIAccessibleText" title="">nsIAccessibleText</a></code>.
	 */
	static inline var EXT_STATE_SELECTABLE_TEXT = 0x00000004;
	/**
	 * Implements <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIAccessibleEditableText" title="">nsIAccessibleEditableText</a></code>.
	 */
	static inline var EXT_STATE_EDITABLE = 0x00000008;
	/**
	 * This window is currently the active window.
	 */
	static inline var EXT_STATE_ACTIVE = 0x00000010;
	/**
	 * Must do something with control before leaving it.
	 */
	static inline var EXT_STATE_MODAL = 0x00000020;
	/**
	 * Edit control that can take multiple lines.
	 */
	static inline var EXT_STATE_MULTI_LINE = 0x00000040;
	/**
	 * Uses horizontal layout.
	 */
	static inline var EXT_STATE_HORIZONTAL = 0x00000080;
	/**
	 * Indicates this object paints every pixel within its rectangular region.
	 */
	static inline var EXT_STATE_OPAQUE = 0x00000100;
	/**
	 * This text object can only contain 1 line of text.
	 */
	static inline var EXT_STATE_SINGLE_LINE = 0x00000200;
	static inline var EXT_STATE_TRANSIENT = 0x00000400;
	/**
	 * Especially used for sliders and scrollbars.
	 */
	static inline var EXT_STATE_VERTICAL = 0x00000800;
	/**
	 * Object not dead, but not up-to-date either.
	 */
	static inline var EXT_STATE_STALE = 0x00001000;
	/**
	 * A widget that is not unavailable.
	 */
	static inline var EXT_STATE_ENABLED = 0x00002000;
	/**
	 * Same as EXT_STATE_ENABLED for now.
	 */
	static inline var EXT_STATE_SENSITIVE = 0x00004000;
	/**
	 * If COLLAPSED or EXPANDED.
	 */
	static inline var EXT_STATE_EXPANDABLE = 0x00008000;
}
