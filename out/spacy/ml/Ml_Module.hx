/* This file is generated, do not edit! */
package spacy.ml;
@:pythonImport("spacy.ml") extern class Ml_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Encode context using bidirectonal LSTM layers. Requires PyTorch.
		
		width (int): The input and output width. These are required to be the same,
		    to allow residual connections. This value will be determined by the
		    width of the inputs. Recommended values are between 64 and 300.
		depth (int): The number of recurrent layers.
		dropout (float): Creates a Dropout layer on the outputs of each LSTM layer
		    except the last layer. Set to 0 to disable this functionality.
	**/
	static public function BiLSTMEncoder(width:Dynamic, depth:Dynamic, dropout:Dynamic):Dynamic;
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
		Construct an embedded representation based on character embeddings, using
		a feed-forward network. A fixed number of UTF-8 byte characters are used for
		each word, taken from the beginning and end of the word equally. Padding is
		used in the centre for words that are too short.
		
		For instance, let's say nC=4, and the word is "jumping". The characters
		used will be jung (two from the start, two from the end). If we had nC=8,
		the characters would be "jumpping": 4 from the start, 4 from the end. This
		ensures that the final character is always in the last position, instead
		of being in an arbitrary position depending on the word length.
		
		The characters are embedded in a embedding table with a given number of rows,
		and the vectors concatenated. A hash-embedded vector of the LOWER of the word is
		also concatenated on, and the result is then passed through a feed-forward
		network to construct a single vector to represent the information.
		
		feature (int or str): An attribute to embed, to concatenate with the characters.
		width (int): The width of the output vector and the feature embedding.
		rows (int): The number of rows in the LOWER hash embedding table.
		nM (int): The dimensionality of the character embeddings. Recommended values
		    are between 16 and 64.
		nC (int): The number of UTF-8 bytes to embed per word. Recommended values
		    are between 3 and 8, although it may depend on the length of words in the
		    language.
		include_static_vectors (bool): Whether to also use static word vectors.
		    Requires a vectors table to be loaded in the Doc objects' vocab.
	**/
	static public function CharacterEmbed(width:Dynamic, rows:Dynamic, nM:Dynamic, nC:Dynamic, include_static_vectors:Dynamic, ?feature:Dynamic):Dynamic;
	/**
		Help prevent overfitting by adding a random distortion to the input data
		during training.  Specifically, cells of the input are zeroed with
		probability determined by the `rate` argument.
	**/
	static public function Dropout(?rate:Dynamic):Dynamic;
	static public function FeatureExtractor(columns:Dynamic):Dynamic;
	/**
		An embedding layer that uses the “hashing trick” to map keys to distinct values.
		The hashing trick involves hashing each key four times with distinct seeds,
		to produce four likely differing values. Those values are modded into the
		table, and the resulting vectors summed to produce a single result. Because
		it’s unlikely that two different keys will collide on all four “buckets”,
		most distinct keys will receive a distinct vector under this scheme, even
		when the number of vectors in the table is very low.
	**/
	static public function HashEmbed(nO:Dynamic, nV:Dynamic, ?seed:Dynamic, ?column:Dynamic, ?initializer:Dynamic, ?dropout:Dynamic):Dynamic;
	static public var ID : Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function LayerNorm(?nI:Dynamic):Dynamic;
	/**
		Multiply inputs by a weights matrix and adds a bias vector.
	**/
	static public function Linear(?nO:Dynamic, ?nI:Dynamic, ?init_W:Dynamic, ?init_b:Dynamic):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Literal(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Deprecated in favor of `sigmoid_activation` layer, for more consistent
		naming.
	**/
	static public function Logistic():Dynamic;
	static public function Maxout(?nO:Dynamic, ?nI:Dynamic, ?nP:Dynamic, ?init_W:Dynamic, ?init_b:Dynamic, ?dropout:Dynamic, ?normalize:Dynamic):Dynamic;
	/**
		Encode context using convolutions with maxout activation, layer
		normalization and residual connections.
		
		width (int): The input and output width. These are required to be the same,
		    to allow residual connections. This value will be determined by the
		    width of the inputs. Recommended values are between 64 and 300.
		window_size (int): The number of words to concatenate around each token
		    to construct the convolution. Recommended value is 1.
		maxout_pieces (int): The number of maxout pieces to use. Recommended
		    values are 2 or 3.
		depth (int): The number of convolutional layers. Recommended value is 4.
	**/
	static public function MaxoutWindowEncoder(width:Dynamic, window_size:Dynamic, maxout_pieces:Dynamic, depth:Dynamic):Dynamic;
	/**
		Dense layer with mish activation.
		https://arxiv.org/pdf/1908.08681.pdf
	**/
	static public function Mish(?nO:Dynamic, ?nI:Dynamic, ?init_W:Dynamic, ?init_b:Dynamic, ?dropout:Dynamic, ?normalize:Dynamic):Dynamic;
	/**
		Encode context using convolutions with mish activation, layer
		normalization and residual connections.
		
		width (int): The input and output width. These are required to be the same,
		    to allow residual connections. This value will be determined by the
		    width of the inputs. Recommended values are between 64 and 300.
		window_size (int): The number of words to concatenate around each token
		    to construct the convolution. Recommended value is 1.
		depth (int): The number of convolutional layers. Recommended value is 4.
	**/
	static public function MishWindowEncoder(width:Dynamic, window_size:Dynamic, depth:Dynamic):Dynamic;
	/**
		Construct an embedding layer that separately embeds a number of lexical
		attributes using hash embedding, concatenates the results, and passes it
		through a feed-forward subnetwork to build a mixed representation.
		
		The features used can be configured with the 'attrs' argument. The suggested
		attributes are NORM, PREFIX, SUFFIX and SHAPE. This lets the model take into
		account some subword information, without constructing a fully character-based
		representation. If pretrained vectors are available, they can be included in
		the representation as well, with the vectors table kept static
		(i.e. it's not updated).
		
		The `width` parameter specifies the output width of the layer and the widths
		of all embedding tables. If static vectors are included, a learned linear
		layer is used to map the vectors to the specified width before concatenating
		it with the other embedding outputs. A single Maxout layer is then used to
		reduce the concatenated vectors to the final width.
		
		The `rows` parameter controls the number of rows used by the `HashEmbed`
		tables. The HashEmbed layer needs surprisingly few rows, due to its use of
		the hashing trick. Generally between 2000 and 10000 rows is sufficient,
		even for very large vocabularies. A number of rows must be specified for each
		table, so the `rows` list must be of the same length as the `attrs` parameter.
		
		width (int): The output width. Also used as the width of the embedding tables.
		    Recommended values are between 64 and 300.
		attrs (list of attr IDs): The token attributes to embed. A separate
		    embedding table will be constructed for each attribute.
		rows (List[int]): The number of rows in the embedding tables. Must have the
		    same length as attrs.
		include_static_vectors (bool): Whether to also use static word vectors.
		    Requires a vectors table to be loaded in the Doc objects' vocab.
	**/
	static public function MultiHashEmbed(width:Dynamic, attrs:Dynamic, rows:Dynamic, include_static_vectors:Dynamic):Dynamic;
	/**
		Neural network layer that predicts several multi-class attributes at once.
		For instance, we might predict one class with 6 variables, and another with 5.
		We predict the 11 neurons required for this, and then softmax them such
		that columns 0-6 make a probability distribution and columns 6-11 make another.
	**/
	static public function MultiSoftmax(nOs:Dynamic, ?nI:Dynamic):Dynamic;
	static public var NEG_VALUE : Dynamic;
	static public var OOV_RANK : Dynamic;
	static public var ORTH : Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Weight inputs by similarity to a learned vector
	**/
	static public function ParametricAttention(?nO:Dynamic):Dynamic;
	static public function PrecomputableAffine(nO:Dynamic, nI:Dynamic, nF:Dynamic, nP:Dynamic, ?dropout:Dynamic):Dynamic;
	static public function PyTorchLSTM(nO:Dynamic, nI:Dynamic, ?bi:Dynamic, ?depth:Dynamic, ?dropout:Dynamic):Dynamic;
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
	static public var TYPE_CHECKING : Dynamic;
	/**
		Set up a stepwise transition-based model
	**/
	static public function TransitionModel(tok2vec:Dynamic, lower:Dynamic, upper:Dynamic, resize_output:Dynamic, ?dropout:Dynamic, ?unseen_classes:Dynamic):Dynamic;
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
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Construct a tok2vec model out of embedding and encoding subnetworks.
		See https://explosion.ai/blog/deep-learning-formula-nlp
		
		embed (Model[List[Doc], List[Floats2d]]): Embed tokens into context-independent
		    word vector representations.
		encode (Model[List[Floats2d], List[Floats2d]]): Encode context into the
		    embeddings, using an architecture such as a CNN, BiLSTM or transformer.
	**/
	static public function build_Tok2Vec_model(embed:Dynamic, encode:Dynamic):Dynamic;
	static public function build_bow_text_classifier(exclusive_classes:Dynamic, ngram_size:Dynamic, no_output_layer:Dynamic, ?nO:Dynamic):Dynamic;
	static public function build_cloze_characters_multi_task_model(vocab:Dynamic, tok2vec:Dynamic, maxout_pieces:Dynamic, hidden_size:Dynamic, nr_char:Dynamic):Dynamic;
	static public function build_cloze_multi_task_model(vocab:Dynamic, tok2vec:Dynamic, maxout_pieces:Dynamic, hidden_size:Dynamic):Dynamic;
	/**
		Build spaCy's 'standard' tok2vec layer, which uses hash embedding
		with subword features and a CNN with layer-normalized maxout.
		
		width (int): The width of the input and output. These are required to be the
		    same, so that residual connections can be used. Recommended values are
		    96, 128 or 300.
		depth (int): The number of convolutional layers to use. Recommended values
		    are between 2 and 8.
		window_size (int): The number of tokens on either side to concatenate during
		    the convolutions. The receptive field of the CNN will be
		    depth * (window_size * 2 + 1), so a 4-layer network with window_size of
		    2 will be sensitive to 20 words at a time. Recommended value is 1.
		embed_size (int): The number of rows in the hash embedding tables. This can
		    be surprisingly small, due to the use of the hash embeddings. Recommended
		    values are between 2000 and 10000.
		maxout_pieces (int): The number of pieces to use in the maxout non-linearity.
		    If 1, the Mish non-linearity is used instead. Recommended values are 1-3.
		subword_features (bool): Whether to also embed subword features, specifically
		    the prefix, suffix and word shape. This is recommended for alphabetic
		    languages like English, but not if single-character tokens are used for
		    a language such as Chinese.
		pretrained_vectors (bool): Whether to also use static vectors.
	**/
	static public function build_hash_embed_cnn_tok2vec(width:Dynamic, depth:Dynamic, embed_size:Dynamic, window_size:Dynamic, maxout_pieces:Dynamic, subword_features:Dynamic, pretrained_vectors:Dynamic):Dynamic;
	/**
		An output layer for multi-label classification. It uses a linear layer
		followed by a logistic activation.
	**/
	static public function build_linear_logistic(?nO:Dynamic, ?nI:Dynamic):Dynamic;
	/**
		Convert a model into a BERT-style masked language model
	**/
	static public function build_masked_language_model(vocab:Dynamic, wrapped_model:Dynamic, ?mask_prob:Dynamic):Dynamic;
	/**
		Reduce sequences by concatenating their mean and max pooled vectors,
		and then combine the concatenated vectors with a hidden layer.
	**/
	static public function build_mean_max_reducer(hidden_size:Dynamic):Dynamic;
	static public function build_multi_task_model(tok2vec:Dynamic, maxout_pieces:Dynamic, token_vector_width:Dynamic, ?nO:Dynamic):Dynamic;
	static public function build_nel_encoder(tok2vec:Dynamic, ?nO:Dynamic):Dynamic;
	/**
		Build a simple CNN text classifier, given a token-to-vector model as inputs.
		If exclusive_classes=True, a softmax non-linearity is applied, so that the
		outputs sum to 1. If exclusive_classes=False, a logistic non-linearity
		is applied instead, so that outputs are in the range [0, 1].
	**/
	static public function build_simple_cnn_text_classifier(tok2vec:Dynamic, exclusive_classes:Dynamic, ?nO:Dynamic):Dynamic;
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
		Build a tagger model, using a provided token-to-vector component. The tagger
		model simply adds a linear layer with softmax activation to predict scores
		given the token vectors.
		
		tok2vec (Model[List[Doc], List[Floats2d]]): The token-to-vector subnetwork.
		nO (int or None): The number of tags to output. Inferred from the data if None.
	**/
	static public function build_tagger_model(tok2vec:Dynamic, ?nO:Dynamic):Dynamic;
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
	static public function build_text_classifier_lowdata(width:Dynamic, dropout:Dynamic, ?nO:Dynamic):Dynamic;
	static public function build_text_classifier_v2(tok2vec:Dynamic, linear_model:Dynamic, ?nO:Dynamic):Dynamic;
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
	static public function create_candidates():Dynamic;
	static public function create_models_with_nvtx_range(?forward_color:Dynamic, ?backprop_color:Dynamic):Dynamic;
	static public function create_pretrain_characters(maxout_pieces:Dynamic, hidden_size:Dynamic, n_characters:Dynamic):Dynamic;
	static public function create_pretrain_vectors(maxout_pieces:Dynamic, hidden_size:Dynamic, loss:Dynamic):Dynamic;
	static public function empty_kb(entity_vector_length:Dynamic):Dynamic;
	/**
		For each vector in an input, construct an output vector that contains the
		input and a window of surrounding vectors. This is one step in a convolution.
	**/
	static public function expand_window(?window_size:Dynamic):Dynamic;
	static public function extract_ngrams(ngram_size:Dynamic, ?attr:Dynamic):Dynamic;
	/**
		Extract spans from a sequence of source arrays, as specified by an array
		of (start, end) indices. The output is a ragged array of the
		extracted spans.
	**/
	static public function extract_spans():Dynamic;
	/**
		get_candidates(KnowledgeBase kb, span) -> Iterator[Candidate]
		
		Return candidate entities for a given span by using the text of the span as the alias
		and fetching appropriate entries from the index.
		This particular function is optimized to work with the built-in KB functionality,
		but any other custom candidate generation method can be used in combination with the KB as well.
	**/
	static public function get_candidates(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compute a loss based on a number of characters predicted from the docs.
	**/
	static public function get_characters_loss(ops:Dynamic, docs:Dynamic, prediction:Dynamic, nr_char:Dynamic):Dynamic;
	static public function get_tok2vec_width(model:Dynamic):Dynamic;
	/**
		Compute a loss based on a distance between the documents' vectors and
		the prediction.
	**/
	static public function get_vectors_loss(ops:Dynamic, docs:Dynamic, prediction:Dynamic, distance:Dynamic):Dynamic;
	static public function glorot_uniform_init(ops:Dynamic, shape:Dynamic):Dynamic;
	static public function init_chain(model:Dynamic, ?X:Dynamic, ?Y:Dynamic):Dynamic;
	static public function init_ensemble_textcat(model:Dynamic, X:Dynamic, Y:Dynamic):Dynamic;
	/**
		intify_attr(name)
		
		Normalize an attribute name, converting it to int.
		
		stringy_attr (string): Attribute string name. Can also be int (will then be left unchanged)
		RETURNS (int): int representation of the attribute, or None if it couldn't be converted.
	**/
	static public function intify_attr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Transform sequences to ragged arrays if necessary and return the data
		from the ragged array. If sequences are already ragged, do nothing. A
		ragged array is a tuple (data, lengths), where data is the concatenated data.
	**/
	static public function list2array():Dynamic;
	/**
		Transform sequences to ragged arrays if necessary and return the ragged
		array. If sequences are already ragged, do nothing. A ragged array is a
		tuple (data, lengths), where data is the concatenated data.
	**/
	static public function list2ragged():Dynamic;
	static public function load_kb(kb_path:Dynamic):Dynamic;
	/**
		Transform a sequences of layers into a null operation.
	**/
	static public function noop(?layers:python.VarArgs<Dynamic>):Dynamic;
	/**
		Transform sequences from a ragged format into lists.
	**/
	static public function ragged2list():Dynamic;
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
	static public function resize_output(model:Dynamic, new_nO:Dynamic):Dynamic;
	static public function softmax_activation():Dynamic;
	static public function to_categorical(Y:Dynamic, ?n_classes:Dynamic):Dynamic;
	static public function tok2vec_listener_v1(width:Dynamic, ?upstream:Dynamic):Dynamic;
	/**
		Change the backend to execute on for the scope of the block.
	**/
	static public function use_ops(name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Transform sequence data into a contiguous 2d array on the way into and
		out of a model. Handles a variety of sequence types: lists, padded and ragged.
		If the input is a 2d array, it is passed through unchanged.
	**/
	static public function with_array(layer:Dynamic, ?pad:Dynamic):Dynamic;
	static public function with_cpu(layer:Dynamic, ops:Dynamic):Dynamic;
	/**
		Transform data on the way into and out of a layer, by plucking an item
		from a tuple.
	**/
	static public function with_getitem(idx:Dynamic, layer:Dynamic):Dynamic;
	static public function with_padded(layer:Dynamic):Dynamic;
	static public function zero_init(ops:Dynamic, shape:Dynamic):Dynamic;
}