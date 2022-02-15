/* This file is generated, do not edit! */
package spacy.tokens.token;
@:pythonImport("spacy.tokens.token", "Token") extern class Token {
	/**
		Custom extension attributes registered via `set_extension`.
	**/
	public var _ : Dynamic;
	/**
		Token.__bytes__(self)
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
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		The number of unicode characters in the token, i.e. `token.text`.
		
		RETURNS (int): The number of unicode characters in the token.
		
		DOCS: https://spacy.io/api/token#len
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
		Token.__reduce__(self)
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
		Token.__unicode__(self)
	**/
	public function __unicode__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		A sequence of this token's syntactic ancestors.
		
		YIELDS (Token): A sequence of ancestor tokens such that
		    `ancestor.is_ancestor(self)`.
		
		DOCS: https://spacy.io/api/token#ancestors
	**/
	public var ancestors : Dynamic;
	/**
		Token.check_flag(self, attr_id_t flag_id) -> bool
		Check the value of a boolean flag.
		
		        flag_id (int): The ID of the flag attribute.
		        RETURNS (bool): Whether the flag is set.
		
		        DOCS: https://spacy.io/api/token#check_flag
		        
	**/
	public function check_flag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		A sequence of the token's immediate syntactic children.
		
		YIELDS (Token): A child token such that `child.head==self`.
		
		DOCS: https://spacy.io/api/token#children
	**/
	public var children : Dynamic;
	/**
		RETURNS (int): Brown cluster ID.
	**/
	public var cluster : Dynamic;
	/**
		A sequence of coordinated tokens, including the token itself.
		
		RETURNS (tuple): The coordinated tokens.
		
		DOCS: https://spacy.io/api/token#conjuncts
	**/
	public var conjuncts : Dynamic;
	/**
		RETURNS (uint64): ID of syntactic dependency label.
	**/
	public var dep : Dynamic;
	/**
		RETURNS (str): The syntactic dependency label.
	**/
	public var dep_ : Dynamic;
	public var doc : Dynamic;
	/**
		RETURNS (uint64): ID of the entity the token is an instance of,
		if any.
	**/
	public var ent_id : Dynamic;
	/**
		RETURNS (str): ID of the entity the token is an instance of,
		if any.
	**/
	public var ent_id_ : Dynamic;
	/**
		IOB code of named entity tag. `1="I", 2="O", 3="B"`. 0 means no tag
		is assigned.
		
		RETURNS (uint64): IOB code of named entity tag.
	**/
	public var ent_iob : Dynamic;
	/**
		IOB code of named entity tag. "B" means the token begins an entity,
		"I" means it is inside an entity, "O" means it is outside an entity,
		and "" means no entity tag is set. "B" with an empty ent_type
		means that the token is blocked from further processing by NER.
		
		RETURNS (str): IOB code of named entity tag.
	**/
	public var ent_iob_ : Dynamic;
	/**
		RETURNS (uint64): Named entity KB ID.
	**/
	public var ent_kb_id : Dynamic;
	/**
		RETURNS (str): Named entity KB ID.
	**/
	public var ent_kb_id_ : Dynamic;
	/**
		RETURNS (uint64): Named entity type.
	**/
	public var ent_type : Dynamic;
	/**
		RETURNS (str): Named entity type.
	**/
	public var ent_type_ : Dynamic;
	/**
		Token.get_extension(type cls, name)
		Look up a previously registered extension by name.
		
		        name (str): Name of the extension.
		        RETURNS (tuple): A `(default, method, getter, setter)` tuple.
		
		        DOCS: https://spacy.io/api/token#get_extension
		        
	**/
	public function get_extension(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Token.has_dep(self)
		Check whether the token has annotated dep information.
		        Returns False when the dep label is unset/missing.
		
		        RETURNS (bool): Whether the dep label is valid or not.
		        
	**/
	public function has_dep(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Token.has_extension(type cls, name)
		Check whether an extension has been registered.
		
		        name (str): Name of the extension.
		        RETURNS (bool): Whether the extension has been registered.
		
		        DOCS: https://spacy.io/api/token#has_extension
		        
	**/
	public function has_extension(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Token.has_head(self)
		Check whether the token has annotated head information.
		        Return False when the head annotation is unset/missing.
		
		        RETURNS (bool): Whether the head annotation is valid or not.
		        
	**/
	public function has_head(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Token.has_morph(self)
		Check whether the token has annotated morph information.
		        Return False when the morph annotation is unset/missing.
		
		        RETURNS (bool): Whether the morph annotation is set.
		        
	**/
	public function has_morph(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		A boolean value indicating whether a word vector is associated with
		the object.
		
		RETURNS (bool): Whether a word vector is associated with the object.
		
		DOCS: https://spacy.io/api/token#has_vector
	**/
	public var has_vector : Dynamic;
	/**
		The syntactic parent, or "governor", of this token.
		If token.has_head() is `False`, this method will return itself.
		
		RETURNS (Token): The token predicted by the parser to be the head of
		    the current token.
	**/
	public var head : Dynamic;
	public var i : Dynamic;
	/**
		RETURNS (int): The character offset of the token within the parent
		document.
	**/
	public var idx : Dynamic;
	/**
		Token.iob_strings(type cls)
	**/
	public function iob_strings(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		RETURNS (bool): Whether the token consists of alpha characters.
		Equivalent to `token.text.isalpha()`.
	**/
	public var is_alpha : Dynamic;
	/**
		Token.is_ancestor(self, descendant)
		Check whether this token is a parent, grandparent, etc. of another
		        in the dependency tree.
		
		        descendant (Token): Another token.
		        RETURNS (bool): Whether this token is the ancestor of the descendant.
		
		        DOCS: https://spacy.io/api/token#is_ancestor
		        
	**/
	public function is_ancestor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		RETURNS (bool): Whether the token consists of ASCII characters.
		Equivalent to `[any(ord(c) >= 128 for c in token.text)]`.
	**/
	public var is_ascii : Dynamic;
	/**
		RETURNS (bool): Whether the token is a bracket.
	**/
	public var is_bracket : Dynamic;
	/**
		RETURNS (bool): Whether the token is a currency symbol.
	**/
	public var is_currency : Dynamic;
	/**
		RETURNS (bool): Whether the token consists of digits. Equivalent to
		`token.text.isdigit()`.
	**/
	public var is_digit : Dynamic;
	/**
		RETURNS (bool): Whether the token is a left punctuation mark.
	**/
	public var is_left_punct : Dynamic;
	/**
		RETURNS (bool): Whether the token is in lowercase. Equivalent to
		`token.text.islower()`.
	**/
	public var is_lower : Dynamic;
	/**
		RETURNS (bool): Whether the token is out-of-vocabulary.
	**/
	public var is_oov : Dynamic;
	/**
		RETURNS (bool): Whether the token is punctuation.
	**/
	public var is_punct : Dynamic;
	/**
		RETURNS (bool): Whether the token is a quotation mark.
	**/
	public var is_quote : Dynamic;
	/**
		RETURNS (bool): Whether the token is a right punctuation mark.
	**/
	public var is_right_punct : Dynamic;
	/**
		A boolean value indicating whether the token ends a sentence.
		`None` if unknown. Defaults to `True` for the last token in the `Doc`.
		
		RETURNS (bool / None): Whether the token ends a sentence.
		    None if unknown.
		
		DOCS: https://spacy.io/api/token#is_sent_end
	**/
	public var is_sent_end : Dynamic;
	/**
		A boolean value indicating whether the token starts a sentence.
		`None` if unknown. Defaults to `True` for the first token in the `Doc`.
		
		RETURNS (bool / None): Whether the token starts a sentence.
		    None if unknown.
	**/
	public var is_sent_start : Dynamic;
	/**
		RETURNS (bool): Whether the token consists of whitespace characters.
		Equivalent to `token.text.isspace()`.
	**/
	public var is_space : Dynamic;
	/**
		RETURNS (bool): Whether the token is a stop word, i.e. part of a
		"stop list" defined by the language data.
	**/
	public var is_stop : Dynamic;
	/**
		RETURNS (bool): Whether the token is in titlecase. Equivalent to
		`token.text.istitle()`.
	**/
	public var is_title : Dynamic;
	/**
		RETURNS (bool): Whether the token is in uppercase. Equivalent to
		`token.text.isupper()`
	**/
	public var is_upper : Dynamic;
	/**
		RETURNS (uint64): ID of the language of the parent document's
		vocabulary.
	**/
	public var lang : Dynamic;
	/**
		RETURNS (str): Language of the parent document's vocabulary,
		e.g. 'en'.
	**/
	public var lang_ : Dynamic;
	/**
		The leftmost token of this token's syntactic descendents.
		
		RETURNS (Token): The first token such that `self.is_ancestor(token)`.
	**/
	public var left_edge : Dynamic;
	/**
		The leftward immediate children of the word, in the syntactic
		dependency parse.
		
		YIELDS (Token): A left-child of the token.
		
		DOCS: https://spacy.io/api/token#lefts
	**/
	public var lefts : Dynamic;
	/**
		RETURNS (uint64): ID of the base form of the word, with no
		inflectional suffixes.
	**/
	public var lemma : Dynamic;
	/**
		RETURNS (str): The token lemma, i.e. the base form of the word,
		with no inflectional suffixes.
	**/
	public var lemma_ : Dynamic;
	/**
		RETURNS (Lexeme): The underlying lexeme.
	**/
	public var lex : Dynamic;
	/**
		RETURNS (int): Sequential ID of the token's lexical type.
	**/
	public var lex_id : Dynamic;
	/**
		RETURNS (bool): Whether the token resembles an email address.
	**/
	public var like_email : Dynamic;
	/**
		RETURNS (bool): Whether the token resembles a number, e.g. "10.9",
		"10", "ten", etc.
	**/
	public var like_num : Dynamic;
	/**
		RETURNS (bool): Whether the token resembles a URL.
	**/
	public var like_url : Dynamic;
	/**
		RETURNS (uint64): ID of the lowercase token text.
	**/
	public var lower : Dynamic;
	/**
		RETURNS (str): The lowercase token text. Equivalent to
		`Token.text.lower()`.
	**/
	public var lower_ : Dynamic;
	public var morph : Dynamic;
	/**
		The number of leftward immediate children of the word, in the
		syntactic dependency parse.
		
		RETURNS (int): The number of leftward immediate children of the
		    word, in the syntactic dependency parse.
		
		DOCS: https://spacy.io/api/token#n_lefts
	**/
	public var n_lefts : Dynamic;
	/**
		The number of rightward immediate children of the word, in the
		syntactic dependency parse.
		
		RETURNS (int): The number of rightward immediate children of the
		    word, in the syntactic dependency parse.
		
		DOCS: https://spacy.io/api/token#n_rights
	**/
	public var n_rights : Dynamic;
	/**
		Token.nbor(self, int i=1)
		Get a neighboring token.
		
		        i (int): The relative position of the token to get. Defaults to 1.
		        RETURNS (Token): The token at position `self.doc[self.i+i]`.
		
		        DOCS: https://spacy.io/api/token#nbor
		        
	**/
	public function nbor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		RETURNS (uint64): ID of the token's norm, i.e. a normalised form of
		the token text. Usually set in the language's tokenizer exceptions
		or norm exceptions.
	**/
	public var norm : Dynamic;
	/**
		RETURNS (str): The token's norm, i.e. a normalised form of the
		token text. Usually set in the language's tokenizer exceptions or
		norm exceptions.
	**/
	public var norm_ : Dynamic;
	/**
		RETURNS (uint64): ID of the verbatim text content.
	**/
	public var orth : Dynamic;
	/**
		RETURNS (str): Verbatim text content (identical to
		`Token.text`). Exists mostly for consistency with the other
		attributes.
	**/
	public var orth_ : Dynamic;
	/**
		RETURNS (uint64): ID of coarse-grained part-of-speech tag.
	**/
	public var pos : Dynamic;
	/**
		RETURNS (str): Coarse-grained part-of-speech tag.
	**/
	public var pos_ : Dynamic;
	/**
		RETURNS (uint64): ID of a length-N substring from the start of the
		token. Defaults to `N=1`.
	**/
	public var prefix : Dynamic;
	/**
		RETURNS (str): A length-N substring from the start of the token.
		Defaults to `N=1`.
	**/
	public var prefix_ : Dynamic;
	/**
		RETURNS (float): Smoothed log probability estimate of token type.
	**/
	public var prob : Dynamic;
	/**
		RETURNS (int): Sequential ID of the token's lexical type, used to
		index into tables, e.g. for word vectors.
	**/
	public var rank : Dynamic;
	/**
		Token.remove_extension(type cls, name)
		Remove a previously registered extension.
		
		        name (str): Name of the extension.
		        RETURNS (tuple): A `(default, method, getter, setter)` tuple of the
		            removed extension.
		
		        DOCS: https://spacy.io/api/token#remove_extension
		        
	**/
	public function remove_extension(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		The rightmost token of this token's syntactic descendents.
		
		RETURNS (Token): The last token such that `self.is_ancestor(token)`.
	**/
	public var right_edge : Dynamic;
	/**
		The rightward immediate children of the word, in the syntactic
		dependency parse.
		
		YIELDS (Token): A right-child of the token.
		
		DOCS: https://spacy.io/api/token#rights
	**/
	public var rights : Dynamic;
	/**
		RETURNS (Span): The sentence span that the token is a part of.
	**/
	public var sent : Dynamic;
	public var sent_start : Dynamic;
	/**
		RETURNS (float): A scalar value indicating the positivity or
		negativity of the token.
	**/
	public var sentiment : Dynamic;
	/**
		Token.set_extension(type cls, name, **kwargs)
		Define a custom attribute which becomes available as `Token._`.
		
		        name (str): Name of the attribute to set.
		        default: Optional default value of the attribute.
		        getter (callable): Optional getter function.
		        setter (callable): Optional setter function.
		        method (callable): Optional method for method extension.
		        force (bool): Force overwriting existing attribute.
		
		        DOCS: https://spacy.io/api/token#set_extension
		        USAGE: https://spacy.io/usage/processing-pipelines#custom-components-attributes
		        
	**/
	public function set_extension(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Token.set_morph(self, features)
	**/
	public function set_morph(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		RETURNS (uint64): ID of the token's shape, a transform of the
		token's string, to show orthographic features (e.g. "Xxxx", "dd").
	**/
	public var shape : Dynamic;
	/**
		RETURNS (str): Transform of the token's string, to show
		orthographic features. For example, "Xxxx" or "dd".
	**/
	public var shape_ : Dynamic;
	/**
		Token.similarity(self, other)
		Make a semantic similarity estimate. The default estimate is cosine
		        similarity using an average of word vectors.
		
		        other (object): The object to compare with. By default, accepts `Doc`,
		            `Span`, `Token` and `Lexeme` objects.
		        RETURNS (float): A scalar similarity score. Higher is more similar.
		
		        DOCS: https://spacy.io/api/token#similarity
		        
	**/
	public function similarity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		A sequence containing the token and all the token's syntactic
		descendants.
		
		YIELDS (Token): A descendent token such that
		    `self.is_ancestor(descendent) or token == self`.
		
		DOCS: https://spacy.io/api/token#subtree
	**/
	public var subtree : Dynamic;
	/**
		RETURNS (uint64): ID of a length-N substring from the end of the
		token. Defaults to `N=3`.
	**/
	public var suffix : Dynamic;
	/**
		RETURNS (str): A length-N substring from the end of the token.
		Defaults to `N=3`.
	**/
	public var suffix_ : Dynamic;
	/**
		RETURNS (uint64): ID of fine-grained part-of-speech tag.
	**/
	public var tag : Dynamic;
	/**
		RETURNS (str): Fine-grained part-of-speech tag.
	**/
	public var tag_ : Dynamic;
	public var tensor : Dynamic;
	/**
		RETURNS (str): The original verbatim text of the token.
	**/
	public var text : Dynamic;
	/**
		RETURNS (str): The text content of the span (with trailing
		whitespace).
	**/
	public var text_with_ws : Dynamic;
	/**
		A real-valued meaning representation.
		
		RETURNS (numpy.ndarray[ndim=1, dtype='float32']): A 1D numpy array
		    representing the token's semantics.
		
		DOCS: https://spacy.io/api/token#vector
	**/
	public var vector : Dynamic;
	/**
		The L2 norm of the token's vector representation.
		
		RETURNS (float): The L2 norm of the vector representation.
		
		DOCS: https://spacy.io/api/token#vector_norm
	**/
	public var vector_norm : Dynamic;
	public var vocab : Dynamic;
	/**
		RETURNS (str): The trailing whitespace character, if present.
	**/
	public var whitespace_ : Dynamic;
}