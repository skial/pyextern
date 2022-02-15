/* This file is generated, do not edit! */
package spacy.tokenizer;
@:pythonImport("spacy.tokenizer", "Tokenizer") extern class Tokenizer {
	/**
		Tokenize a string.
		
		string (str): The string to tokenize.
		RETURNS (Doc): A container for linguistic annotations.
		
		DOCS: https://spacy.io/api/tokenizer#call
	**/
	public function __call__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Create a `Tokenizer`, to create `Doc` objects given unicode text.
		
		vocab (Vocab): A storage container for lexical types.
		rules (dict): Exceptions and special-cases for the tokenizer.
		prefix_search (callable): A function matching the signature of
		    `re.compile(string).search` to match prefixes.
		suffix_search (callable): A function matching the signature of
		    `re.compile(string).search` to match suffixes.
		`infix_finditer` (callable): A function matching the signature of
		    `re.compile(string).finditer` to find infixes.
		token_match (callable): A function matching the signature of
		    `re.compile(string).match`, for matching strings to be
		    recognized as tokens.
		url_match (callable): A function matching the signature of
		    `re.compile(string).match`, for matching strings to be
		    recognized as urls.
		
		EXAMPLE:
		    >>> tokenizer = Tokenizer(nlp.vocab)
		
		DOCS: https://spacy.io/api/tokenizer#init
	**/
	@:native("__init__")
	public function ___init__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Create a `Tokenizer`, to create `Doc` objects given unicode text.
		
		vocab (Vocab): A storage container for lexical types.
		rules (dict): Exceptions and special-cases for the tokenizer.
		prefix_search (callable): A function matching the signature of
		    `re.compile(string).search` to match prefixes.
		suffix_search (callable): A function matching the signature of
		    `re.compile(string).search` to match suffixes.
		`infix_finditer` (callable): A function matching the signature of
		    `re.compile(string).finditer` to find infixes.
		token_match (callable): A function matching the signature of
		    `re.compile(string).match`, for matching strings to be
		    recognized as tokens.
		url_match (callable): A function matching the signature of
		    `re.compile(string).match`, for matching strings to be
		    recognized as urls.
		
		EXAMPLE:
		    >>> tokenizer = Tokenizer(nlp.vocab)
		
		DOCS: https://spacy.io/api/tokenizer#init
	**/
	public function new(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
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
		Tokenizer.__reduce__(self)
	**/
	public function __reduce__():Dynamic;
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
		Tokenizer._flush_cache(self)
	**/
	public function _flush_cache():Dynamic;
	/**
		Tokenizer._flush_specials(self)
	**/
	public function _flush_specials():Dynamic;
	/**
		Tokenizer._load_special_cases(self, special_cases)
		Add special-case tokenization rules.
	**/
	public function _load_special_cases(special_cases:Dynamic):Dynamic;
	/**
		Tokenizer._reload_special_cases(self)
	**/
	public function _reload_special_cases():Dynamic;
	/**
		Tokenizer._reset_cache(self, keys)
	**/
	public function _reset_cache(keys:Dynamic):Dynamic;
	/**
		Tokenizer._validate_special_case(self, chunk, substrings)
		Check whether the `ORTH` fields match the string. Check that
		        additional features beyond `ORTH` and `NORM` are not set by the
		        exception.
		
		        chunk (str): The string to specially tokenize.
		        substrings (iterable): A sequence of dicts, where each dict describes
		            a token and its attributes.
		        
	**/
	public function _validate_special_case(chunk:Dynamic, substrings:Dynamic):Dynamic;
	/**
		Tokenizer.add_special_case(self, str string, substrings)
		Add a special-case tokenization rule.
		
		        string (str): The string to specially tokenize.
		        substrings (iterable): A sequence of dicts, where each dict describes
		            a token and its attributes. The `ORTH` fields of the attributes
		            must exactly match the string when they are concatenated.
		
		        DOCS: https://spacy.io/api/tokenizer#add_special_case
		        
	**/
	public function add_special_case(string:Dynamic, substrings:Dynamic):Dynamic;
	/**
		Tokenizer.explain(self, text)
		A debugging tokenizer that provides information about which
		        tokenizer rule or pattern was matched for each token. The tokens
		        produced are identical to `nlp.tokenizer()` except for whitespace
		        tokens.
		
		        string (str): The string to tokenize.
		        RETURNS (list): A list of (pattern_string, token_string) tuples
		
		        DOCS: https://spacy.io/api/tokenizer#explain
		        
	**/
	public function explain(text:Dynamic):Dynamic;
	/**
		Tokenizer.find_infix(self, str string)
		Find internal split points of the string, such as hyphens.
		
		        string (str): The string to segment.
		        RETURNS (list): A list of `re.MatchObject` objects that have `.start()`
		            and `.end()` methods, denoting the placement of internal segment
		            separators, e.g. hyphens.
		
		        DOCS: https://spacy.io/api/tokenizer#find_infix
		        
	**/
	public function find_infix(string:Dynamic):Dynamic;
	/**
		Tokenizer.find_prefix(self, str string)
		Find the length of a prefix that should be segmented from the
		        string, or None if no prefix rules match.
		
		        string (str): The string to segment.
		        RETURNS (int): The length of the prefix if present, otherwise `None`.
		
		        DOCS: https://spacy.io/api/tokenizer#find_prefix
		        
	**/
	public function find_prefix(string:Dynamic):Dynamic;
	/**
		Tokenizer.find_suffix(self, str string)
		Find the length of a suffix that should be segmented from the
		        string, or None if no suffix rules match.
		
		        string (str): The string to segment.
		        Returns (int): The length of the suffix if present, otherwise `None`.
		
		        DOCS: https://spacy.io/api/tokenizer#find_suffix
		        
	**/
	public function find_suffix(string:Dynamic):Dynamic;
	/**
		Tokenizer.from_bytes(self, bytes_data, *, exclude=tuple())
		Load state from a binary string.
		
		        bytes_data (bytes): The data to load from.
		        exclude (list): String names of serialization fields to exclude.
		        RETURNS (Tokenizer): The `Tokenizer` object.
		
		        DOCS: https://spacy.io/api/tokenizer#from_bytes
		        
	**/
	public function from_bytes(bytes_data:Dynamic, exclude:Dynamic):Dynamic;
	/**
		Tokenizer.from_disk(self, path, *, exclude=tuple())
		Loads state from a directory. Modifies the object in place and
		        returns it.
		
		        path (str / Path): A path to a directory.
		        exclude (list): String names of serialization fields to exclude.
		        RETURNS (Tokenizer): The modified `Tokenizer` object.
		
		        DOCS: https://spacy.io/api/tokenizer#from_disk
		        
	**/
	public function from_disk(path:Dynamic, exclude:Dynamic):Dynamic;
	public var infix_finditer : Dynamic;
	/**
		Tokenizer.pipe(self, texts, batch_size=1000)
		Tokenize a stream of texts.
		
		        texts: A sequence of unicode texts.
		        batch_size (int): Number of texts to accumulate in an internal buffer.
		        Defaults to 1000.
		        YIELDS (Doc): A sequence of Doc objects, in order.
		
		        DOCS: https://spacy.io/api/tokenizer#pipe
		        
	**/
	public function pipe(texts:Dynamic, batch_size:Dynamic):Dynamic;
	public var prefix_search : Dynamic;
	public var rules : Dynamic;
	/**
		Tokenizer.score(self, examples, **kwargs)
	**/
	public function score(examples:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var suffix_search : Dynamic;
	/**
		Tokenizer.to_bytes(self, *, exclude=tuple())
		Serialize the current state to a binary string.
		
		        exclude (list): String names of serialization fields to exclude.
		        RETURNS (bytes): The serialized form of the `Tokenizer` object.
		
		        DOCS: https://spacy.io/api/tokenizer#to_bytes
		        
	**/
	public function to_bytes(exclude:Dynamic):Dynamic;
	/**
		Tokenizer.to_disk(self, path, **kwargs)
		Save the current state to a directory.
		
		        path (str / Path): A path to a directory, which will be created if
		            it doesn't exist.
		        exclude (list): String names of serialization fields to exclude.
		
		        DOCS: https://spacy.io/api/tokenizer#to_disk
		        
	**/
	public function to_disk(path:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var token_match : Dynamic;
	public var url_match : Dynamic;
	public var vocab : Dynamic;
}