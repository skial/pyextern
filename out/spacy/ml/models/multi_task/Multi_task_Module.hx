/* This file is generated, do not edit! */
package spacy.ml.models.multi_task;
@:pythonImport("spacy.ml.models.multi_task") extern class Multi_task_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var ID : Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function LayerNorm(?nI:Dynamic):Dynamic;
	/**
		Multiply inputs by a weights matrix and adds a bias vector.
	**/
	static public function Linear(?nO:Dynamic, ?nI:Dynamic, ?init_W:Dynamic, ?init_b:Dynamic):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Maxout(?nO:Dynamic, ?nI:Dynamic, ?nP:Dynamic, ?init_W:Dynamic, ?init_b:Dynamic, ?dropout:Dynamic, ?normalize:Dynamic):Dynamic;
	/**
		Neural network layer that predicts several multi-class attributes at once.
		For instance, we might predict one class with 6 variables, and another with 5.
		We predict the 11 neurons required for this, and then softmax them such
		that columns 0-6 make a probability distribution and columns 6-11 make another.
	**/
	static public function MultiSoftmax(nOs:Dynamic, ?nI:Dynamic):Dynamic;
	static public var OOV_RANK : Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Softmax(?nO:Dynamic, ?nI:Dynamic, ?init_W:Dynamic, ?init_b:Dynamic):Dynamic;
	static public var TYPE_CHECKING : Dynamic;
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
	static public function _apply_mask(docs:Dynamic, random_words:Dynamic, ?mask_prob:Dynamic):Dynamic;
	static public function _replace_word(word:Dynamic, random_words:Dynamic, ?mask:Dynamic):Dynamic;
	static public function build_cloze_characters_multi_task_model(vocab:Dynamic, tok2vec:Dynamic, maxout_pieces:Dynamic, hidden_size:Dynamic, nr_char:Dynamic):Dynamic;
	static public function build_cloze_multi_task_model(vocab:Dynamic, tok2vec:Dynamic, maxout_pieces:Dynamic, hidden_size:Dynamic):Dynamic;
	/**
		Convert a model into a BERT-style masked language model
	**/
	static public function build_masked_language_model(vocab:Dynamic, wrapped_model:Dynamic, ?mask_prob:Dynamic):Dynamic;
	static public function build_multi_task_model(tok2vec:Dynamic, maxout_pieces:Dynamic, token_vector_width:Dynamic, ?nO:Dynamic):Dynamic;
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
	static public function create_pretrain_characters(maxout_pieces:Dynamic, hidden_size:Dynamic, n_characters:Dynamic):Dynamic;
	static public function create_pretrain_vectors(maxout_pieces:Dynamic, hidden_size:Dynamic, loss:Dynamic):Dynamic;
	/**
		Compute a loss based on a number of characters predicted from the docs.
	**/
	static public function get_characters_loss(ops:Dynamic, docs:Dynamic, prediction:Dynamic, nr_char:Dynamic):Dynamic;
	/**
		Compute a loss based on a distance between the documents' vectors and
		the prediction.
	**/
	static public function get_vectors_loss(ops:Dynamic, docs:Dynamic, prediction:Dynamic, distance:Dynamic):Dynamic;
	/**
		Transform sequences to ragged arrays if necessary and return the data
		from the ragged array. If sequences are already ragged, do nothing. A
		ragged array is a tuple (data, lengths), where data is the concatenated data.
	**/
	static public function list2array():Dynamic;
	static public function to_categorical(Y:Dynamic, ?n_classes:Dynamic):Dynamic;
	static public function zero_init(ops:Dynamic, shape:Dynamic):Dynamic;
}