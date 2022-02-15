/* This file is generated, do not edit! */
package spacy.ml.models.textcat;
@:pythonImport("spacy.ml.models.textcat") extern class Textcat_Module {
	/**
		Help prevent overfitting by adding a random distortion to the input data
		during training.  Specifically, cells of the input are zeroed with
		probability determined by the `rate` argument.
	**/
	static public function Dropout(?rate:Dynamic):Dynamic;
	static public function LayerNorm(?nI:Dynamic):Dynamic;
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
	static public var NEG_VALUE : Dynamic;
	static public var ORTH : Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Weight inputs by similarity to a learned vector
	**/
	static public function ParametricAttention(?nO:Dynamic):Dynamic;
	static public function Relu(?nO:Dynamic, ?nI:Dynamic, ?init_W:Dynamic, ?init_b:Dynamic, ?dropout:Dynamic, ?normalize:Dynamic):Dynamic;
	static public function Softmax(?nO:Dynamic, ?nI:Dynamic, ?init_W:Dynamic, ?init_b:Dynamic):Dynamic;
	/**
		SparseLinear(nO: Optional[int] = None, length: int = 262144)
	**/
	static public function SparseLinear(?nO:Dynamic, ?length:Dynamic):Dynamic;
	/**
		Embed Doc objects with their vocab's vectors table, applying a learned
		linear projection to control the dimensionality. If a dropout rate is
		specified, the dropout is applied per dimension over the whole batch.
	**/
	static public function StaticVectors(?nO:Dynamic, ?nM:Dynamic, ?dropout:Dynamic, ?init_W:Dynamic, ?key_attr:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function build_bow_text_classifier(exclusive_classes:Dynamic, ngram_size:Dynamic, no_output_layer:Dynamic, ?nO:Dynamic):Dynamic;
	/**
		Build a simple CNN text classifier, given a token-to-vector model as inputs.
		If exclusive_classes=True, a softmax non-linearity is applied, so that the
		outputs sum to 1. If exclusive_classes=False, a logistic non-linearity
		is applied instead, so that outputs are in the range [0, 1].
	**/
	static public function build_simple_cnn_text_classifier(tok2vec:Dynamic, exclusive_classes:Dynamic, ?nO:Dynamic):Dynamic;
	static public function build_text_classifier_lowdata(width:Dynamic, dropout:Dynamic, ?nO:Dynamic):Dynamic;
	static public function build_text_classifier_v2(tok2vec:Dynamic, linear_model:Dynamic, ?nO:Dynamic):Dynamic;
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
	/**
		Compose two or more models `f`, `g`, etc, such that their outputs are
		concatenated, i.e. `concatenate(f, g)(x)` computes `hstack(f(x), g(x))`.
		Also supports chaining more than 2 layers.
	**/
	static public function concatenate(?layers:python.VarArgs<Dynamic>):Dynamic;
	static public function extract_ngrams(ngram_size:Dynamic, ?attr:Dynamic):Dynamic;
	static public function get_tok2vec_width(model:Dynamic):Dynamic;
	static public function init_chain(model:Dynamic, ?X:Dynamic, ?Y:Dynamic):Dynamic;
	static public function init_ensemble_textcat(model:Dynamic, X:Dynamic, Y:Dynamic):Dynamic;
	/**
		Transform sequences to ragged arrays if necessary and return the ragged
		array. If sequences are already ragged, do nothing. A ragged array is a
		tuple (data, lengths), where data is the concatenated data.
	**/
	static public function list2ragged():Dynamic;
	static public function reduce_mean():Dynamic;
	static public function reduce_sum():Dynamic;
	static public function residual(layer:Dynamic):Dynamic;
	/**
		Container that holds one layer that can change dimensions.
		    
	**/
	static public function resizable(layer:Dynamic, resize_layer:Dynamic):Dynamic;
	static public function resize_and_set_ref(model:Dynamic, new_nO:Dynamic, resizable_layer:Dynamic):Dynamic;
	/**
		Create a resized copy of a layer that has parameters W and b and dimensions nO and nI.
	**/
	static public function resize_linear_weighted(layer:Dynamic, new_nO:Dynamic, ?fill_defaults:Dynamic):Dynamic;
	static public function resize_model(model:Dynamic, new_nO:Dynamic):Dynamic;
	static public function softmax_activation():Dynamic;
	static public function with_cpu(layer:Dynamic, ops:Dynamic):Dynamic;
}