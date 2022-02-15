/* This file is generated, do not edit! */
package spacy.pipeline._parser_internals.arc_eager;
@:pythonImport("spacy.pipeline._parser_internals.arc_eager") extern class Arc_eager_Module {
	static public var MOVE_NAMES : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	/**
		__pyx_unpickle_Break(__pyx_type, long __pyx_checksum, __pyx_state)
	**/
	static public function __pyx_unpickle_Break(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		__pyx_unpickle_LeftArc(__pyx_type, long __pyx_checksum, __pyx_state)
	**/
	static public function __pyx_unpickle_LeftArc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		__pyx_unpickle_Reduce(__pyx_type, long __pyx_checksum, __pyx_state)
	**/
	static public function __pyx_unpickle_Reduce(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		__pyx_unpickle_RightArc(__pyx_type, long __pyx_checksum, __pyx_state)
	**/
	static public function __pyx_unpickle_RightArc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		__pyx_unpickle_Shift(__pyx_type, long __pyx_checksum, __pyx_state)
	**/
	static public function __pyx_unpickle_Shift(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		_get_aligned_sent_starts(example)
		Get list of SENT_START attributes aligned to the predicted tokenization.
		    If the reference has not sentence starts, return a list of None values.
		
		    This function is slightly different from the one on Example, because we also
		    check whether the reference sentences align across multiple sentences,
		    and return missing values if they do. This prevents a problem where you have
		    the start of a sentence merged onto a token that belongs to two sentences.
		    
	**/
	static public function _get_aligned_sent_starts(args:haxe.extern.Rest<Dynamic>):Dynamic;
}