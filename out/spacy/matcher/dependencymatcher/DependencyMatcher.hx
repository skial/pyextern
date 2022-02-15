/* This file is generated, do not edit! */
package spacy.matcher.dependencymatcher;
@:pythonImport("spacy.matcher.dependencymatcher", "DependencyMatcher") extern class DependencyMatcher {
	/**
		Find all token sequences matching the supplied pattern.
		
		doclike (Doc or Span): The document to match over.
		RETURNS (list): A list of `(key, start, end)` tuples,
		    describing the matches. A match tuple describes a span
		    `doc[start:end]`. The `label_id` and `key` are both integers.
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
		Create the DependencyMatcher.
		
		vocab (Vocab): The vocabulary object, which must be shared with the
		    documents the matcher will operate on.
		validate (bool): Whether patterns should be validated, passed to
		    Matcher as `validate`
	**/
	@:native("__init__")
	public function ___init__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Create the DependencyMatcher.
		
		vocab (Vocab): The vocabulary object, which must be shared with the
		    documents the matcher will operate on.
		validate (bool): Whether patterns should be validated, passed to
		    Matcher as `validate`
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
		Get the number of rules, which are edges, added to the dependency
		tree matcher.
		
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
		DependencyMatcher.__reduce__(self)
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
		DependencyMatcher._check_relationships(self, cache, doc, candidate_match, left_idx, tree)
	**/
	public function _check_relationships(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		DependencyMatcher._dep(self, doc, node)
	**/
	public function _dep(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		DependencyMatcher._dep_chain(self, doc, node)
	**/
	public function _dep_chain(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		DependencyMatcher._follow(self, doc, node)
	**/
	public function _follow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		DependencyMatcher._get_keys_to_position_maps(self, doc)
		
		Processes the doc and groups all matches by their root and match id.
		Returns a dict mapping each (root, match id) pair to the list of
		tokens indices which are descendants of root and match the token
		pattern identified by the given match id.
		
		e.g. keys_to_position_maps[root_index][match_id] = [...]
	**/
	public function _get_keys_to_position_maps(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		DependencyMatcher._get_matcher_key(self, key, pattern_idx, token_idx)
		
		Creates a token key to be used by the matcher
	**/
	public function _get_matcher_key(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		DependencyMatcher._get_matches(self, cache, doc, tree, tokens_to_key, keys_to_position)
	**/
	public function _get_matches(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		DependencyMatcher._get_sent(self, token)
	**/
	public function _get_sent(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		DependencyMatcher._gov(self, doc, node)
	**/
	public function _gov(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		DependencyMatcher._gov_chain(self, doc, node)
	**/
	public function _gov_chain(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		DependencyMatcher._imm_follow(self, doc, node)
	**/
	public function _imm_follow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		DependencyMatcher._imm_left_sib(self, doc, node)
	**/
	public function _imm_left_sib(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		DependencyMatcher._imm_precede(self, doc, node)
	**/
	public function _imm_precede(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		DependencyMatcher._imm_right_sib(self, doc, node)
	**/
	public function _imm_right_sib(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		DependencyMatcher._left_sib(self, doc, node)
	**/
	public function _left_sib(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var _matcher : Dynamic;
	/**
		DependencyMatcher._normalize_key(self, key)
	**/
	public function _normalize_key(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_ops: object
	**/
	public var _ops : Dynamic;
	/**
		_patterns: object
	**/
	public var _patterns : Dynamic;
	/**
		DependencyMatcher._precede(self, doc, node)
	**/
	public function _precede(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_raw_patterns: object
	**/
	public var _raw_patterns : Dynamic;
	/**
		DependencyMatcher._resolve_node_operator(self, cache, doc, node, operator)
		
		Given a doc, a node (as a index in the doc) and a REL_OP operator
		returns the list of nodes from the doc that belong to node+operator. 
	**/
	public function _resolve_node_operator(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		DependencyMatcher._retrieve_tree(self, patterns, key)
	**/
	public function _retrieve_tree(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		DependencyMatcher._right_sib(self, doc, node)
	**/
	public function _right_sib(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_root: object
	**/
	public var _root : Dynamic;
	/**
		_tokens_to_key: object
	**/
	public var _tokens_to_key : Dynamic;
	/**
		_tree: object
	**/
	public var _tree : Dynamic;
	/**
		DependencyMatcher._validate_input(self, pattern, key)
	**/
	public function _validate_input(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		DependencyMatcher.add(self, key, patterns, *, on_match=None)
		Add a new matcher rule to the matcher.
		
		        key (str): The match ID.
		        patterns (list): The patterns to add for the given key.
		        on_match (callable): Optional callback executed on match.
		        
	**/
	public function add(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		DependencyMatcher.get(self, key, default=None)
		Retrieve the pattern stored for a key.
		
		        key (str / int): The key to retrieve.
		        RETURNS (tuple): The rule, as an (on_match, patterns) tuple.
		        
	**/
	public function get(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		DependencyMatcher.has_key(self, key)
		Check whether the matcher has a rule with a given key.
		
		        key (string or int): The key to check.
		        RETURNS (bool): Whether the matcher has the rule.
		        
	**/
	public function has_key(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		DependencyMatcher.remove(self, key)
	**/
	public function remove(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var vocab : Dynamic;
}