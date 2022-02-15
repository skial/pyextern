/* This file is generated, do not edit! */
package spacy.strings;
@:pythonImport("spacy.strings") extern class Strings_Module {
	static public var SYMBOLS_BY_INT : Dynamic;
	static public var SYMBOLS_BY_STR : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __pyx_capi__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		get_string_id(key)
		Get a string ID, handling the reserved symbols correctly. If the key is
		    already an ID, return it.
		
		    This function optimises for convenience over performance, so shouldn't be
		    used in tight loops.
		    
	**/
	static public function get_string_id(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		hash_string(str string) -> hash_t
	**/
	static public function hash_string(args:haxe.extern.Rest<Dynamic>):Dynamic;
}