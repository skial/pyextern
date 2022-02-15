/* This file is generated, do not edit! */
package spacy.vocab;
@:pythonImport("spacy.vocab") extern class Vocab_Module {
	static public var BASE_NORMS : Dynamic;
	static public var IS_STOP : Dynamic;
	static public var LEX_ATTRS : Dynamic;
	static public var NORM : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __pyx_capi__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		__pyx_unpickle_Vocab(__pyx_type, long __pyx_checksum, __pyx_state)
	**/
	static public function __pyx_unpickle_Vocab(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		create_vocab(lang, defaults, vectors_name=None)
	**/
	static public function create_vocab(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function get_array_module(arr:Dynamic):Dynamic;
	/**
		Get the current backend object.
	**/
	static public function get_current_ops():Dynamic;
	static public function get_lang(text:Dynamic, ?lang:Dynamic):Dynamic;
	/**
		intify_attrs(stringy_attrs, strings_map=None, _do_deprecated=False)
		
		Normalize a dictionary of attributes, converting them to ints.
		
		stringy_attrs (dict): Dictionary keyed by attribute string names. Values
		    can be ints or strings.
		strings_map (StringStore): Defaults to None. If provided, encodes string
		    values into ints.
		RETURNS (dict): Attributes dictionary with keys and optionally values
		    converted to ints.
	**/
	static public function intify_attrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_stop(string:Dynamic, ?stops:Dynamic):Dynamic;
	/**
		pickle_vocab(vocab)
	**/
	static public function pickle_vocab(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		unpickle_vocab(sstore, vectors, morphology, _unused_object, lex_attr_getters, lookups, get_noun_chunks)
	**/
	static public function unpickle_vocab(args:haxe.extern.Rest<Dynamic>):Dynamic;
}