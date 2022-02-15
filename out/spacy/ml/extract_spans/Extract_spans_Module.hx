/* This file is generated, do not edit! */
package spacy.ml.extract_spans;
@:pythonImport("spacy.ml.extract_spans") extern class Extract_spans_Module {
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function _ensure_cpu(spans:Dynamic, lengths:Dynamic):Dynamic;
	/**
		Construct a flat array that has the indices we want to extract from the
		source data. For instance, if we want the spans (5, 9), (8, 10) the
		indices will be [5, 6, 7, 8, 8, 9].
	**/
	static public function _get_span_indices(ops:Dynamic, spans:Dynamic, lengths:Dynamic):Dynamic;
	/**
		Extract spans from a sequence of source arrays, as specified by an array
		of (start, end) indices. The output is a ragged array of the
		extracted spans.
	**/
	static public function extract_spans():Dynamic;
	/**
		Get subsequences from source vectors.
	**/
	static public function forward(model:Dynamic, source_spans:Dynamic, is_train:Dynamic):Dynamic;
	static public function init(model:Dynamic, ?X:Dynamic, ?Y:Dynamic):Dynamic;
	static public function to_numpy(data:Dynamic):Dynamic;
}