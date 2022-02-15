/* This file is generated, do not edit! */
package spacy.lexeme;
@:pythonImport("spacy.lexeme", "Lexeme") extern class Lexeme {
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
		Create a Lexeme object.
		
		vocab (Vocab): The parent vocabulary
		orth (uint64): The orth id of the lexeme.
		Returns (Lexeme): The newly constructd object.
	**/
	@:native("__init__")
	public function ___init__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Create a Lexeme object.
		
		vocab (Vocab): The parent vocabulary
		orth (uint64): The orth id of the lexeme.
		Returns (Lexeme): The newly constructd object.
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
		Lexeme.__reduce_cython__(self)
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
		Lexeme.__setstate_cython__(self, __pyx_state)
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
		Lexeme.check_flag(self, attr_id_t flag_id)
		Check the value of a boolean flag.
		
		        flag_id (int): The attribute ID of the flag to query.
		        RETURNS (bool): The value of the flag.
		        
	**/
	public function check_flag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		RETURNS (int): Brown cluster ID.
	**/
	public var cluster : Dynamic;
	/**
		RETURNS (uint64): Container of the lexeme's binary flags.
	**/
	public var flags : Dynamic;
	/**
		RETURNS (bool): Whether a word vector is associated with the object.
		        
	**/
	public var has_vector : Dynamic;
	/**
		RETURNS (bool): Whether the lexeme consists of alphabetic
		characters. Equivalent to `lexeme.text.isalpha()`.
	**/
	public var is_alpha : Dynamic;
	/**
		RETURNS (bool): Whether the lexeme consists of ASCII characters.
		Equivalent to `[any(ord(c) >= 128 for c in lexeme.text)]`.
	**/
	public var is_ascii : Dynamic;
	/**
		RETURNS (bool): Whether the lexeme is a bracket.
	**/
	public var is_bracket : Dynamic;
	/**
		RETURNS (bool): Whether the lexeme is a currency symbol, e.g. $, €.
	**/
	public var is_currency : Dynamic;
	/**
		RETURNS (bool): Whether the lexeme consists of digits. Equivalent
		to `lexeme.text.isdigit()`.
	**/
	public var is_digit : Dynamic;
	/**
		RETURNS (bool): Whether the lexeme is left punctuation, e.g. (.
	**/
	public var is_left_punct : Dynamic;
	/**
		RETURNS (bool): Whether the lexeme is in lowercase. Equivalent to
		`lexeme.text.islower()`.
	**/
	public var is_lower : Dynamic;
	/**
		RETURNS (bool): Whether the lexeme is out-of-vocabulary.
	**/
	public var is_oov : Dynamic;
	/**
		RETURNS (bool): Whether the lexeme is punctuation.
	**/
	public var is_punct : Dynamic;
	/**
		RETURNS (bool): Whether the lexeme is a quotation mark.
	**/
	public var is_quote : Dynamic;
	/**
		RETURNS (bool): Whether the lexeme is right punctuation, e.g. ).
	**/
	public var is_right_punct : Dynamic;
	/**
		RETURNS (bool): Whether the lexeme consist of whitespace characters.
		Equivalent to `lexeme.text.isspace()`.
	**/
	public var is_space : Dynamic;
	/**
		RETURNS (bool): Whether the lexeme is a stop word.
	**/
	public var is_stop : Dynamic;
	/**
		RETURNS (bool): Whether the lexeme is in titlecase. Equivalent to
		`lexeme.text.istitle()`.
	**/
	public var is_title : Dynamic;
	/**
		RETURNS (bool): Whether the lexeme is in uppercase. Equivalent to
		`lexeme.text.isupper()`.
	**/
	public var is_upper : Dynamic;
	/**
		RETURNS (uint64): Language of the parent vocabulary.
	**/
	public var lang : Dynamic;
	/**
		RETURNS (str): Language of the parent vocabulary.
	**/
	public var lang_ : Dynamic;
	/**
		RETURNS (bool): Whether the lexeme resembles an email address.
	**/
	public var like_email : Dynamic;
	/**
		RETURNS (bool): Whether the lexeme represents a number, e.g. "10.9",
		"10", "ten", etc.
	**/
	public var like_num : Dynamic;
	/**
		RETURNS (bool): Whether the lexeme resembles a URL.
	**/
	public var like_url : Dynamic;
	/**
		RETURNS (str): Lowercase form of the lexeme.
	**/
	public var lower : Dynamic;
	/**
		RETURNS (str): Lowercase form of the word.
	**/
	public var lower_ : Dynamic;
	/**
		RETURNS (uint64): The lexeme's norm, i.e. a normalised form of the
		lexeme text.
	**/
	public var norm : Dynamic;
	/**
		RETURNS (str): The lexeme's norm, i.e. a normalised form of the
		lexeme text.
	**/
	public var norm_ : Dynamic;
	public var orth : Dynamic;
	/**
		RETURNS (str): The original verbatim text of the lexeme
		(identical to `Lexeme.text`). Exists mostly for consistency with
		the other attributes.
	**/
	public var orth_ : Dynamic;
	/**
		RETURNS (uint64): Length-N substring from the start of the word.
		Defaults to `N=1`.
	**/
	public var prefix : Dynamic;
	/**
		RETURNS (str): Length-N substring from the start of the word.
		Defaults to `N=1`.
	**/
	public var prefix_ : Dynamic;
	/**
		RETURNS (float): Smoothed log probability estimate of the lexeme's
		type.
	**/
	public var prob : Dynamic;
	/**
		RETURNS (str): Sequential ID of the lexeme's lexical type, used
		to index into tables, e.g. for word vectors.
	**/
	public var rank : Dynamic;
	/**
		RETURNS (float): A scalar value indicating the positivity or
		negativity of the lexeme.
	**/
	public var sentiment : Dynamic;
	/**
		Lexeme.set_attrs(self, **attrs)
	**/
	public function set_attrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Lexeme.set_flag(self, attr_id_t flag_id, bool value)
		Change the value of a boolean flag.
		
		        flag_id (int): The attribute ID of the flag to set.
		        value (bool): The new value of the flag.
		        
	**/
	public function set_flag(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		RETURNS (uint64): Transform of the word's string, to show
		orthographic features.
	**/
	public var shape : Dynamic;
	/**
		RETURNS (str): Transform of the word's string, to show
		orthographic features.
	**/
	public var shape_ : Dynamic;
	/**
		Lexeme.similarity(self, other)
		Compute a semantic similarity estimate. Defaults to cosine over
		        vectors.
		
		        other (object): The object to compare with. By default, accepts `Doc`,
		            `Span`, `Token` and `Lexeme` objects.
		        RETURNS (float): A scalar similarity score. Higher is more similar.
		        
	**/
	public function similarity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		RETURNS (uint64): Length-N substring from the end of the word.
		Defaults to `N=3`.
	**/
	public var suffix : Dynamic;
	/**
		RETURNS (str): Length-N substring from the end of the word.
		Defaults to `N=3`.
	**/
	public var suffix_ : Dynamic;
	/**
		RETURNS (str): The original verbatim text of the lexeme.
	**/
	public var text : Dynamic;
	/**
		A real-valued meaning representation.
		
		RETURNS (numpy.ndarray[ndim=1, dtype='float32']): A 1D numpy array
		    representing the lexeme's semantics.
	**/
	public var vector : Dynamic;
	/**
		RETURNS (float): The L2 norm of the vector representation.
	**/
	public var vector_norm : Dynamic;
	public var vocab : Dynamic;
}