/* This file is generated, do not edit! */
package spacy.lang.en.tokenizer_exceptions;
@:pythonImport("spacy.lang.en.tokenizer_exceptions") extern class Tokenizer_exceptions_Module {
	static public var BASE_EXCEPTIONS : Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var NORM : Dynamic;
	static public var ORTH : Dynamic;
	static public var TOKENIZER_EXCEPTIONS : Dynamic;
	static public var __annotations__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _exc : Dynamic;
	static public var _exclude : Dynamic;
	static public var _other_exc : Dynamic;
	static public var data : Dynamic;
	static public var data_apos : Dynamic;
	static public var exc_data : Dynamic;
	static public var exc_data_apos : Dynamic;
	static public var exc_data_tc : Dynamic;
	static public var h : Dynamic;
	static public var orth : Dynamic;
	static public var period : Dynamic;
	static public var pron : Dynamic;
	static public var string : Dynamic;
	/**
		Update and validate tokenizer exceptions. Will overwrite exceptions.
		
		base_exceptions (Dict[str, List[dict]]): Base exceptions.
		*addition_dicts (Dict[str, List[dict]]): Exceptions to add to the base dict, in order.
		RETURNS (Dict[str, List[dict]]): Combined tokenizer exceptions.
	**/
	static public function update_exc(base_exceptions:Dynamic, ?addition_dicts:python.VarArgs<Dynamic>):Dynamic;
	static public var verb_data : Dynamic;
	static public var verb_data_tc : Dynamic;
	static public var word : Dynamic;
}