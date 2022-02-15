/* This file is generated, do not edit! */
package spacy.tokens.graph;
@:pythonImport("spacy.tokens.graph") extern class Graph_Module {
	static public function Generator(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	/**
		__pyx_unpickle_Edge(__pyx_type, long __pyx_checksum, __pyx_state)
	**/
	static public function __pyx_unpickle_Edge(__pyx_type:Dynamic, __pyx_checksum:Dynamic, __pyx_state:Dynamic):Dynamic;
	/**
		__pyx_unpickle_Node(__pyx_type, long __pyx_checksum, __pyx_state)
	**/
	static public function __pyx_unpickle_Node(__pyx_type:Dynamic, __pyx_checksum:Dynamic, __pyx_state:Dynamic):Dynamic;
	/**
		__pyx_unpickle_NoneEdge(__pyx_type, long __pyx_checksum, __pyx_state)
	**/
	static public function __pyx_unpickle_NoneEdge(__pyx_type:Dynamic, __pyx_checksum:Dynamic, __pyx_state:Dynamic):Dynamic;
	/**
		__pyx_unpickle_NoneNode(__pyx_type, long __pyx_checksum, __pyx_state)
	**/
	static public function __pyx_unpickle_NoneNode(__pyx_type:Dynamic, __pyx_checksum:Dynamic, __pyx_state:Dynamic):Dynamic;
	/**
		Graph.__reduce_cython__(self)
	**/
	static public function __reduce_cython__(self:Dynamic):Dynamic;
	/**
		Graph.__setstate_cython__(self, __pyx_state)
	**/
	static public function __setstate_cython__(self:Dynamic, __pyx_state:Dynamic):Dynamic;
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
}