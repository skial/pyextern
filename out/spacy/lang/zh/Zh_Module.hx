/* This file is generated, do not edit! */
package spacy.lang.zh;
@:pythonImport("spacy.lang.zh") extern class Zh_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var DEFAULT_CONFIG : Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var LEX_ATTRS : Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var STOP_WORDS : Dynamic;
	static public var _PKUSEG_INSTALL_MSG : Dynamic;
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
	static public function _get_pkuseg_trie_data(node:Dynamic, ?path:Dynamic):Dynamic;
	static public function create_chinese_tokenizer(?segmenter:Dynamic):Dynamic;
	/**
		Load a full config from a string. Wrapper around Thinc's Config.from_str.
		
		text (str): The string config to load.
		interpolate (bool): Whether to interpolate and resolve variables.
		RETURNS (Config): The loaded config.
	**/
	static public function load_config_from_str(text:Dynamic, ?overrides:Dynamic, ?interpolate:Dynamic):Dynamic;
	static public function try_jieba_import():Dynamic;
	static public function try_pkuseg_import(pkuseg_model:Dynamic, pkuseg_user_dict:Dynamic):Dynamic;
	/**
		validate_examples(examples, method)
		Check that a batch of examples received during processing is valid.
		    This function lives here to prevent circular imports.
		
		    examples (Iterable[Examples]): A batch of examples.
		    method (str): The method name to show in error messages.
		    
	**/
	static public function validate_examples(args:haxe.extern.Rest<Dynamic>):Dynamic;
}