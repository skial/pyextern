/* This file is generated, do not edit! */
package spacy.pipeline.attributeruler;
@:pythonImport("spacy.pipeline.attributeruler") extern class Attributeruler_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function AttributeRulerPatternType(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var IDS : Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function MatcherPatternType(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function MorphRulesType(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function TagMapType(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Split entries from a tag map or morph rules dict into to two dicts, one
		with the token-level features (POS, LEMMA) and one with the remaining
		features, which are presumed to be individual MORPH features.
	**/
	static public function _split_morph_attrs(attrs:Dynamic):Dynamic;
	static public function attribute_ruler_score(examples:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function make_attribute_ruler(nlp:Dynamic, name:Dynamic, validate:Dynamic, scorer:Dynamic):Dynamic;
	static public function make_attribute_ruler_scorer():Dynamic;
	/**
		normalize_token_attrs(Vocab vocab, attrs)
	**/
	static public function normalize_token_attrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		set_token_attrs(Token py_token, attrs)
	**/
	static public function set_token_attrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
}