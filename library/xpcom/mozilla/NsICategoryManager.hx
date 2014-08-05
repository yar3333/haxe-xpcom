package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsICategoryManager") extern class NsICategoryManager extends NsISupports
{
	public static inline function getService() : NsICategoryManager return Components.classes[cast "@mozilla.org/categorymanager;1"].getService(Components.interfaces.nsICategoryManager);
	
	function addCategoryEntry(aCategory:String, aEntry:String, aValue:String, aPersist:Bool, aReplace:Bool) : String;
	function deleteCategory(aCategory:String) : Void;
	function deleteCategoryEntry(aCategory:String, aEntry:String, aPersist:Bool) : Void;
	function enumerateCategories() : NsISimpleEnumerator;
	function enumerateCategory(aCategory:String) : NsISimpleEnumerator;
	function getCategoryEntry(aCategory:String, aEntry:String) : String;
}
