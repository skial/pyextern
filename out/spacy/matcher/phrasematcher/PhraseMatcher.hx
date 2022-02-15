/* This file is generated, do not edit! */
package spacy.matcher.phrasematcher;
@:pythonImport("spacy.matcher.phrasematcher", "PhraseMatcher") extern class PhraseMatcher {
	/**
		Find all sequences matching the supplied patterns on the `Doc`.
		
		doclike (Doc or Span): The document to match over.
		as_spans (bool): Return Span objects with labels instead of (match_id,
		    start, end) tuples.
		RETURNS (list): A list of `(match_id, start, end)` tuples,
		    describing the matches. A match tuple describes a span
		    `doc[start:end]`. The `match_id` is an integer. If as_spans is set
		    to True, a list of Span objects is returned.
		
		DOCS: https://spacy.io/api/phrasematcher#call
	**/
	public function __call__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether the matcher contains rules for a match ID.
		
		key (str): The match ID.
		RETURNS (bool): Whether the matcher contains rules for this match ID.
		
		DOCS: https://spacy.io/api/phrasematcher#contains
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
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize the PhraseMatcher.
		
		vocab (Vocab): The shared vocabulary.
		attr (int / str): Token attribute to match on.
		validate (bool): Perform additional validation when patterns are added.
		
		DOCS: https://spacy.io/api/phrasematcher#init
	**/
	@:native("__init__")
	public function ___init__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Initialize the PhraseMatcher.
		
		vocab (Vocab): The shared vocabulary.
		attr (int / str): Token attribute to match on.
		validate (bool): Perform additional validation when patterns are added.
		
		DOCS: https://spacy.io/api/phrasematcher#init
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
		Get the number of match IDs added to the matcher.
		
		RETURNS (int): The number of rules.
		
		DOCS: https://spacy.io/api/phrasematcher#len
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
		PhraseMatcher.__reduce__(self)
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
		PhraseMatcher._convert_to_array(self, Doc doc)
	**/
	public function _convert_to_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		PhraseMatcher.add(self, key, docs, *_docs, on_match=None)
		Add a match-rule to the phrase-matcher. A match-rule consists of: an ID
		        key, an on_match callback, and one or more patterns.
		
		        Since spaCy v2.2.2, PhraseMatcher.add takes a list of patterns as the
		        second argument, with the on_match callback as an optional keyword
		        argument.
		
		        key (str): The match ID.
		        docs (list): List of `Doc` objects representing match patterns.
		        on_match (callable): Callback executed on match.
		        *_docs (Doc): For backwards compatibility: list of patterns to add
		            as variable arguments. Will be ignored if a list of patterns is
		            provided as the second argument.
		
		        DOCS: https://spacy.io/api/phrasematcher#add
		        
	**/
	public function add(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		PhraseMatcher.pipe(self, stream, batch_size=1000, return_matches=False, as_tuples=False)
		Match a stream of documents, yielding them in turn. Deprecated as of
		        spaCy v3.0.
		        
	**/
	public function pipe(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		PhraseMatcher.remove(self, key)
		Remove a rule from the matcher by match ID. A KeyError is raised if
		        the key does not exist.
		
		        key (str): The match ID.
		
		        DOCS: https://spacy.io/api/phrasematcher#remove
		        
	**/
	public function remove(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var vocab : Dynamic;
}