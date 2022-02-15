/* This file is generated, do not edit! */
package spacy.lang.am;
@:pythonImport("spacy.lang.am") extern class Am_Module {
	static public var BASE_EXCEPTIONS : Dynamic;
	static public var LANG : Dynamic;
	static public var LEX_ATTRS : Dynamic;
	static public var STOP_WORDS : Dynamic;
	static public var TOKENIZER_EXCEPTIONS : Dynamic;
	static public var TOKENIZER_SUFFIXES : Dynamic;
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
	/**
		Update and validate tokenizer exceptions. Will overwrite exceptions.
		
		base_exceptions (Dict[str, List[dict]]): Base exceptions.
		*addition_dicts (Dict[str, List[dict]]): Exceptions to add to the base dict, in order.
		RETURNS (Dict[str, List[dict]]): Combined tokenizer exceptions.
	**/
	static public function update_exc(base_exceptions:Dynamic, ?addition_dicts:python.VarArgs<Dynamic>):Dynamic;
}