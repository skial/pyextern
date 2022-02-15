/* This file is generated, do not edit! */
package spacy.ml.models.parser;
@:pythonImport("spacy.ml.models.parser") extern class Parser_Module {
	/**
		Multiply inputs by a weights matrix and adds a bias vector.
	**/
	static public function Linear(?nO:Dynamic, ?nI:Dynamic, ?init_W:Dynamic, ?init_b:Dynamic):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Literal(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function PrecomputableAffine(nO:Dynamic, nI:Dynamic, nF:Dynamic, nP:Dynamic, ?dropout:Dynamic):Dynamic;
	/**
		Set up a stepwise transition-based model
	**/
	static public function TransitionModel(tok2vec:Dynamic, lower:Dynamic, upper:Dynamic, resize_output:Dynamic, ?dropout:Dynamic, ?unseen_classes:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _define_lower(nO:Dynamic, nF:Dynamic, nI:Dynamic, nP:Dynamic):Dynamic;
	static public function _define_upper(nO:Dynamic, nI:Dynamic):Dynamic;
	static public function _resize_lower(model:Dynamic, new_nO:Dynamic):Dynamic;
	static public function _resize_upper(model:Dynamic, new_nO:Dynamic):Dynamic;
	/**
		Build a transition-based parser model. Can apply to NER or dependency-parsing.
		
		Transition-based parsing is an approach to structured prediction where the
		task of predicting the structure is mapped to a series of state transitions.
		You might find this tutorial helpful as background:
		https://explosion.ai/blog/parsing-english-in-python
		
		The neural network state prediction model consists of either two or three
		subnetworks:
		
		* tok2vec: Map each token into a vector representations. This subnetwork
		    is run once for each batch.
		* lower: Construct a feature-specific vector for each (token, feature) pair.
		    This is also run once for each batch. Constructing the state
		    representation is then simply a matter of summing the component features
		    and applying the non-linearity.
		* upper (optional): A feed-forward network that predicts scores from the
		    state representation. If not present, the output from the lower model is
		    used as action scores directly.
		
		tok2vec (Model[List[Doc], List[Floats2d]]):
		    Subnetwork to map tokens into vector representations.
		state_type (str):
		    String value denoting the type of parser model: "parser" or "ner"
		extra_state_tokens (bool): Whether or not to use additional tokens in the context
		    to construct the state vector. Defaults to `False`, which means 3 and 8
		    for the NER and parser respectively. When set to `True`, this would become 6
		    feature sets (for the NER) or 13 (for the parser).
		hidden_width (int): The width of the hidden layer.
		maxout_pieces (int): How many pieces to use in the state prediction layer.
		    Recommended values are 1, 2 or 3. If 1, the maxout non-linearity
		    is replaced with a ReLu non-linearity if use_upper=True, and no
		    non-linearity if use_upper=False.
		use_upper (bool): Whether to use an additional hidden layer after the state
		    vector in order to predict the action scores. It is recommended to set
		    this to False for large pretrained models such as transformers, and True
		    for smaller networks. The upper layer is computed on CPU, which becomes
		    a bottleneck on larger GPU-based models, where it's also less necessary.
		nO (int or None): The number of actions the model will predict between.
		    Usually inferred from data at the beginning of training, or loaded from
		    disk.
	**/
	static public function build_tb_parser_model(tok2vec:Dynamic, state_type:Dynamic, extra_state_tokens:Dynamic, hidden_width:Dynamic, maxout_pieces:Dynamic, use_upper:Dynamic, ?nO:Dynamic):Dynamic;
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
		Transform sequences to ragged arrays if necessary and return the data
		from the ragged array. If sequences are already ragged, do nothing. A
		ragged array is a tuple (data, lengths), where data is the concatenated data.
	**/
	static public function list2array():Dynamic;
	static public function resize_output(model:Dynamic, new_nO:Dynamic):Dynamic;
	/**
		Change the backend to execute on for the scope of the block.
	**/
	static public function use_ops(name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function zero_init(ops:Dynamic, shape:Dynamic):Dynamic;
}