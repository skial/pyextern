/* This file is generated, do not edit! */
package spacy.ml.models.tok2vec;
@:pythonImport("spacy.ml.models.tok2vec") extern class Tok2vec_Module {
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
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function PyTorchLSTM(nO:Dynamic, nI:Dynamic, ?bi:Dynamic, ?depth:Dynamic, ?dropout:Dynamic):Dynamic;
	/**
		Embed Doc objects with their vocab's vectors table, applying a learned
		linear projection to control the dimensionality. If a dropout rate is
		specified, the dropout is applied per dimension over the whole batch.
	**/
	static public function StaticVectors(?nO:Dynamic, ?nM:Dynamic, ?dropout:Dynamic, ?init_W:Dynamic, ?key_attr:Dynamic):Dynamic;
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
		Construct a tok2vec model out of embedding and encoding subnetworks.
		See https://explosion.ai/blog/deep-learning-formula-nlp
		
		embed (Model[List[Doc], List[Floats2d]]): Embed tokens into context-independent
		    word vector representations.
		encode (Model[List[Floats2d], List[Floats2d]]): Encode context into the
		    embeddings, using an architecture such as a CNN, BiLSTM or transformer.
	**/
	static public function build_Tok2Vec_model(embed:Dynamic, encode:Dynamic):Dynamic;
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
	/**
		For each vector in an input, construct an output vector that contains the
		input and a window of surrounding vectors. This is one step in a convolution.
	**/
	static public function expand_window(?window_size:Dynamic):Dynamic;
	static public function get_tok2vec_width(model:Dynamic):Dynamic;
	/**
		intify_attr(name)
		
		Normalize an attribute name, converting it to int.
		
		stringy_attr (string): Attribute string name. Can also be int (will then be left unchanged)
		RETURNS (int): int representation of the attribute, or None if it couldn't be converted.
	**/
	static public function intify_attr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Transform sequences to ragged arrays if necessary and return the ragged
		array. If sequences are already ragged, do nothing. A ragged array is a
		tuple (data, lengths), where data is the concatenated data.
	**/
	static public function list2ragged():Dynamic;
	/**
		Transform a sequences of layers into a null operation.
	**/
	static public function noop(?layers:python.VarArgs<Dynamic>):Dynamic;
	/**
		Transform sequences from a ragged format into lists.
	**/
	static public function ragged2list():Dynamic;
	static public function residual(layer:Dynamic):Dynamic;
	static public function tok2vec_listener_v1(width:Dynamic, ?upstream:Dynamic):Dynamic;
	/**
		Transform sequence data into a contiguous 2d array on the way into and
		out of a model. Handles a variety of sequence types: lists, padded and ragged.
		If the input is a 2d array, it is passed through unchanged.
	**/
	static public function with_array(layer:Dynamic, ?pad:Dynamic):Dynamic;
	static public function with_padded(layer:Dynamic):Dynamic;
}