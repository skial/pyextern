/* This file is generated, do not edit! */
package spacy.lang.hu.tokenizer_exceptions;
@:pythonImport("spacy.lang.hu.tokenizer_exceptions") extern class Tokenizer_exceptions_Module {
	static public var ALPHA_LOWER : Dynamic;
	static public var BASE_EXCEPTIONS : Dynamic;
	static public var CURRENCY : Dynamic;
	static public var ORTH : Dynamic;
	static public var TOKENIZER_EXCEPTIONS : Dynamic;
	/**
		Matches zero or more characters at the beginning of the string.
	**/
	static public function TOKEN_MATCH(string:Dynamic, ?pos:Dynamic, ?endpos:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _exc : Dynamic;
	static public var _num : Dynamic;
	static public var _numeric_exp : Dynamic;
	static public var _nums : Dynamic;
	static public var _ops : Dynamic;
	static public var _ord_num_or_date : Dynamic;
	static public var _suffixes : Dynamic;
	static public var _time_exp : Dynamic;
	static public var orth : Dynamic;
	static public var u : Dynamic;
	/**
		Update and validate tokenizer exceptions. Will overwrite exceptions.
		
		base_exceptions (Dict[str, List[dict]]): Base exceptions.
		*addition_dicts (Dict[str, List[dict]]): Exceptions to add to the base dict, in order.
		RETURNS (Dict[str, List[dict]]): Combined tokenizer exceptions.
	**/
	static public function update_exc(base_exceptions:Dynamic, ?addition_dicts:python.VarArgs<Dynamic>):Dynamic;
}