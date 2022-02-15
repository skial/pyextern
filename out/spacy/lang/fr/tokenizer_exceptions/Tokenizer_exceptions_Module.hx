/* This file is generated, do not edit! */
package spacy.lang.fr.tokenizer_exceptions;
@:pythonImport("spacy.lang.fr.tokenizer_exceptions") extern class Tokenizer_exceptions_Module {
	static public var ALPHA : Dynamic;
	static public var ALPHA_LOWER : Dynamic;
	static public var BASE_EXCEPTIONS : Dynamic;
	static public var ELISION : Dynamic;
	static public var FR_BASE_EXCEPTIONS : Dynamic;
	static public var HYPHENS : Dynamic;
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
	static public var _elision_prefix : Dynamic;
	static public var _exc : Dynamic;
	static public var _hyphen_combination : Dynamic;
	static public var _hyphen_prefix : Dynamic;
	static public var _infixes_exc : Dynamic;
	static public var _regular_exp : Dynamic;
	static public var elision_char : Dynamic;
	static public var exc_data : Dynamic;
	static public var hyphen_char : Dynamic;
	static public var infix : Dynamic;
	static public function lower_first_letter(text:Dynamic):Dynamic;
	static public var orig_elision : Dynamic;
	static public var orig_hyphen : Dynamic;
	static public var orth : Dynamic;
	static public var pre : Dynamic;
	static public var pronoun : Dynamic;
	static public var s : Dynamic;
	static public var token : Dynamic;
	/**
		Update and validate tokenizer exceptions. Will overwrite exceptions.
		
		base_exceptions (Dict[str, List[dict]]): Base exceptions.
		*addition_dicts (Dict[str, List[dict]]): Exceptions to add to the base dict, in order.
		RETURNS (Dict[str, List[dict]]): Combined tokenizer exceptions.
	**/
	static public function update_exc(base_exceptions:Dynamic, ?addition_dicts:python.VarArgs<Dynamic>):Dynamic;
	static public function upper_first_letter(text:Dynamic):Dynamic;
	static public var variants_infix : Dynamic;
	static public var verb : Dynamic;
}