/* This file is generated, do not edit! */
package spacy.lang.fi.tokenizer_exceptions;
@:pythonImport("spacy.lang.fi.tokenizer_exceptions") extern class Tokenizer_exceptions_Module {
	static public var BASE_EXCEPTIONS : Dynamic;
	static public var NORM : Dynamic;
	static public var ORTH : Dynamic;
	static public var TOKENIZER_EXCEPTIONS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _exc : Dynamic;
	static public var base : Dynamic;
	static public var base_lower : Dynamic;
	static public var base_norm : Dynamic;
	static public var conj_contraction_bases : Dynamic;
	static public var conj_contraction_negations : Dynamic;
	static public var exc_data : Dynamic;
	static public var suffix : Dynamic;
	static public var suffix_norm : Dynamic;
	/**
		Update and validate tokenizer exceptions. Will overwrite exceptions.
		
		base_exceptions (Dict[str, List[dict]]): Base exceptions.
		*addition_dicts (Dict[str, List[dict]]): Exceptions to add to the base dict, in order.
		RETURNS (Dict[str, List[dict]]): Combined tokenizer exceptions.
	**/
	static public function update_exc(base_exceptions:Dynamic, ?addition_dicts:python.VarArgs<Dynamic>):Dynamic;
}