/* This file is generated, do not edit! */
package spacy.matcher.matcher;
@:pythonImport("spacy.matcher.matcher", "Matcher") extern class Matcher {
	/**
		Find all token sequences matching the supplied pattern.
		
		doclike (Doc or Span): The document to match over.
		as_spans (bool): Return Span objects with labels instead of (match_id,
		    start, end) tuples.
		allow_missing (bool): Whether to skip checks for missing annotation for
		    attributes included in patterns. Defaults to False.
		with_alignments (bool): Return match alignment information, which is
		    `List[int]` with length of matched span. Each entry denotes the
		    corresponding index of token pattern. If as_spans is set to True,
		    this setting is ignored.
		RETURNS (list): A list of `(match_id, start, end)` tuples,
		    describing the matches. A match tuple describes a span
		    `doc[start:end]`. The `match_id` is an integer. If as_spans is set
		    to True, a list of Span objects is returned.
		    If with_alignments is set to True and as_spans is set to False,
		    A list of `(match_id, start, end, alignments)` tuples is returned.
	**/
	public function __call__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether the matcher contains rules for a match ID.
		
		key (str): The match ID.
		RETURNS (bool): Whether the matcher contains rules for this match ID.
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
		Create the Matcher.
		
		vocab (Vocab): The vocabulary object, which must be shared with the
		    documents the matcher will operate on.
	**/
	@:native("__init__")
	public function ___init__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Create the Matcher.
		
		vocab (Vocab): The vocabulary object, which must be shared with the
		    documents the matcher will operate on.
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
		Get the number of rules added to the matcher. Note that this only
		returns the number of rules (identical with the number of IDs), not the
		number of individual patterns.
		
		RETURNS (int): The number of rules.
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
	/**
		Matcher.__reduce__(self)
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
		_callbacks: object
	**/
	public var _callbacks : Dynamic;
	/**
		_extensions: object
	**/
	public var _extensions : Dynamic;
	/**
		_extra_predicates: object
	**/
	public var _extra_predicates : Dynamic;
	/**
		_filter: object
	**/
	public var _filter : Dynamic;
	/**
		Matcher._normalize_key(self, key)
	**/
	public function _normalize_key(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_patterns: object
	**/
	public var _patterns : Dynamic;
	/**
		Matcher._require_patterns(self) -> None
		Raise a warning if this component has no patterns defined.
	**/
	public function _require_patterns(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_seen_attrs: object
	**/
	public var _seen_attrs : Dynamic;
	/**
		Matcher.add(self, key, patterns, *, on_match=None, greedy: str = None)
		Add a match-rule to the matcher. A match-rule consists of: an ID
		        key, an on_match callback, and one or more patterns.
		
		        If the key exists, the patterns are appended to the previous ones, and
		        the previous on_match callback is replaced. The `on_match` callback
		        will receive the arguments `(matcher, doc, i, matches)`. You can also
		        set `on_match` to `None` to not perform any actions.
		
		        A pattern consists of one or more `token_specs`, where a `token_spec`
		        is a dictionary mapping attribute IDs to values, and optionally a
		        quantifier operator under the key "op". The available quantifiers are:
		
		        '!': Negate the pattern, by requiring it to match exactly 0 times.
		        '?': Make the pattern optional, by allowing it to match 0 or 1 times.
		        '+': Require the pattern to match 1 or more times.
		        '*': Allow the pattern to zero or more times.
		
		        The + and * operators return all possible matches (not just the greedy
		        ones). However, the "greedy" argument can filter the final matches
		        by returning a non-overlapping set per key, either taking preference to
		        the first greedy match ("FIRST"), or the longest ("LONGEST").
		
		        Since spaCy v2.2.2, Matcher.add takes a list of patterns as the second
		        argument, and the on_match callback is an optional keyword argument.
		
		        key (Union[str, int]): The match ID.
		        patterns (list): The patterns to add for the given key.
		        on_match (callable): Optional callback executed on match.
		        greedy (str): Optional filter: "FIRST" or "LONGEST".
		        
	**/
	public function add(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Matcher.get(self, key, default=None)
		Retrieve the pattern stored for a key.
		
		        key (str / int): The key to retrieve.
		        RETURNS (tuple): The rule, as an (on_match, patterns) tuple.
		        
	**/
	public function get(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Matcher.has_key(self, key)
		Check whether the matcher has a rule with a given key.
		
		        key (string or int): The key to check.
		        RETURNS (bool): Whether the matcher has the rule.
		        
	**/
	public function has_key(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Matcher.pipe(self, docs, batch_size=1000, return_matches=False, as_tuples=False)
		Match a stream of documents, yielding them in turn. Deprecated as of
		        spaCy v3.0.
		        
	**/
	public function pipe(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Matcher.remove(self, key)
		Remove a rule from the matcher. A KeyError is raised if the key does
		        not exist.
		
		        key (str): The ID of the match rule.
		        
	**/
	public function remove(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		validate: object
	**/
	public var validate : Dynamic;
	public var vocab : Dynamic;
}