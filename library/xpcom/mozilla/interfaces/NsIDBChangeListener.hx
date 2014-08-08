package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDBChangeListener") extern class NsIDBChangeListener
{
	function onHdrFlagsChanged(aHdrChanged:NsIMsgDBHdr, aOldFlags:ULong, aNewFlags:ULong, aInstigator:NsIDBChangeListener) : Void;
	function onHdrDeleted(aHdrChanged:NsIMsgDBHdr, aParentKey:NsMsgKey, aFlags:Long, aInstigator:NsIDBChangeListener) : Void;
	function onHdrAdded(aHdrChanged:NsIMsgDBHdr, aParentKey:NsMsgKey, aFlags:Long, aInstigator:NsIDBChangeListener) : Void;
	function onParentChanged(aKeyChanged:NsMsgKey, oldParent:NsMsgKey, newParent:NsMsgKey, aInstigator:NsIDBChangeListener) : Void;
	function onAnnouncerGoingAway(instigator:NsIDBChangeAnnouncer) : Void;
	function onReadChanged(aInstigator:NsIDBChangeListener) : Void;
	function onJunkScoreChanged(aInstigator:NsIDBChangeListener) : Void;
	function onHdrPropertyChanged(aHdrToChange:NsIMsgDBHdr, aOldFlags:ULong, aPreChange:PRBool, aStatus:{value:PRUint32}, aInstigator:NsIDBChangeListener) : Void;
	function onEvent(aDB:NsIMsgDatabase, aEvent:String) : Void;
}
