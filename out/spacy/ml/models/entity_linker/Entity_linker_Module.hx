/* This file is generated, do not edit! */
package spacy.ml.models.entity_linker;
@:pythonImport("spacy.ml.models.entity_linker") extern class Entity_linker_Module {
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Multiply inputs by a weights matrix and adds a bias vector.
	**/
	static public function Linear(?nO:Dynamic, ?nI:Dynamic, ?init_W:Dynamic, ?init_b:Dynamic):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Maxout(?nO:Dynamic, ?nI:Dynamic, ?nP:Dynamic, ?init_W:Dynamic, ?init_b:Dynamic, ?dropout:Dynamic, ?normalize:Dynamic):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function build_nel_encoder(tok2vec:Dynamic, ?nO:Dynamic):Dynamic;
	/**
		Compose two models `f` and `g` such that they become layers of a single
		feed-forward model that computes `g(f(x))`.
		Also supports chaining more than 2 layers.
	**/
	static public function chain(layer1:Dynamic, layer2:Dynamic, ?layers:python.VarArgs<Dynamic>):Dynamic;
	/**
		Construct `n` copies of a layer, with distinct weights.  i.e.
		`clone(f, 3)(x)` computes f(f'(f''(x))).
	**/
	static public function clone(orig:Dynamic, n:Dynamic):Dynamic;
	static public function create_candidates():Dynamic;
	static public function empty_kb(entity_vector_length:Dynamic):Dynamic;
	/**
		get_candidates(KnowledgeBase kb, span) -> Iterator[Candidate]
		
		Return candidate entities for a given span by using the text of the span as the alias
		and fetching appropriate entries from the index.
		This particular function is optimized to work with the built-in KB functionality,
		but any other custom candidate generation method can be used in combination with the KB as well.
	**/
	static public function get_candidates(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Transform sequences to ragged arrays if necessary and return the ragged
		array. If sequences are already ragged, do nothing. A ragged array is a
		tuple (data, lengths), where data is the concatenated data.
	**/
	static public function list2ragged():Dynamic;
	static public function load_kb(kb_path:Dynamic):Dynamic;
	static public function reduce_mean():Dynamic;
	static public function residual(layer:Dynamic):Dynamic;
}