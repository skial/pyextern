/* This file is generated, do not edit! */
package spacy.ml.models.spancat;
@:pythonImport("spacy.ml.models.spancat") extern class Spancat_Module {
	/**
		Multiply inputs by a weights matrix and adds a bias vector.
	**/
	static public function Linear(?nO:Dynamic, ?nI:Dynamic, ?init_W:Dynamic, ?init_b:Dynamic):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Deprecated in favor of `sigmoid_activation` layer, for more consistent
		naming.
	**/
	static public function Logistic():Dynamic;
	static public function Maxout(?nO:Dynamic, ?nI:Dynamic, ?nP:Dynamic, ?init_W:Dynamic, ?init_b:Dynamic, ?dropout:Dynamic, ?normalize:Dynamic):Dynamic;
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
	/**
		An output layer for multi-label classification. It uses a linear layer
		followed by a logistic activation.
	**/
	static public function build_linear_logistic(?nO:Dynamic, ?nI:Dynamic):Dynamic;
	/**
		Reduce sequences by concatenating their mean and max pooled vectors,
		and then combine the concatenated vectors with a hidden layer.
	**/
	static public function build_mean_max_reducer(hidden_size:Dynamic):Dynamic;
	/**
		Build a span categorizer model, given a token-to-vector model, a
		reducer model to map the sequence of vectors for each span down to a single
		vector, and a scorer model to map the vectors to probabilities.
		
		tok2vec (Model[List[Doc], List[Floats2d]]): The tok2vec model.
		reducer (Model[Ragged, Floats2d]): The reducer model.
		scorer (Model[Floats2d, Floats2d]): The scorer model.
	**/
	static public function build_spancat_model(tok2vec:Dynamic, reducer:Dynamic, scorer:Dynamic):Dynamic;
	/**
		Cast a value to a type.
		
		This returns the value unchanged.  To the type checker this
		signals that the return value has the designated type, but at
		runtime we intentionally don't check anything (we want this
		to be as fast as possible).
	**/
	@:native("cast")
	static public function _cast(typ:Dynamic, val:Dynamic):Dynamic;
	/**
		Compose two models `f` and `g` such that they become layers of a single
		feed-forward model that computes `g(f(x))`.
		Also supports chaining more than 2 layers.
	**/
	static public function chain(layer1:Dynamic, layer2:Dynamic, ?layers:python.VarArgs<Dynamic>):Dynamic;
	/**
		Compose two or more models `f`, `g`, etc, such that their outputs are
		concatenated, i.e. `concatenate(f, g)(x)` computes `hstack(f(x), g(x))`.
		Also supports chaining more than 2 layers.
	**/
	static public function concatenate(?layers:python.VarArgs<Dynamic>):Dynamic;
	/**
		Extract spans from a sequence of source arrays, as specified by an array
		of (start, end) indices. The output is a ragged array of the
		extracted spans.
	**/
	static public function extract_spans():Dynamic;
	static public function glorot_uniform_init(ops:Dynamic, shape:Dynamic):Dynamic;
	/**
		Transform sequences to ragged arrays if necessary and return the ragged
		array. If sequences are already ragged, do nothing. A ragged array is a
		tuple (data, lengths), where data is the concatenated data.
	**/
	static public function list2ragged():Dynamic;
	/**
		Reduce ragged-formatted sequences to their first element.
	**/
	static public function reduce_first():Dynamic;
	/**
		Reduce ragged-formatted sequences to their last element.
	**/
	static public function reduce_last():Dynamic;
	static public function reduce_max():Dynamic;
	static public function reduce_mean():Dynamic;
	/**
		Transform data on the way into and out of a layer, by plucking an item
		from a tuple.
	**/
	static public function with_getitem(idx:Dynamic, layer:Dynamic):Dynamic;
}