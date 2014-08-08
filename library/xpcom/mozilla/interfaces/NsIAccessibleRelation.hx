package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAccessibleRelation") extern class NsIAccessibleRelation extends NsISupports
{
	/**
	 *  
	 */
	static inline var RELATION_NUL = 0x00;
	/**
	 * Some attribute of this object is affected by a target object.
	 */
	static inline var RELATION_CONTROLLED_BY = 0x01;
	/**
	 * This object is interactive and controls some attribute of a target object.
	 */
	static inline var RELATION_CONTROLLER_FOR = 0x02;
	/**
	 * This object is label for a target object.
	 */
	static inline var RELATION_LABEL_FOR = 0x03;
	/**
	 * 
	 *         <p>This object is labelled by a target object. If the accessible has an <code><a class="new" href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIAccessible#name()">nsIAccessible.name()</a></code> , you can get the <code><a class="new" href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIAccessible" title="">nsIAccessible</a></code> that it was labelled by in order to get more formatting information.</p>
	 *         <div>
	 *           <div class="note"><strong>Note:</strong> The label and description (see RELATION_DESCRIBED_BY) relations may be used to prevent redundant information from being presented by the screen reader, since the label and description can occur both on their own, and in the name or description fields of an <code><a class="new" href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIAccessible" title="">nsIAccessible</a></code>.</div></div>
	 *       
	 */
	static inline var RELATION_LABELLED_BY = 0x04;
	/**
	 * This object is a member of a group of one or more objects. When there is more than one object in the group each member may have one and the same target, for example a grouping object. It is also possible that each member has multiple additional targets, for example one for every other member in the group.
	 */
	static inline var RELATION_MEMBER_OF = 0x05;
	/**
	 * This object is a child of a target object.
	 */
	static inline var RELATION_NODE_CHILD_OF = 0x06;
	/**
	 * Content flows from this object to a target object, that is has content that flows logically to another object in a sequential way, for example text flow.
	 */
	static inline var RELATION_FLOWS_TO = 0x07;
	/**
	 * Content flows to this object from a target object, that is has content that flows logically from another object in a sequential way, for example text flow.
	 */
	static inline var RELATION_FLOWS_FROM = 0x08;
	/**
	 * This object is a sub window of a target object.
	 */
	static inline var RELATION_SUBWINDOW_OF = 0x09;
	/**
	 * This object embeds a target object. This relation can be used on the OBJID_CLIENT accessible for a top level window to show where the content areas are. It points to the accessible object corresponding to the root of content in that window. This relation is very useful for finding the content quickly, and is the proper method for finding content in <span title="(Firefox 3)">Gecko 1.9</span> and beyond.
	 */
	static inline var RELATION_EMBEDS = 0x0a;
	/**
	 * This object is embedded by a target object.
	 */
	static inline var RELATION_EMBEDDED_BY = 0x0b;
	/**
	 * This object is a transient component related to the target object. When this object is activated the target object doesn't lose focus.
	 */
	static inline var RELATION_POPUP_FOR = 0x0c;
	/**
	 * This object is a parent window of the target object.
	 */
	static inline var RELATION_PARENT_WINDOW_OF = 0x0d;
	/**
	 * 
	 *         <p>This object is described by the target object. If the accessible has an <code><a class="new" href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIAccessible#description()">nsIAccessible.description()</a></code> , you can get the <code><a class="new" href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIAccessible" title="">nsIAccessible</a></code> that it was described by in order to get more formatting information.</p>
	 *         <div class="note"><strong>Note:</strong> The label (see RELATION_LABELLED_BY) and description relations may be used to prevent redundant information from being presented by the screen reader, since the label and description can occur both on their own, and in the name or description fields of an <code><a class="new" href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIAccessible" title="">nsIAccessible</a></code>.</div>
	 */
	static inline var RELATION_DESCRIBED_BY = 0x0e;
	/**
	 * This object is describes the target object.
	 */
	static inline var RELATION_DESCRIPTION_FOR = 0x0f;
	/**
	 * Part of a form/dialog with a related default button. It is used for MSAA only, no for IA2 nor ATK/AT-SPI.
	 */
	static inline var RELATION_DEFAULT_BUTTON = 0x4000;
	
	/**
	 * Returns the type of the relation. Read only.
	 */
	var relationType : ULong;
	/**
	 * Returns the number of targets for this relation. Read only.
	 */
	var targetsCount : ULong;
	
	function getTarget(index:ULong) : NsIAccessible;
	function getTargets() : NsIArray;
}
