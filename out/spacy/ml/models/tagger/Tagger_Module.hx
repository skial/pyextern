/* This file is generated, do not edit! */
package spacy.ml.models.tagger;
@:pythonImport("spacy.ml.models.tagger") extern class Tagger_Module {
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Softmax(?nO:Dynamic, ?nI:Dynamic, ?init_W:Dynamic, ?init_b:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Build a tagger model, using a provided token-to-vector component. The tagger
		model simply adds a linear layer with softmax activation to predict scores
		given the token vectors.
		
		tok2vec (Model[List[Doc], List[Floats2d]]): The token-to-vector subnetwork.
		nO (int or None): The number of tags to output. Inferred from the data if None.
	**/
	static public function build_tagger_model(tok2vec:Dynamic, ?nO:Dynamic):Dynamic;
	/**
		Compose two models `f` and `g` such that they become layers of a single
		feed-forward model that computes `g(f(x))`.
		Also supports chaining more than 2 layers.
	**/
	static public function chain(layer1:Dynamic, layer2:Dynamic, ?layers:python.VarArgs<Dynamic>):Dynamic;
	/**
		Transform sequence data into a contiguous 2d array on the way into and
		out of a model. Handles a variety of sequence types: lists, padded and ragged.
		If the input is a 2d array, it is passed through unchanged.
	**/
	static public function with_array(layer:Dynamic, ?pad:Dynamic):Dynamic;
	static public function zero_init(ops:Dynamic, shape:Dynamic):Dynamic;
}