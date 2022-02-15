/* This file is generated, do not edit! */
package spacy.ml.staticvectors;
@:pythonImport("spacy.ml.staticvectors") extern class Staticvectors_Module {
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Embed Doc objects with their vocab's vectors table, applying a learned
		linear projection to control the dimensionality. If a dropout rate is
		specified, the dropout is applied per dimension over the whole batch.
	**/
	static public function StaticVectors(?nO:Dynamic, ?nM:Dynamic, ?dropout:Dynamic, ?init_W:Dynamic, ?key_attr:Dynamic):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _get_drop_mask(ops:Dynamic, nO:Dynamic, rate:Dynamic):Dynamic;
	static public function _handle_empty(ops:Dynamic, nO:Dynamic):Dynamic;
	/**
		Cast a value to a type.
		
		This returns the value unchanged.  To the type checker this
		signals that the return value has the designated type, but at
		runtime we intentionally don't check anything (we want this
		to be as fast as possible).
	**/
	@:native("cast")
	static public function _cast(typ:Dynamic, val:Dynamic):Dynamic;
	static public function forward(model:Dynamic, docs:Dynamic, is_train:Dynamic):Dynamic;
	static public function glorot_uniform_init(ops:Dynamic, shape:Dynamic):Dynamic;
	static public function init(init_W:Dynamic, model:Dynamic, ?X:Dynamic, ?Y:Dynamic):Dynamic;
	/**
		Wrapper around functools.partial that retains docstrings and can include
		other workarounds if needed.
	**/
	static public function partial(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}