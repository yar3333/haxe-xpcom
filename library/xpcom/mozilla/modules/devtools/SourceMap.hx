package xpcom.mozilla.modules.devtools;

private extern class SourceMap
{
	private static function __init__() : Void
	{
		Components.utils.import_("resource://gre/modules/devtools/SourceMap.jsm");
	}
}

/**
   * A SourceMapConsumer instance represents a parsed source map which we can
   * query for information about the original file positions by giving it a file
   * position in the generated source.
   *
   * The only parameter is the raw source map (either as a JSON string, or
   * already parsed to an object). According to the spec, source maps have the
   * following attributes:
   *
   *   - version: Which version of the source map spec this map is following.
   *   - sources: An array of URLs to the original source files.
   *   - names: An array of identifiers which can be referrenced by individual mappings.
   *   - sourceRoot: Optional. The URL root from which all sources are relative.
   *   - sourcesContent: Optional. An array of contents of the original source files.
   *   - mappings: A string of base64 VLQs which contain the actual mappings.
   *   - file: Optional. The generated file this source map is associated with.
   *
   * Here is an example source map, taken from the source map spec[0]:
   *
   *     {
   *       version : 3,
   *       file: "out.js",
   *       sourceRoot : "",
   *       sources: ["foo.js", "bar.js"],
   *       names: ["src", "maps", "are", "fun"],
   *       mappings: "AA,AB;;ABCDE;"
   *     }
   *
   * [0]: https://docs.google.com/document/d/1U1RGAehQwRypUTovF1KRlpiOFze0b-_2gc6fAH0KY0k/edit?pli=1#
   */
@:native("SourceMapConsumer") extern class Consumer
{
	@:overload(function(json:String):Void{})
	function new(params:{ version:Int, sources:Array<String>, names:Array<String>, ?sourceRoot:String, ?sourcesContent:Array<String>, mappings:String, ?file:String }) : Void;
	function originalPositionFor(pos:{ line:Int, column:Int }) : { source:String, line:Int, column:Int, name:String };
}
