package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAccessibleRole") extern class NsIAccessibleRole extends NsISupports
{
	/**
	 * Used when accessible has no strong defined role.
	 */
	static inline var ROLE_NOTHING = 0;
	/**
	 * Represents a title or caption bar for a window. It is used by MSAA only, supported automatically by MS Windows.
	 */
	static inline var ROLE_TITLEBAR = 1;
	/**
	 * Represents the menu bar (positioned beneath the title bar of a window) from which menus are selected by the user. The role is used by xul:menubar or role="menubar".
	 */
	static inline var ROLE_MENUBAR = 2;
	/**
	 * Represents a vertical or horizontal scroll bar, which is part of the client area or used in a control.
	 */
	static inline var ROLE_SCROLLBAR = 3;
	/**
	 * Represents a special mouse pointer, which allows a user to manipulate user interface elements such as windows. For example, a user clicks and drags a sizing grip in the lower-right corner of a window to resize it.
	 */
	static inline var ROLE_GRIP = 4;
	/**
	 * Represents a system sound, which is associated with various system events.
	 */
	static inline var ROLE_SOUND = 5;
	/**
	 * Represents the system mouse pointer.
	 */
	static inline var ROLE_CURSOR = 6;
	/**
	 * Represents the system caret. The role is supported for caret.
	 */
	static inline var ROLE_CARET = 7;
	/**
	 * Represents an alert or a condition that a user should be notified about. Assistive Technologies typically respond to the role by reading the entire on screen contents of containers advertising this role. Should be used for warning dialogs, etc. The role is used by xul:browsermessage, role="alert", xforms:message.
	 */
	static inline var ROLE_ALERT = 8;
	/**
	 * Represents the window frame, which contains child objects such as a title bar, client, and other objects contained in a window. The role is supported automatically by MS Windows.
	 */
	static inline var ROLE_WINDOW = 9;
	/**
	 * A sub-document or iframe.
	 */
	static inline var ROLE_INTERNAL_FRAME = 10;
	/**
	 * Represents a menu, which presents a list of options from which the user can make a selection to perform an action. It is used for role="menu".
	 */
	static inline var ROLE_MENUPOPUP = 11;
	/**
	 * Represents a menu item, which is an entry in a menu that a user can choose to carry out a command, select an option. It is used for xul:menuitem, role="menuitem".
	 */
	static inline var ROLE_MENUITEM = 12;
	/**
	 * Represents a ToolTip that provides helpful hints.
	 */
	static inline var ROLE_TOOLTIP = 13;
	/**
	 * Represents a main window for an application. It is used for role="application". Also refer to ROLE_APP_ROOT.
	 */
	static inline var ROLE_APPLICATION = 14;
	/**
	 * Represents a document window. A document window is always contained within an application window. It is used for role="document".
	 */
	static inline var ROLE_DOCUMENT = 15;
	/**
	 * Represents a pane within a frame or document window. Users can navigate between panes and within the contents of the current pane, but cannot navigate between items in different panes. Thus, panes represent a level of grouping lower than frame windows or documents, but above individual controls. It is used for the first child of a or iframe.
	 */
	static inline var ROLE_PANE = 16;
	/**
	 * Represents a graphical image used to represent data.
	 */
	static inline var ROLE_CHART = 17;
	/**
	 * Represents a dialog box or message box. It is used for xul:dialog, role="dialog".
	 */
	static inline var ROLE_DIALOG = 18;
	/**
	 * Represents a window border.
	 */
	static inline var ROLE_BORDER = 19;
	/**
	 * Logically groups other objects. There is not always a parent-child relationship between the grouping object and the objects it contains. It is used for html:textfield, xul:groupbox, role="group".
	 */
	static inline var ROLE_GROUPING = 20;
	/**
	 * Used to visually divide a space into two regions, such as a separator menu item or a bar that divides split panes within a window. It is used for xul:separator, html:hr, role="separator".
	 */
	static inline var ROLE_SEPARATOR = 21;
	/**
	 * Represents a toolbar, which is a grouping of controls (push buttons or toggle buttons) that provides easy access to frequently used features. It is used for xul:toolbar, role="toolbar".
	 */
	static inline var ROLE_TOOLBAR = 22;
	/**
	 * Represents a status bar, which is an area at the bottom of a window that displays information about the current operation, state of the application, or selected object. The status bar has multiple fields, which display different kinds of information. It is used for xul:statusbar.
	 */
	static inline var ROLE_STATUSBAR = 23;
	/**
	 * Represents a table that contains rows and columns of cells, and optionally, row headers and column headers. It is used for html:table, role="grid". Also refer to the following roles: ROLE_COLUMNHEADER, ROLE_ROWHEADER, ROLE_COLUMN, ROLE_ROW, ROLE_CELL.
	 */
	static inline var ROLE_TABLE = 24;
	/**
	 * Represents a column header, providing a visual label for a column in a table. It is used for XUL tree column headers, html:th, role="colheader". Also refer to ROLE_TABLE.
	 */
	static inline var ROLE_COLUMNHEADER = 25;
	/**
	 * Represents a row header, which provides a visual label for a table row. It is used for role="rowheader". Also, see ROLE_TABLE.
	 */
	static inline var ROLE_ROWHEADER = 26;
	/**
	 * Represents a column of cells within a table. Also, see ROLE_TABLE.
	 */
	static inline var ROLE_COLUMN = 27;
	/**
	 * Represents a row of cells within a table. Also, see ROLE_TABLE.
	 */
	static inline var ROLE_ROW = 28;
	/**
	 * Represents a cell within a table. It is used for html:td, xul:tree cell and xul:listcell. Also, see ROLE_TABLE.
	 */
	static inline var ROLE_CELL = 29;
	/**
	 * Represents a link to something else. This object might look like text or a graphic, but it acts like a button. It is used for xul:label@class="text-link", html:a, html:area, xforms:trigger@appearance="minimal".
	 */
	static inline var ROLE_LINK = 30;
	/**
	 * Displays a Help topic in the form of a ToolTip or Help balloon.
	 */
	static inline var ROLE_HELPBALLOON = 31;
	/**
	 * Represents a cartoon-like graphic object, such as Microsoft Office Assistant, which is displayed to provide help to users of an application.
	 */
	static inline var ROLE_CHARACTER = 32;
	/**
	 * Represents a list box, allowing the user to select one or more items. It is used for xul:listbox, html:select@size, role="list". See also ROLE_LIST_ITEM.
	 */
	static inline var ROLE_LIST = 33;
	/**
	 * Represents an item in a list. See also ROLE_LIST.
	 */
	static inline var ROLE_LISTITEM = 34;
	/**
	 * Represents an outline or tree structure, such as a tree view control, that displays a hierarchical list and allows the user to expand and collapse branches. Is is used for role="tree".
	 */
	static inline var ROLE_OUTLINE = 35;
	/**
	 * Represents an item in an outline or tree structure. It is used for role="treeitem".
	 */
	static inline var ROLE_OUTLINEITEM = 36;
	/**
	 * Represents a page tab, it is a child of a page tab list. It is used for xul:tab, role="treeitem". Also refer to ROLE_PAGETABLIST.
	 */
	static inline var ROLE_PAGETAB = 37;
	/**
	 * Represents a property sheet. It is used for xul:tabpanel, role="tabpanel".
	 */
	static inline var ROLE_PROPERTYPAGE = 38;
	/**
	 * Represents an indicator, such as a pointer graphic, that points to the current item.
	 */
	static inline var ROLE_INDICATOR = 39;
	/**
	 * Represents a picture. Is is used for xul:image, html:img.
	 */
	static inline var ROLE_GRAPHIC = 40;
	/**
	 * Represents read-only text, such as labels for other controls or instructions in a dialog box. Static text cannot be modified or selected. Is is used for xul:label, xul:description, html:label, role="label", or xforms:output.
	 */
	static inline var ROLE_STATICTEXT = 41;
	/**
	 * Represents selectable text that allows edits or is designated read-only.
	 */
	static inline var ROLE_TEXT_LEAF = 42;
	/**
	 * Represents a push button control. It is used for xul:button, html:button, role="button", xforms:trigger, xforms:submit.
	 */
	static inline var ROLE_PUSHBUTTON = 43;
	/**
	 * Represents a check box control. It is used for xul:checkbox, html:input@type="checkbox", role="checkbox", boolean xforms:input.
	 */
	static inline var ROLE_CHECKBUTTON = 44;
	/**
	 * Represents an option button, also called a radio button. It is one of a group of mutually exclusive options. All objects sharing a single parent that have this attribute are assumed to be part of single mutually exclusive group. It is used for xul:radio, html:input@type="radio", role="radio".
	 */
	static inline var ROLE_RADIOBUTTON = 45;
	/**
	 * Represents a combo box; an edit control with an associated list box that provides a set of predefined choices. It is used for html:select, xul:menulist, role="combobox".
	 */
	static inline var ROLE_COMBOBOX = 46;
	/**
	 * Represents the calendar control. It is used for date xforms:input.
	 */
	static inline var ROLE_DROPLIST = 47;
	/**
	 * Represents a progress bar, dynamically showing the user the percent complete of an operation in progress. It is used for xul:progressmeter, role="progressbar".
	 */
	static inline var ROLE_PROGRESSBAR = 48;
	/**
	 * Represents a dial or knob whose purpose is to allow a user to set a value.
	 */
	static inline var ROLE_DIAL = 49;
	/**
	 * Represents a hot-key field that allows the user to enter a combination or sequence of keystrokes.
	 */
	static inline var ROLE_HOTKEYFIELD = 50;
	/**
	 * Represents a slider, which allows the user to adjust a setting in given increments between minimum and maximum values. It is used by xul:scale, role="slider", xforms:range.
	 */
	static inline var ROLE_SLIDER = 51;
	/**
	 * Represents a spin box, which is a control that allows the user to increment or decrement the value displayed in a separate "buddy" control associated with the spin box. It is used for xul:spinbuttons.
	 */
	static inline var ROLE_SPINBUTTON = 52;
	/**
	 * Represents a graphical image used to diagram data. It is used for svg:svg.
	 */
	static inline var ROLE_DIAGRAM = 53;
	/**
	 * Represents an animation control, which contains content that changes over time, such as a control that displays a series of bitmap frames.
	 */
	static inline var ROLE_ANIMATION = 54;
	/**
	 * Represents a mathematical equation. It is used by MATHML, where there is a rich DOM subtree for an equation. Use ROLE_FLAT_EQUATION for <img alt="[TeX]" />
	 */
	static inline var ROLE_EQUATION = 55;
	/**
	 * Represents a button that drops down a list of items.
	 */
	static inline var ROLE_BUTTONDROPDOWN = 56;
	/**
	 * Represents a button that drops down a menu.
	 */
	static inline var ROLE_BUTTONMENU = 57;
	/**
	 * Represents a button that drops down a grid. It is used for xul:colorpicker.
	 */
	static inline var ROLE_BUTTONDROPDOWNGRID = 58;
	/**
	 * Represents blank space between other objects.
	 */
	static inline var ROLE_WHITESPACE = 59;
	/**
	 * Represents a container of page tab controls. Is it used for xul:tabs, DHTML: role="tabs". Also refer to ROLE_PAGETAB.
	 */
	static inline var ROLE_PAGETABLIST = 60;
	/**
	 * Represents a control that displays time.
	 */
	static inline var ROLE_CLOCK = 61;
	/**
	 * Represents a button on a toolbar that has a drop-down list icon directly adjacent to the button.
	 */
	static inline var ROLE_SPLITBUTTON = 62;
	/**
	 * Represents an edit control designed for an Internet Protocol (IP) address. The edit control is divided into sections for the different parts of the IP address.
	 */
	static inline var ROLE_IPADDRESS = 63;
	/**
	 * Represents a label control that has an accelerator.
	 */
	static inline var ROLE_ACCEL_LABEL = 64;
	/**
	 * Represents an arrow in one of the four cardinal directions.
	 */
	static inline var ROLE_ARROW = 65;
	/**
	 * Represents a control that can be drawn into and is used to trap events. It is used for html:canvas.
	 */
	static inline var ROLE_CANVAS = 66;
	/**
	 * Represents a menu item with a check box.
	 */
	static inline var ROLE_CHECK_MENU_ITEM = 67;
	/**
	 * Represents a specialized dialog that lets the user choose a color.
	 */
	static inline var ROLE_COLOR_CHOOSER = 68;
	/**
	 * Represents control whose purpose is to allow a user to edit a date.
	 */
	static inline var ROLE_DATE_EDITOR = 69;
	/**
	 * An iconified internal frame in an ROLE_DESKTOP_PANE. Also refer to ROLE_INTERNAL_FRAME.
	 */
	static inline var ROLE_DESKTOP_ICON = 70;
	/**
	 * A desktop pane. A pane that supports internal frames and iconified versions of those internal frames.
	 */
	static inline var ROLE_DESKTOP_FRAME = 71;
	/**
	 * A directory pane. A pane that allows the user to navigate through and select the contents of a directory. May be used by a file chooser. Also refer to ROLE_FILE_CHOOSER.
	 */
	static inline var ROLE_DIRECTORY_PANE = 72;
	/**
	 * A file chooser. A specialized dialog that displays the files in the directory and lets the user select a file, browse a different directory, or specify a filename. May use the directory pane to show the contents of a directory. Also refer to ROLE_DIRECTORY_PANE.
	 */
	static inline var ROLE_FILE_CHOOSER = 73;
	/**
	 * A font chooser. A font chooser is a component that lets the user pick various attributes for fonts.
	 */
	static inline var ROLE_FONT_CHOOSER = 74;
	/**
	 * Frame role. A top level window with a title bar, border, menu bar, etc. It is often used as the primary window for an application.
	 */
	static inline var ROLE_CHROME_WINDOW = 75;
	/**
	 * A glass pane. A pane that is guaranteed to be painted on top of all panes beneath it. Also refer to ROLE_ROOT_PANE.
	 */
	static inline var ROLE_GLASS_PANE = 76;
	/**
	 * A document container for HTML, whose children represent the document content.
	 */
	static inline var ROLE_HTML_CONTAINER = 77;
	/**
	 * A small fixed size picture, typically used to decorate components.
	 */
	static inline var ROLE_ICON = 78;
	/**
	 * Presents an icon or short string in an interface.
	 */
	static inline var ROLE_LABEL = 79;
	/**
	 * A layered pane. A specialized pane that allows its children to be drawn in layers, providing a form of stacking order. This is usually the pane that holds the menu bar as well as the pane that contains most of the visual components in a window. Also refer to ROLE_GLASS_PANE and ROLE_ROOT_PANE.
	 */
	static inline var ROLE_LAYERED_PANE = 80;
	/**
	 * A specialized pane whose primary use is inside a dialog.
	 */
	static inline var ROLE_OPTION_PANE = 81;
	/**
	 * A text object uses for passwords, or other places where the text content is not shown visibly to the user.
	 */
	static inline var ROLE_PASSWORD_TEXT = 82;
	/**
	 * A temporary window that is usually used to offer the user a list of choices, and then hides when the user selects one of those choices.
	 */
	static inline var ROLE_POPUP_MENU = 83;
	/**
	 * A radio button that is a menu item.
	 */
	static inline var ROLE_RADIO_MENU_ITEM = 84;
	/**
	 * A root pane. A specialized pane that has a glass pane and a layered pane as its children. Also refer to ROLE_GLASS_PANE and ROLE_LAYERED_PANE.
	 */
	static inline var ROLE_ROOT_PANE = 85;
	/**
	 * A scroll pane. An object that allows a user to incrementally view a large amount of information. Its children can include scroll bars and a viewport. Also refer to ROLE_VIEW_PORT.
	 */
	static inline var ROLE_SCROLL_PANE = 86;
	/**
	 * A split pane. A specialized panel that presents two other panels at the same time. Between the two panels is a divider the user can manipulate to make one panel larger and the other panel smaller.
	 */
	static inline var ROLE_SPLIT_PANE = 87;
	/**
	 * The header for a column of a table.
	 */
	static inline var ROLE_TABLE_COLUMN_HEADER = 88;
	/**
	 * The header for a row of a table.
	 */
	static inline var ROLE_TABLE_ROW_HEADER = 89;
	/**
	 * A menu item used to tear off and reattach its menu.
	 */
	static inline var ROLE_TEAR_OFF_MENU_ITEM = 90;
	/**
	 * Represents an accessible terminal.
	 */
	static inline var ROLE_TERMINAL = 91;
	/**
	 * Collection of objects that constitute a logical text entity.
	 */
	static inline var ROLE_TEXT_CONTAINER = 92;
	/**
	 * A toggle button. A specialized push button that can be checked or unchecked, but does not provide a separate indicator for the current state.
	 */
	static inline var ROLE_TOGGLE_BUTTON = 93;
	/**
	 * Representas a control that is capable of expanding and collapsing rows as well as showing multiple columns of data.
	 */
	static inline var ROLE_TREE_TABLE = 94;
	/**
	 * A viewport. An object usually used in a scroll pane. It represents the portion of the entire data that the user can see. As the user manipulates the scroll bars, the contents of the viewport can change. Also refer to ROLE_SCROLL_PANE.
	 */
	static inline var ROLE_VIEWPORT = 95;
	/**
	 * Header of a document page. Also refer to ROLE_FOOTER.
	 */
	static inline var ROLE_HEADER = 96;
	/**
	 * Footer of a document page. Also refer to ROLE_HEADER.
	 */
	static inline var ROLE_FOOTER = 97;
	/**
	 * A paragraph of text.
	 */
	static inline var ROLE_PARAGRAPH = 98;
	/**
	 * A ruler such as those used in word processors.
	 */
	static inline var ROLE_RULER = 99;
	/**
	 * A text entry having dialog or list containing items for insertion into an entry widget, for instance a list of words for completion of a text entry. It is used for xul:textbox@autocomplete.
	 */
	static inline var ROLE_AUTOCOMPLETE = 100;
	/**
	 * An editable text object in a toolbar.
	 */
	static inline var ROLE_EDITBAR = 101;
	/**
	 * An control whose textual content may be entered or modified by the user.
	 */
	static inline var ROLE_ENTRY = 102;
	/**
	 * A caption describing another object.
	 */
	static inline var ROLE_CAPTION = 103;
	/**
	 * A visual frame or container which contains a view of document content. Document frames may occur within another Document instance, in which case the second document may be said to be embedded in the containing instance. HTML frames are often ROLE_DOCUMENT_FRAME. Either this object, or a singleton descendant, should implement the Document interface.
	 */
	static inline var ROLE_DOCUMENT_FRAME = 104;
	/**
	 * Heading.
	 */
	static inline var ROLE_HEADING = 105;
	/**
	 * An object representing a page of document content. It is used in documents which are accessed by the user on a page by page basis.
	 */
	static inline var ROLE_PAGE = 106;
	/**
	 * A container of document content. An example of the use of this role is to represent an html:div.
	 */
	static inline var ROLE_SECTION = 107;
	/**
	 * An object which is redundant with another object in the accessible hierarchy. ATs typically ignore objects with this role.
	 */
	static inline var ROLE_REDUNDANT_OBJECT = 108;
	/**
	 * A container of form controls. An example of the use of this role is to represent an html:form.
	 */
	static inline var ROLE_FORM = 109;
	/**
	 * An object which is used to allow input of characters not found on a keyboard, such as the input of Chinese characters on a Western keyboard.
	 */
	static inline var ROLE_IME = 110;
	static inline var ROLE_APP_ROOT = 111;
	/**
	 * Represents a menu item, which is an entry in a menu that a user can choose to display another menu.
	 */
	static inline var ROLE_PARENT_MENUITEM = 112;
	/**
	 * A calendar that allows the user to select a date.
	 */
	static inline var ROLE_CALENDAR = 113;
	/**
	 * A list of items that is shown by combobox.
	 */
	static inline var ROLE_COMBOBOX_LIST = 114;
	/**
	 * A item of list that is shown by combobox;
	 */
	static inline var ROLE_COMBOBOX_OPTION = 115;
	/**
	 * An image map -- has child links representing the areas.
	 */
	static inline var ROLE_IMAGE_MAP = 116;
	/**
	 * An option in a listbox.
	 */
	static inline var ROLE_OPTION = 117;
	/**
	 * A rich option in a listbox, it can have other widgets as children.
	 */
	static inline var ROLE_RICH_OPTION = 118;
	/**
	 * A list of options.
	 */
	static inline var ROLE_LISTBOX = 119;
	/**
	 * Represents a mathematical equation in the accessible name.
	 */
	static inline var ROLE_FLAT_EQUATION = 120;
	/**
	 * Represents a cell within a grid. It is used for role="gridcell". Unlike ROLE_CELL, it allows the calculation of the accessible name from subtree. Also, see ROLE_TABLE.
	 */
	static inline var ROLE_GRID_CELL = 121;
	/**
	 * Represents an embedded object. It is used for html:object or html:embed.
	 */
	static inline var ROLE_EMBEDDED_OBJECT = 122;
}
