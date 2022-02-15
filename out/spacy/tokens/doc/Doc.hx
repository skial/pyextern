/* This file is generated, do not edit! */
package spacy.tokens.doc;
@:pythonImport("spacy.tokens.doc", "Doc") extern class Doc {
	/**
		Custom extension attributes registered via `set_extension`.
	**/
	public var _ : Dynamic;
	/**
		Doc.__bytes__(self)
	**/
	public function __bytes__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Get a `Token` or `Span` object.
		
		i (int or tuple) The index of the token, or the slice of the document
		    to get.
		RETURNS (Token or Span): The token at `doc[i]]`, or the span at
		    `doc[start : end]`.
		
		EXAMPLE:
		    >>> doc[i]
		    Get the `Token` object at position `i`, where `i` is an integer.
		    Negative indexing is supported, and follows the usual Python
		    semantics, i.e. `doc[-2]` is `doc[len(doc) - 2]`.
		
		    >>> doc[start : end]]
		    Get a `Span` object, starting at position `start` and ending at
		    position `end`, where `start` and `end` are token indices. For
		    instance, `doc[2:5]` produces a span consisting of tokens 2, 3 and
		    4. Stepped slices (e.g. `doc[start : end : step]`) are not
		    supported, as `Span` objects must be contiguous (cannot have gaps).
		    You can use negative indices and open-ended ranges, which have
		    their normal Python semantics.
		
		DOCS: https://spacy.io/api/doc#getitem
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
		Create a Doc object.
		
		vocab (Vocab): A vocabulary object, which must match any models you
		    want to use (e.g. tokenizer, parser, entity recognizer).
		words (Optional[List[Union[str, int]]]): A list of unicode strings or
		    hash values to add to the document as words. If `None`, defaults to
		    empty list.
		spaces (Optional[List[bool]]): A list of boolean values, of the same
		    length as `words`. `True` means that the word is followed by a space,
		    `False` means it is not. If `None`, defaults to `[True]*len(words)`
		user_data (dict or None): Optional extra data to attach to the Doc.
		tags (Optional[List[str]]): A list of unicode strings, of the same
		    length as words, to assign as token.tag. Defaults to None.
		pos (Optional[List[str]]): A list of unicode strings, of the same
		    length as words, to assign as token.pos. Defaults to None.
		morphs (Optional[List[str]]): A list of unicode strings, of the same
		    length as words, to assign as token.morph. Defaults to None.
		lemmas (Optional[List[str]]): A list of unicode strings, of the same
		    length as words, to assign as token.lemma. Defaults to None.
		heads (Optional[List[int]]): A list of values, of the same length as
		    words, to assign as heads. Head indices are the position of the
		    head in the doc. Defaults to None.
		deps (Optional[List[str]]): A list of unicode strings, of the same
		    length as words, to assign as token.dep. Defaults to None.
		sent_starts (Optional[List[Union[bool, None]]]): A list of values, of
		    the same length as words, to assign as token.is_sent_start. Will be
		    overridden by heads if heads is provided. Defaults to None.
		ents (Optional[List[str]]): A list of unicode strings, of the same
		    length as words, as IOB tags to assign as token.ent_iob and
		    token.ent_type. Defaults to None.
		
		DOCS: https://spacy.io/api/doc#init
	**/
	@:native("__init__")
	public function ___init__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Create a Doc object.
		
		vocab (Vocab): A vocabulary object, which must match any models you
		    want to use (e.g. tokenizer, parser, entity recognizer).
		words (Optional[List[Union[str, int]]]): A list of unicode strings or
		    hash values to add to the document as words. If `None`, defaults to
		    empty list.
		spaces (Optional[List[bool]]): A list of boolean values, of the same
		    length as `words`. `True` means that the word is followed by a space,
		    `False` means it is not. If `None`, defaults to `[True]*len(words)`
		user_data (dict or None): Optional extra data to attach to the Doc.
		tags (Optional[List[str]]): A list of unicode strings, of the same
		    length as words, to assign as token.tag. Defaults to None.
		pos (Optional[List[str]]): A list of unicode strings, of the same
		    length as words, to assign as token.pos. Defaults to None.
		morphs (Optional[List[str]]): A list of unicode strings, of the same
		    length as words, to assign as token.morph. Defaults to None.
		lemmas (Optional[List[str]]): A list of unicode strings, of the same
		    length as words, to assign as token.lemma. Defaults to None.
		heads (Optional[List[int]]): A list of values, of the same length as
		    words, to assign as heads. Head indices are the position of the
		    head in the doc. Defaults to None.
		deps (Optional[List[str]]): A list of unicode strings, of the same
		    length as words, to assign as token.dep. Defaults to None.
		sent_starts (Optional[List[Union[bool, None]]]): A list of values, of
		    the same length as words, to assign as token.is_sent_start. Will be
		    overridden by heads if heads is provided. Defaults to None.
		ents (Optional[List[str]]): A list of unicode strings, of the same
		    length as words, as IOB tags to assign as token.ent_iob and
		    token.ent_type. Defaults to None.
		
		DOCS: https://spacy.io/api/doc#init
	**/
	public function new(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Iterate over `Token`  objects, from which the annotations can be
		easily accessed. This is the main way of accessing `Token` objects,
		which are the main way annotations are accessed from Python. If faster-
		than-Python speeds are required, you can instead access the annotations
		as a numpy array, or access the underlying C data directly from Cython.
		
		DOCS: https://spacy.io/api/doc#iter
	**/
	public function __iter__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		The number of tokens in the document.
		
		RETURNS (int): The number of tokens in the document.
		
		DOCS: https://spacy.io/api/doc#len
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
		Doc.__reduce_cython__(self)
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
		Doc.__setstate_cython__(self, __pyx_state)
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
		Doc.__unicode__(self)
	**/
	public function __unicode__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Doc._bulk_merge(self, spans, attributes)
		Retokenize the document, such that the spans given as arguments
		         are merged into single tokens. The spans need to be in document
		         order, and no span intersection is allowed.
		
		        spans (Span[]): Spans to merge, in document order, with all span
		            intersections empty. Cannot be empty.
		        attributes (Dictionary[]): Attributes to assign to the merged tokens. By default,
		            must be the same length as spans, empty dictionaries are allowed.
		            attributes are inherited from the syntactic root of the span.
		        RETURNS (Token): The first newly merged token.
		        
	**/
	public function _bulk_merge(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_context: object
	**/
	public var _context : Dynamic;
	/**
		Doc._get_array_attrs()
	**/
	static public function _get_array_attrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Doc._realloc(self, new_size)
	**/
	public function _realloc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_vector: object
	**/
	public var _vector : Dynamic;
	/**
		_vector_norm: object
	**/
	public var _vector_norm : Dynamic;
	/**
		cats: object
	**/
	public var cats : Dynamic;
	/**
		Doc.char_span(self, int start_idx, int end_idx, label=0, kb_id=0, vector=None, alignment_mode='strict')
		Create a `Span` object from the slice
		        `doc.text[start_idx : end_idx]`. Returns None if no valid `Span` can be
		        created.
		
		        doc (Doc): The parent document.
		        start_idx (int): The index of the first character of the span.
		        end_idx (int): The index of the first character after the span.
		        label (uint64 or string): A label to attach to the Span, e.g. for
		            named entities.
		        kb_id (uint64 or string):  An ID from a KB to capture the meaning of a
		            named entity.
		        vector (ndarray[ndim=1, dtype='float32']): A meaning representation of
		            the span.
		        alignment_mode (str): How character indices are aligned to token
		            boundaries. Options: "strict" (character indices must be aligned
		            with token boundaries), "contract" (span of all tokens completely
		            within the character span), "expand" (span of all tokens at least
		            partially covered by the character span). Defaults to "strict".
		        RETURNS (Span): The newly constructed object.
		
		        DOCS: https://spacy.io/api/doc#char_span
		        
	**/
	public function char_span(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Doc.copy(self)
	**/
	public function copy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Doc.count_by(self, attr_id_t attr_id, exclude=None, counts=None)
		Count the frequencies of a given attribute. Produces a dict of
		        `{attribute (int): count (ints)}` frequencies, keyed by the values of
		        the given attribute ID.
		
		        attr_id (int): The attribute ID to key the counts.
		        RETURNS (dict): A dictionary mapping attributes to integer counts.
		
		        DOCS: https://spacy.io/api/doc#count_by
		        
	**/
	public function count_by(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var doc : Dynamic;
	/**
		The named entities in the document. Returns a tuple of named entity
		`Span` objects, if the entity recognizer has been applied.
		
		RETURNS (tuple): Entities in the document, one `Span` per entity.
		
		DOCS: https://spacy.io/api/doc#ents
	**/
	public var ents : Dynamic;
	/**
		Doc.extend_tensor(self, tensor)
		Concatenate a new tensor onto the doc.tensor object.
		
		        The doc.tensor attribute holds dense feature vectors
		        computed by the models in the pipeline. Let's say a
		        document with 30 words has a tensor with 128 dimensions
		        per word. doc.tensor.shape will be (30, 128). After
		        calling doc.extend_tensor with an array of shape (30, 64),
		        doc.tensor == (30, 192).
		        
	**/
	public function extend_tensor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Doc.from_array(self, attrs, array)
		Load attributes from a numpy array. Write to a `Doc` object, from an
		        `(M, N)` array of attributes.
		
		        attrs (list) A list of attribute ID ints.
		        array (numpy.ndarray[ndim=2, dtype='int32']): The attribute values.
		        RETURNS (Doc): Itself.
		
		        DOCS: https://spacy.io/api/doc#from_array
		        
	**/
	public function from_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Doc.from_bytes(self, bytes_data, *, exclude=tuple())
		Deserialize, i.e. import the document contents from a binary string.
		
		        data (bytes): The string to load from.
		        exclude (list): String names of serialization fields to exclude.
		        RETURNS (Doc): Itself.
		
		        DOCS: https://spacy.io/api/doc#from_bytes
		        
	**/
	public function from_bytes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Doc.from_dict(self, msg, *, exclude=tuple())
		Deserialize, i.e. import the document contents from a binary string.
		
		        data (bytes): The string to load from.
		        exclude (list): String names of serialization fields to exclude.
		        RETURNS (Doc): Itself.
		
		        DOCS: https://spacy.io/api/doc#from_dict
		        
	**/
	public function from_dict(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Doc.from_disk(self, path, *, exclude=tuple())
		Loads state from a directory. Modifies the object in place and
		        returns it.
		
		        path (str / Path): A path to a directory. Paths may be either
		            strings or `Path`-like objects.
		        exclude (list): String names of serialization fields to exclude.
		        RETURNS (Doc): The modified `Doc` object.
		
		        DOCS: https://spacy.io/api/doc#from_disk
		        
	**/
	public function from_disk(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Doc.from_docs(docs, ensure_whitespace=True, attrs=None)
		Concatenate multiple Doc objects to form a new one. Raises an error
		        if the `Doc` objects do not all share the same `Vocab`.
		
		        docs (list): A list of Doc objects.
		        ensure_whitespace (bool): Insert a space between two adjacent docs whenever the first doc does not end in whitespace.
		        attrs (list): Optional list of attribute ID ints or attribute name strings.
		        RETURNS (Doc): A doc that contains the concatenated docs, or None if no docs were given.
		
		        DOCS: https://spacy.io/api/doc#from_docs
		        
	**/
	static public function from_docs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Doc.get_extension(type cls, name)
		Look up a previously registered extension by name.
		
		        name (str): Name of the extension.
		        RETURNS (tuple): A `(default, method, getter, setter)` tuple.
		
		        DOCS: https://spacy.io/api/doc#get_extension
		        
	**/
	public function get_extension(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Doc.get_lca_matrix(self)
		Calculates a matrix of Lowest Common Ancestors (LCA) for a given
		        `Doc`, where LCA[i, j] is the index of the lowest common ancestor among
		        token i and j.
		
		        RETURNS (np.array[ndim=2, dtype=numpy.int32]): LCA matrix with shape
		            (n, n), where n = len(self).
		
		        DOCS: https://spacy.io/api/doc#get_lca_matrix
		        
	**/
	public function get_lca_matrix(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Doc.has_annotation(self, attr, *, require_complete=False)
		Check whether the doc contains annotation on a token attribute.
		
		        attr (Union[int, str]): The attribute string name or int ID.
		        require_complete (bool): Whether to check that the attribute is set on
		            every token in the doc.
		        RETURNS (bool): Whether annotation is present.
		
		        DOCS: https://spacy.io/api/doc#has_annotation
		        
	**/
	public function has_annotation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Doc.has_extension(type cls, name)
		Check whether an extension has been registered.
		
		        name (str): Name of the extension.
		        RETURNS (bool): Whether the extension has been registered.
		
		        DOCS: https://spacy.io/api/doc#has_extension
		        
	**/
	public function has_extension(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		has_unknown_spaces: 'bool'
	**/
	public var has_unknown_spaces : Dynamic;
	/**
		A boolean value indicating whether a word vector is associated with
		the object.
		
		RETURNS (bool): Whether a word vector is associated with the object.
		
		DOCS: https://spacy.io/api/doc#has_vector
	**/
	public var has_vector : Dynamic;
	public var is_nered : Dynamic;
	public var is_parsed : Dynamic;
	public var is_sentenced : Dynamic;
	public var is_tagged : Dynamic;
	/**
		RETURNS (uint64): ID of the language of the doc's vocabulary.
	**/
	public var lang : Dynamic;
	/**
		RETURNS (str): Language of the doc's vocabulary, e.g. 'en'.
	**/
	public var lang_ : Dynamic;
	public var mem : Dynamic;
	/**
		Iterate over the base noun phrases in the document. Yields base
		noun-phrase #[code Span] objects, if the language has a noun chunk iterator.
		Raises a NotImplementedError otherwise.
		
		A base noun phrase, or "NP chunk", is a noun
		phrase that does not permit other NPs to be nested within it – so no
		NP-level coordination, no prepositional phrases, and no relative
		clauses.
		
		YIELDS (Span): Noun chunks in the document.
		
		DOCS: https://spacy.io/api/doc#noun_chunks
	**/
	public var noun_chunks : Dynamic;
	/**
		noun_chunks_iterator: object
	**/
	public var noun_chunks_iterator : Dynamic;
	/**
		Doc.remove_extension(type cls, name)
		Remove a previously registered extension.
		
		        name (str): Name of the extension.
		        RETURNS (tuple): A `(default, method, getter, setter)` tuple of the
		            removed extension.
		
		        DOCS: https://spacy.io/api/doc#remove_extension
		        
	**/
	public function remove_extension(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Doc.retokenize(self)
		Context manager to handle retokenization of the Doc.
		        Modifications to the Doc's tokenization are stored, and then
		        made all at once when the context manager exits. This is
		        much more efficient, and less error-prone.
		
		        All views of the Doc (Span and Token) created before the
		        retokenization are invalidated, although they may accidentally
		        continue to work.
		
		        DOCS: https://spacy.io/api/doc#retokenize
		        USAGE: https://spacy.io/usage/linguistic-features#retokenization
		        
	**/
	public function retokenize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sentiment: 'float'
	**/
	public var sentiment : Dynamic;
	/**
		Iterate over the sentences in the document. Yields sentence `Span`
		objects. Sentence spans have no label.
		
		YIELDS (Span): Sentences in the document.
		
		DOCS: https://spacy.io/api/doc#sents
	**/
	public var sents : Dynamic;
	/**
		Doc.set_ents(self, entities, *, blocked=None, missing=None, outside=None, default=SetEntsDefault.outside)
		Set entity annotation.
		
		        entities (List[Span]): Spans with labels to set as entities.
		        blocked (Optional[List[Span]]): Spans to set as 'blocked' (never an
		            entity) for spacy's built-in NER component. Other components may
		            ignore this setting.
		        missing (Optional[List[Span]]): Spans with missing/unknown entity
		            information.
		        outside (Optional[List[Span]]): Spans outside of entities (O in IOB).
		        default (str): How to set entity annotation for tokens outside of any
		            provided spans. Options: "blocked", "missing", "outside" and
		            "unmodified" (preserve current state). Defaults to "outside".
		        
	**/
	public function set_ents(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Doc.set_extension(type cls, name, **kwargs)
		Define a custom attribute which becomes available as `Doc._`.
		
		        name (str): Name of the attribute to set.
		        default: Optional default value of the attribute.
		        getter (callable): Optional getter function.
		        setter (callable): Optional setter function.
		        method (callable): Optional method for method extension.
		        force (bool): Force overwriting existing attribute.
		
		        DOCS: https://spacy.io/api/doc#set_extension
		        USAGE: https://spacy.io/usage/processing-pipelines#custom-components-attributes
		        
	**/
	public function set_extension(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Doc.similarity(self, other)
		Make a semantic similarity estimate. The default estimate is cosine
		        similarity using an average of word vectors.
		
		        other (object): The object to compare with. By default, accepts `Doc`,
		            `Span`, `Token` and `Lexeme` objects.
		        RETURNS (float): A scalar similarity score. Higher is more similar.
		
		        DOCS: https://spacy.io/api/doc#similarity
		        
	**/
	public function similarity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var spans : Dynamic;
	/**
		tensor: object
	**/
	public var tensor : Dynamic;
	/**
		A unicode representation of the document text.
		
		RETURNS (str): The original verbatim text of the document.
	**/
	public var text : Dynamic;
	/**
		An alias of `Doc.text`, provided for duck-type compatibility with
		`Span` and `Token`.
		
		RETURNS (str): The original verbatim text of the document.
	**/
	public var text_with_ws : Dynamic;
	/**
		Doc.to_array(self, py_attr_ids) -> ndarray
		Export given token attributes to a numpy `ndarray`.
		        If `attr_ids` is a sequence of M attributes, the output array will be
		        of shape `(N, M)`, where N is the length of the `Doc` (in tokens). If
		        `attr_ids` is a single attribute, the output shape will be (N,). You
		        can specify attributes by integer ID (e.g. spacy.attrs.LEMMA) or
		        string name (e.g. 'LEMMA' or 'lemma').
		
		        py_attr_ids (list[]): A list of attributes (int IDs or string names).
		        RETURNS (numpy.ndarray[long, ndim=2]): A feature matrix, with one row
		            per word, and one column per attribute indicated in the input
		            `attr_ids`.
		
		        EXAMPLE:
		            >>> from spacy.attrs import LOWER, POS, ENT_TYPE, IS_ALPHA
		            >>> doc = nlp(text)
		            >>> # All strings mapped to integers, for easy export to numpy
		            >>> np_array = doc.to_array([LOWER, POS, ENT_TYPE, IS_ALPHA])
		        
	**/
	public function to_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Doc.to_bytes(self, *, exclude=tuple())
		Serialize, i.e. export the document contents to a binary string.
		
		        exclude (list): String names of serialization fields to exclude.
		        RETURNS (bytes): A losslessly serialized copy of the `Doc`, including
		            all annotations.
		
		        DOCS: https://spacy.io/api/doc#to_bytes
		        
	**/
	public function to_bytes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Doc.to_dict(self, *, exclude=tuple())
		Export the document contents to a dictionary for serialization.
		
		        exclude (list): String names of serialization fields to exclude.
		        RETURNS (bytes): A losslessly serialized copy of the `Doc`, including
		            all annotations.
		
		        DOCS: https://spacy.io/api/doc#to_bytes
		        
	**/
	public function to_dict(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Doc.to_disk(self, path, *, exclude=tuple())
		Save the current state to a directory.
		
		        path (str / Path): A path to a directory, which will be created if
		            it doesn't exist. Paths may be either strings or Path-like objects.
		        exclude (Iterable[str]): String names of serialization fields to exclude.
		
		        DOCS: https://spacy.io/api/doc#to_disk
		        
	**/
	public function to_disk(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Doc.to_json(self, underscore=None)
		Convert a Doc to JSON.
		
		        underscore (list): Optional list of string names of custom doc._.
		        attributes. Attribute values need to be JSON-serializable. Values will
		        be added to an "_" key in the data, e.g. "_": {"foo": "bar"}.
		        RETURNS (dict): The data in spaCy's JSON format.
		        
	**/
	public function to_json(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Doc.to_utf8_array(self, int nr_char=-1)
		Encode word strings to utf8, and export to a fixed-width array
		        of characters. Characters are placed into the array in the order:
		            0, -1, 1, -2, etc
		        For example, if the array is sliced array[:, :8], the array will
		        contain the first 4 characters and last 4 characters of each word ---
		        with the middle characters clipped out. The value 255 is used as a pad
		        value.
		        
	**/
	public function to_utf8_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		user_data: object
	**/
	public var user_data : Dynamic;
	/**
		user_hooks: dict
	**/
	public var user_hooks : Dynamic;
	/**
		user_span_hooks: dict
	**/
	public var user_span_hooks : Dynamic;
	/**
		user_token_hooks: dict
	**/
	public var user_token_hooks : Dynamic;
	/**
		A real-valued meaning representation. Defaults to an average of the
		token vectors.
		
		RETURNS (numpy.ndarray[ndim=1, dtype='float32']): A 1D numpy array
		    representing the document's semantics.
		
		DOCS: https://spacy.io/api/doc#vector
	**/
	public var vector : Dynamic;
	/**
		The L2 norm of the document's vector representation.
		
		RETURNS (float): The L2 norm of the vector representation.
		
		DOCS: https://spacy.io/api/doc#vector_norm
	**/
	public var vector_norm : Dynamic;
	public var vocab : Dynamic;
}