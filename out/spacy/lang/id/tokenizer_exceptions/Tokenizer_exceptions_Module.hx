/* This file is generated, do not edit! */
package spacy.lang.id.tokenizer_exceptions;
@:pythonImport("spacy.lang.id.tokenizer_exceptions") extern class Tokenizer_exceptions_Module {
	static public var BASE_EXCEPTIONS : Dynamic;
	static public var ID_BASE_EXCEPTIONS : Dynamic;
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
	static public var _other_exc : Dynamic;
	static public var exc_data : Dynamic;
	static public var orth : Dynamic;
	static public var orth_caps : Dynamic;
	static public var orth_first_upper : Dynamic;
	static public var orth_lower : Dynamic;
	static public var orth_title : Dynamic;
	/**
		Update and validate tokenizer exceptions. Will overwrite exceptions.
		
		base_exceptions (Dict[str, List[dict]]): Base exceptions.
		*addition_dicts (Dict[str, List[dict]]): Exceptions to add to the base dict, in order.
		RETURNS (Dict[str, List[dict]]): Combined tokenizer exceptions.
	**/
	static public function update_exc(base_exceptions:Dynamic, ?addition_dicts:python.VarArgs<Dynamic>):Dynamic;
}