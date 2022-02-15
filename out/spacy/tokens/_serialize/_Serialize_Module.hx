/* This file is generated, do not edit! */
package spacy.tokens._serialize;
@:pythonImport("spacy.tokens._serialize") extern class _Serialize_Module {
	static public var ALL_ATTRS : Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var IDS : Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterator(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var ORTH : Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var SPACY : Dynamic;
	static public function Set(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Ensure string is converted to a Path.
		
		path (Any): Anything. If string, it's converted to Path.
		RETURNS: Path or original argument.
	**/
	static public function ensure_path(path:Dynamic):Dynamic;
	/**
		intify_attr(name)
		
		Normalize an attribute name, converting it to int.
		
		stringy_attr (string): Attribute string name. Can also be int (will then be left unchanged)
		RETURNS (int): int representation of the attribute, or None if it couldn't be converted.
	**/
	static public function intify_attr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function merge_bins(bins:Dynamic):Dynamic;
	static public function pickle_bin(doc_bin:Dynamic):Dynamic;
	static public function unpickle_bin(byte_string:Dynamic):Dynamic;
}