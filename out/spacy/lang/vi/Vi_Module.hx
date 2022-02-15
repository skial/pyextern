/* This file is generated, do not edit! */
package spacy.lang.vi;
@:pythonImport("spacy.lang.vi") extern class Vi_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var DEFAULT_CONFIG : Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var LEX_ATTRS : Dynamic;
	static public var STOP_WORDS : Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function create_vietnamese_tokenizer(?use_pyvi:Dynamic):Dynamic;
	/**
		Load a full config from a string. Wrapper around Thinc's Config.from_str.
		
		text (str): The string config to load.
		interpolate (bool): Whether to interpolate and resolve variables.
		RETURNS (Config): The loaded config.
	**/
	static public function load_config_from_str(text:Dynamic, ?overrides:Dynamic, ?interpolate:Dynamic):Dynamic;
}