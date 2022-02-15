/* This file is generated, do not edit! */
package spacy.vectors;
@:pythonImport("spacy.vectors") extern class Vectors_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		Cast a value to a type.
		
		This returns the value unchanged.  To the type checker this
		signals that the return value has the designated type, but at
		runtime we intentionally don't check anything (we want this
		to be as fast as possible).
	**/
	@:native("cast")
	static public function _cast(typ:Dynamic, val:Dynamic):Dynamic;
	static public function get_array_module(arr:Dynamic):Dynamic;
	/**
		Return CupyOps for a cupy array, NumpyOps otherwise.
	**/
	static public function get_array_ops(arr:Dynamic):Dynamic;
	/**
		Get the current backend object.
	**/
	static public function get_current_ops():Dynamic;
	/**
		get_string_id(key)
		Get a string ID, handling the reserved symbols correctly. If the key is
		    already an ID, return it.
		
		    This function optimises for convenience over performance, so shouldn't be
		    used in tight loops.
		    
	**/
	static public function get_string_id(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		unpickle_vectors(bytes_data)
	**/
	static public function unpickle_vectors(args:haxe.extern.Rest<Dynamic>):Dynamic;
}