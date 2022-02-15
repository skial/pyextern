/* This file is generated, do not edit! */
package spacy.tokens.span;
@:pythonImport("spacy.tokens.span", "Span") extern class Span {
	/**
		Custom extension attributes registered via `set_extension`.
	**/
	public var _ : Dynamic;
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
		Get a `Token` or a `Span` object
		
		i (int or tuple): The index of the token within the span, or slice of
		    the span to get.
		RETURNS (Token or Span): The token at `span[i]`.
		
		DOCS: https://spacy.io/api/span#getitem
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Iterate over `Token` objects.
		
		YIELDS (Token): A `Token` object.
		
		DOCS: https://spacy.io/api/span#iter
	**/
	public function __iter__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Get the number of tokens in the span.
		
		RETURNS (int): The number of tokens in the span.
		
		DOCS: https://spacy.io/api/span#len
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
		Span.__reduce__(self)
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
		Span._fix_dep_copy(self, attrs, array)
		Rewire dependency links to make sure their heads fall into the span
		       while still keeping the correct number of sentences. 
	**/
	public function _fix_dep_copy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_vector: object
	**/
	public var _vector : Dynamic;
	/**
		_vector_norm: object
	**/
	public var _vector_norm : Dynamic;
	/**
		Span.as_doc(self, *, bool copy_user_data=False, array_head=None, array=None)
		Create a `Doc` object with a copy of the `Span`'s data.
		
		        copy_user_data (bool): Whether or not to copy the original doc's user data.
		        array_head (tuple): `Doc` array attrs, can be passed in to speed up computation.
		        array (ndarray): `Doc` as array, can be passed in to speed up computation.
		        RETURNS (Doc): The `Doc` copy of the span.
		
		        DOCS: https://spacy.io/api/span#as_doc
		        
	**/
	public function as_doc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Span.char_span(self, int start_idx, int end_idx, label=0, kb_id=0, vector=None)
		Create a `Span` object from the slice `span.text[start : end]`.
		
		        start (int): The index of the first character of the span.
		        end (int): The index of the first character after the span.
		        label (uint64 or string): A label to attach to the Span, e.g. for
		            named entities.
		        kb_id (uint64 or string):  An ID from a KB to capture the meaning of a named entity.
		        vector (ndarray[ndim=1, dtype='float32']): A meaning representation of
		            the span.
		        RETURNS (Span): The newly constructed object.
		        
	**/
	public function char_span(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Tokens that are conjoined to the span's root.
		
		RETURNS (tuple): A tuple of Token objects.
		
		DOCS: https://spacy.io/api/span#lefts
	**/
	public var conjuncts : Dynamic;
	public var doc : Dynamic;
	public var end : Dynamic;
	public var end_char : Dynamic;
	/**
		RETURNS (uint64): The entity ID.
	**/
	public var ent_id : Dynamic;
	/**
		RETURNS (str): The (string) entity ID.
	**/
	public var ent_id_ : Dynamic;
	/**
		The named entities that fall completely within the span. Returns
		a tuple of `Span` objects.
		
		RETURNS (tuple): Entities in the span, one `Span` per entity.
		
		DOCS: https://spacy.io/api/span#ents
	**/
	public var ents : Dynamic;
	/**
		Span.get_extension(type cls, name)
		Look up a previously registered extension by name.
		
		        name (str): Name of the extension.
		        RETURNS (tuple): A `(default, method, getter, setter)` tuple.
		
		        DOCS: https://spacy.io/api/span#get_extension
		        
	**/
	public function get_extension(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Span.get_lca_matrix(self)
		Calculates a matrix of Lowest Common Ancestors (LCA) for a given
		        `Span`, where LCA[i, j] is the index of the lowest common ancestor among
		        the tokens span[i] and span[j]. If they have no common ancestor within
		        the span, LCA[i, j] will be -1.
		
		        RETURNS (np.array[ndim=2, dtype=numpy.int32]): LCA matrix with shape
		            (n, n), where n = len(self).
		
		        DOCS: https://spacy.io/api/span#get_lca_matrix
		        
	**/
	public function get_lca_matrix(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Span.has_extension(type cls, name)
		Check whether an extension has been registered.
		
		        name (str): Name of the extension.
		        RETURNS (bool): Whether the extension has been registered.
		
		        DOCS: https://spacy.io/api/span#has_extension
		        
	**/
	public function has_extension(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		A boolean value indicating whether a word vector is associated with
		the object.
		
		RETURNS (bool): Whether a word vector is associated with the object.
		
		DOCS: https://spacy.io/api/span#has_vector
	**/
	public var has_vector : Dynamic;
	public var kb_id : Dynamic;
	/**
		RETURNS (str): The named entity's KB ID.
	**/
	public var kb_id_ : Dynamic;
	public var label : Dynamic;
	/**
		RETURNS (str): The span's label.
	**/
	public var label_ : Dynamic;
	/**
		Tokens that are to the left of the span, whose head is within the
		`Span`.
		
		YIELDS (Token):A left-child of a token of the span.
		
		DOCS: https://spacy.io/api/span#lefts
	**/
	public var lefts : Dynamic;
	/**
		RETURNS (str): The span's lemma.
	**/
	public var lemma_ : Dynamic;
	/**
		The number of tokens that are to the left of the span, whose
		heads are within the span.
		
		RETURNS (int): The number of leftward immediate children of the
		    span, in the syntactic dependency parse.
		
		DOCS: https://spacy.io/api/span#n_lefts
	**/
	public var n_lefts : Dynamic;
	/**
		The number of tokens that are to the right of the span, whose
		heads are within the span.
		
		RETURNS (int): The number of rightward immediate children of the
		    span, in the syntactic dependency parse.
		
		DOCS: https://spacy.io/api/span#n_rights
	**/
	public var n_rights : Dynamic;
	/**
		Iterate over the base noun phrases in the span. Yields base
		noun-phrase #[code Span] objects, if the language has a noun chunk iterator.
		Raises a NotImplementedError otherwise.
		
		A base noun phrase, or "NP chunk", is a noun
		phrase that does not permit other NPs to be nested within it – so no
		NP-level coordination, no prepositional phrases, and no relative
		clauses.
		
		YIELDS (Span): Noun chunks in the span.
		
		DOCS: https://spacy.io/api/span#noun_chunks
	**/
	public var noun_chunks : Dynamic;
	/**
		Verbatim text content (identical to `Span.text`). Exists mostly for
		consistency with other attributes.
		
		RETURNS (str): The span's text.
	**/
	public var orth_ : Dynamic;
	/**
		Span.remove_extension(type cls, name)
		Remove a previously registered extension.
		
		        name (str): Name of the extension.
		        RETURNS (tuple): A `(default, method, getter, setter)` tuple of the
		            removed extension.
		
		        DOCS: https://spacy.io/api/span#remove_extension
		        
	**/
	public function remove_extension(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Tokens that are to the right of the Span, whose head is within the
		`Span`.
		
		YIELDS (Token): A right-child of a token of the span.
		
		DOCS: https://spacy.io/api/span#rights
	**/
	public var rights : Dynamic;
	/**
		The token with the shortest path to the root of the
		sentence (or the root itself). If multiple tokens are equally
		high in the tree, the first token is taken.
		
		RETURNS (Token): The root token.
		
		DOCS: https://spacy.io/api/span#root
	**/
	public var root : Dynamic;
	/**
		Obtain the sentence that contains this span. If the given span
		crosses sentence boundaries, return only the first sentence
		to which it belongs.
		
		RETURNS (Span): The sentence span that the span is a part of.
	**/
	public var sent : Dynamic;
	/**
		RETURNS (float): A scalar value indicating the positivity or
		negativity of the span.
	**/
	public var sentiment : Dynamic;
	/**
		Obtain the sentences that contain this span. If the given span
		crosses sentence boundaries, return all sentences it is a part of.
		
		RETURNS (Iterable[Span]): All sentences that the span is a part of.
		
		 DOCS: https://spacy.io/api/span#sents
	**/
	public var sents : Dynamic;
	/**
		Span.set_extension(type cls, name, **kwargs)
		Define a custom attribute which becomes available as `Span._`.
		
		        name (str): Name of the attribute to set.
		        default: Optional default value of the attribute.
		        getter (callable): Optional getter function.
		        setter (callable): Optional setter function.
		        method (callable): Optional method for method extension.
		        force (bool): Force overwriting existing attribute.
		
		        DOCS: https://spacy.io/api/span#set_extension
		        USAGE: https://spacy.io/usage/processing-pipelines#custom-components-attributes
		        
	**/
	public function set_extension(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Span.similarity(self, other)
		Make a semantic similarity estimate. The default estimate is cosine
		        similarity using an average of word vectors.
		
		        other (object): The object to compare with. By default, accepts `Doc`,
		            `Span`, `Token` and `Lexeme` objects.
		        RETURNS (float): A scalar similarity score. Higher is more similar.
		
		        DOCS: https://spacy.io/api/span#similarity
		        
	**/
	public function similarity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var start : Dynamic;
	public var start_char : Dynamic;
	/**
		Tokens within the span and tokens which descend from them.
		
		YIELDS (Token): A token within the span, or a descendant from it.
		
		DOCS: https://spacy.io/api/span#subtree
	**/
	public var subtree : Dynamic;
	/**
		The span's slice of the doc's tensor.
		
		RETURNS (ndarray[ndim=2, dtype='float32']): A 2D numpy or cupy array
		    representing the span's semantics.
	**/
	public var tensor : Dynamic;
	/**
		RETURNS (str): The original verbatim text of the span.
	**/
	public var text : Dynamic;
	/**
		The text content of the span with a trailing whitespace character if
		the last token has one.
		
		RETURNS (str): The text content of the span (with trailing
		    whitespace).
	**/
	public var text_with_ws : Dynamic;
	/**
		Span.to_array(self, py_attr_ids) -> ndarray
		Given a list of M attribute IDs, export the tokens to a numpy
		        `ndarray` of shape `(N, M)`, where `N` is the length of the document.
		        The values will be 32-bit integers.
		
		        attr_ids (list[int]): A list of attribute ID ints.
		        RETURNS (numpy.ndarray[long, ndim=2]): A feature matrix, with one row
		            per word, and one column per attribute indicated in the input
		            `attr_ids`.
		        
	**/
	public function to_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		A real-valued meaning representation. Defaults to an average of the
		token vectors.
		
		RETURNS (numpy.ndarray[ndim=1, dtype='float32']): A 1D numpy array
		    representing the span's semantics.
		
		DOCS: https://spacy.io/api/span#vector
	**/
	public var vector : Dynamic;
	/**
		The L2 norm of the span's vector representation.
		
		RETURNS (float): The L2 norm of the vector representation.
		
		DOCS: https://spacy.io/api/span#vector_norm
	**/
	public var vector_norm : Dynamic;
	/**
		RETURNS (Vocab): The Span's Doc's vocab.
	**/
	public var vocab : Dynamic;
}