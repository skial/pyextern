/* This file is generated, do not edit! */
package spacy.pipeline._parser_internals.nonproj;
@:pythonImport("spacy.pipeline._parser_internals.nonproj") extern class Nonproj_Module {
	static public var DELIMITER : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		_decorate(heads, proj_heads, labels)
	**/
	static public function _decorate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_find_new_head(token, headlabel)
	**/
	static public function _find_new_head(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_get_smallest_nonproj_arc(heads)
	**/
	static public function _get_smallest_nonproj_arc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_lift(tokenid, heads)
	**/
	static public function _lift(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ancestors(tokenid, heads)
	**/
	static public function ancestors(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		contains_cycle(heads)
	**/
	static public function contains_cycle(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Shallow copy operation on arbitrary Python objects.
		
		See the module's __doc__ string for more info.
	**/
	static public function copy(x:Dynamic):Dynamic;
	/**
		count_decorated_labels(gold_data)
	**/
	static public function count_decorated_labels(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		decompose(label)
	**/
	static public function decompose(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		deprojectivize(Doc doc)
	**/
	static public function deprojectivize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		is_decorated(label)
	**/
	static public function is_decorated(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		is_nonproj_arc(tokenid, heads)
	**/
	static public function is_nonproj_arc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		is_nonproj_tree(heads)
	**/
	static public function is_nonproj_tree(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		projectivize(heads, labels)
	**/
	static public function projectivize(args:haxe.extern.Rest<Dynamic>):Dynamic;
}