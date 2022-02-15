/* This file is generated, do not edit! */
package spacy.tokens.doc;
@:pythonImport("spacy.tokens.doc") extern class Doc_Module {
	static public var DOCBIN_ALL_ATTRS : Dynamic;
	static public var IDS : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __pyx_capi__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	static public function copy_array(dst:Dynamic, src:Dynamic):Dynamic;
	/**
		fix_attributes(doc, attributes)
	**/
	static public function fix_attributes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function get_array_module(arr:Dynamic):Dynamic;
	/**
		get_entity_info(ent_info)
	**/
	static public function get_entity_info(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Validate and convert arguments. Reused in Doc, Token and Span.
	**/
	static public function get_ext_args(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		intify_attr(name)
		
		Normalize an attribute name, converting it to int.
		
		stringy_attr (string): Attribute string name. Can also be int (will then be left unchanged)
		RETURNS (int): int representation of the attribute, or None if it couldn't be converted.
	**/
	static public function intify_attr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		pickle_doc(doc)
	**/
	static public function pickle_doc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		remove_label_if_necessary(attributes)
	**/
	static public function remove_label_if_necessary(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		unpickle_doc(vocab, hooks_and_data, bytes_data)
	**/
	static public function unpickle_doc(args:haxe.extern.Rest<Dynamic>):Dynamic;
}