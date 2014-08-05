package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIEditorSpellCheck") extern class NsIEditorSpellCheck extends NsISupports
{
	public static inline function createInstance() : NsIEditorSpellCheck return Components.Constructor("@mozilla.org/editor/editorspellchecker;1", Components.interfaces.nsIEditorSpellCheck);
}
