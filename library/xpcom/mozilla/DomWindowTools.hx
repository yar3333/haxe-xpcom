package xpcom.mozilla;

class DomWindowTools
{
	public static inline function queryInterface<T>(window:js.html.Window, interfaceType:Class<T>) : T
	{
		return (cast window).QueryInterface(interfaceType);
	}
}