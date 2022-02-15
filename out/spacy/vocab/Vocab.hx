/* This file is generated, do not edit! */
package spacy.vocab;
@:pythonImport("spacy.vocab", "Vocab") extern class Vocab {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether the string or int key has an entry in the vocabulary.
		
		string (str): The ID string.
		RETURNS (bool) Whether the string has an entry in the vocabulary.
		
		DOCS: https://spacy.io/api/vocab#contains
	**/
	public function __contains__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Retrieve a lexeme, given an int ID or a unicode string. If a
		previously unseen unicode string is given, a new lexeme is created and
		stored.
		
		id_or_string (int or str): The integer ID of a word, or its unicode
		    string. If `int >= Lexicon.size`, `IndexError` is raised. If
		    `id_or_string` is neither an int nor a unicode string, `ValueError`
		    is raised.
		RETURNS (Lexeme): The lexeme indicated by the given ID.
		
		EXAMPLE:
		    >>> apple = nlp.vocab.strings["apple"]
		    >>> assert nlp.vocab[apple] == nlp.vocab[u"apple"]
		
		DOCS: https://spacy.io/api/vocab#getitem
	**/
	public function __getitem__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Create the vocabulary.
		
		lex_attr_getters (dict): A dictionary mapping attribute IDs to
		    functions to compute them. Defaults to `None`.
		strings (StringStore): StringStore that maps strings to integers, and
		    vice versa.
		lookups (Lookups): Container for large lookup tables and dictionaries.
		oov_prob (float): Default OOV probability.
		vectors_name (str): Optional name to identify the vectors table.
		get_noun_chunks (Optional[Callable[[Union[Doc, Span], Iterator[Tuple[int, int, int]]]]]):
		    A function that yields base noun phrases used for Doc.noun_chunks.
	**/
	@:native("__init__")
	public function ___init__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Create the vocabulary.
		
		lex_attr_getters (dict): A dictionary mapping attribute IDs to
		    functions to compute them. Defaults to `None`.
		strings (StringStore): StringStore that maps strings to integers, and
		    vice versa.
		lookups (Lookups): Container for large lookup tables and dictionaries.
		oov_prob (float): Default OOV probability.
		vectors_name (str): Optional name to identify the vectors table.
		get_noun_chunks (Optional[Callable[[Union[Doc, Span], Iterator[Tuple[int, int, int]]]]]):
		    A function that yields base noun phrases used for Doc.noun_chunks.
	**/
	public function new(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Iterate over the lexemes in the vocabulary.
		
		YIELDS (Lexeme): An entry in the vocabulary.
		
		DOCS: https://spacy.io/api/vocab#iter
	**/
	public function __iter__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		The current number of lexemes stored.
		
		RETURNS (int): The current number of lexemes stored.
	**/
	public function __len__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __pyx_vtable__ : Dynamic;
	/**
		Vocab.__reduce_cython__(self)
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Vocab.__setstate_cython__(self, __pyx_state)
	**/
	public function __setstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_lookups: object
	**/
	public var _lookups : Dynamic;
	/**
		Vocab._reset_cache(self, keys, strings)
	**/
	public function _reset_cache(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_unused_object: object
	**/
	public var _unused_object : Dynamic;
	/**
		_vectors: object
	**/
	public var _vectors : Dynamic;
	/**
		Vocab.add_flag(self, flag_getter, int flag_id=-1)
		Set a new boolean flag to words in the vocabulary.
		
		        The flag_getter function will be called over the words currently in the
		        vocab, and then applied to new words as they occur. You'll then be able
		        to access the flag value on each token using token.check_flag(flag_id).
		        See also: `Lexeme.set_flag`, `Lexeme.check_flag`, `Token.set_flag`,
		        `Token.check_flag`.
		
		        flag_getter (callable): A function `f(str) -> bool`, to get the
		            flag value.
		        flag_id (int): An integer between 1 and 63 (inclusive), specifying
		            the bit at which the flag will be stored. If -1, the lowest
		            available bit will be chosen.
		        RETURNS (int): The integer ID by which the flag value can be checked.
		
		        DOCS: https://spacy.io/api/vocab#add_flag
		        
	**/
	public function add_flag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		cfg: object
	**/
	public var cfg : Dynamic;
	/**
		Vocab.from_bytes(self, bytes_data, *, exclude=tuple())
		Load state from a binary string.
		
		        bytes_data (bytes): The data to load from.
		        exclude (Iterable[str]): String names of serialization fields to exclude.
		        RETURNS (Vocab): The `Vocab` object.
		
		        DOCS: https://spacy.io/api/vocab#from_bytes
		        
	**/
	public function from_bytes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Vocab.from_disk(self, path, *, exclude=tuple())
		Loads state from a directory. Modifies the object in place and
		        returns it.
		
		        path (str or Path): A path to a directory.
		        exclude (Iterable[str]): String names of serialization fields to exclude.
		        RETURNS (Vocab): The modified `Vocab` object.
		
		        DOCS: https://spacy.io/api/vocab#to_disk
		        
	**/
	public function from_disk(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_noun_chunks: object
	**/
	public var get_noun_chunks : Dynamic;
	/**
		Vocab.get_vector(self, orth)
		Retrieve a vector for a word in the vocabulary. Words can be looked
		        up by string or int ID. If no vectors data is loaded, ValueError is
		        raised.
		
		        orth (int / unicode): The hash value of a word, or its unicode string.
		        RETURNS (numpy.ndarray or cupy.ndarray): A word vector. Size
		            and shape determined by the `vocab.vectors` instance. Usually, a
		            numpy ndarray of shape (300,) and dtype float32.
		
		        DOCS: https://spacy.io/api/vocab#get_vector
		        
	**/
	public function get_vector(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Vocab.has_vector(self, orth)
		Check whether a word has a vector. Returns False if no vectors have
		        been loaded. Words can be looked up by string or int ID.
		
		        orth (int / str): The word.
		        RETURNS (bool): Whether the word has a vector.
		
		        DOCS: https://spacy.io/api/vocab#has_vector
		        
	**/
	public function has_vector(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var lang : Dynamic;
	public var length : Dynamic;
	/**
		lex_attr_getters: object
	**/
	public var lex_attr_getters : Dynamic;
	public var lookups : Dynamic;
	/**
		morphology: spacy.morphology.Morphology
	**/
	public var morphology : Dynamic;
	/**
		Vocab.prune_vectors(self, nr_row, batch_size=1024)
		Reduce the current vector table to `nr_row` unique entries. Words
		        mapped to the discarded vectors will be remapped to the closest vector
		        among those remaining.
		
		        For example, suppose the original table had vectors for the words:
		        ['sat', 'cat', 'feline', 'reclined']. If we prune the vector table to
		        two rows, we would discard the vectors for 'feline' and 'reclined'.
		        These words would then be remapped to the closest remaining vector
		        -- so "feline" would have the same vector as "cat", and "reclined"
		        would have the same vector as "sat".
		
		        The similarities are judged by cosine. The original vectors may
		        be large, so the cosines are calculated in minibatches, to reduce
		        memory usage.
		
		        nr_row (int): The number of rows to keep in the vector table.
		        batch_size (int): Batch of vectors for calculating the similarities.
		            Larger batch sizes might be faster, while temporarily requiring
		            more memory.
		        RETURNS (dict): A dictionary keyed by removed words mapped to
		            `(string, score)` tuples, where `string` is the entry the removed
		            word was mapped to, and `score` the similarity score between the
		            two words.
		
		        DOCS: https://spacy.io/api/vocab#prune_vectors
		        
	**/
	public function prune_vectors(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Vocab.reset_vectors(self, *, width=None, shape=None)
		Drop the current vector table. Because all vectors must be the same
		        width, you have to call this to change the size of the vectors.
		        
	**/
	public function reset_vectors(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Vocab.set_vector(self, orth, vector)
		Set a vector for a word in the vocabulary. Words can be referenced
		        by string or int ID.
		
		        orth (int / str): The word.
		        vector (numpy.ndarray or cupy.nadarry[ndim=1, dtype='float32']): The vector to set.
		
		        DOCS: https://spacy.io/api/vocab#set_vector
		        
	**/
	public function set_vector(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var strings : Dynamic;
	/**
		Vocab.to_bytes(self, *, exclude=tuple())
		Serialize the current state to a binary string.
		
		        exclude (Iterable[str]): String names of serialization fields to exclude.
		        RETURNS (bytes): The serialized form of the `Vocab` object.
		
		        DOCS: https://spacy.io/api/vocab#to_bytes
		        
	**/
	public function to_bytes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Vocab.to_disk(self, path, *, exclude=tuple())
		Save the current state to a directory.
		
		        path (str or Path): A path to a directory, which will be created if
		            it doesn't exist.
		        exclude (Iterable[str]): String names of serialization fields to exclude.
		
		        DOCS: https://spacy.io/api/vocab#to_disk
		        
	**/
	public function to_disk(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var vectors : Dynamic;
	public var vectors_length : Dynamic;
	/**
		writing_system: object
	**/
	public var writing_system : Dynamic;
}