/* This file is generated, do not edit! */
package spacy.tokens._retokenize;
@:pythonImport("spacy.tokens._retokenize") extern class _Retokenize_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		__pyx_unpickle_Retokenizer(__pyx_type, long __pyx_checksum, __pyx_state)
	**/
	static public function __pyx_unpickle_Retokenizer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		_merge(Doc doc, merges)
		Retokenize the document, such that the spans described in 'merges'
		     are merged into a single token. This method assumes that the merges
		     are in the same order at which they appear in the doc, and that merges
		     do not intersect each other in any way.
		
		    merges: Tokens to merge, and corresponding attributes to assign to the
		        merged token. By default, attributes are inherited from the
		        syntactic root of the span.
		    RETURNS (Token): The first newly merged token.
		    
	**/
	static public function _merge(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_resize_tensor(tensor, ranges)
	**/
	static public function _resize_tensor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_split(Doc doc, int token_index, orths, heads, attrs)
		Retokenize the document, such that the token at
		    `doc[token_index]` is split into tokens with the orth 'orths'
		    token_index(int): token index of the token to split.
		
		    orths: IDs of the verbatim text content of the tokens to create
		    **attributes: Attributes to assign to each of the newly created tokens. By default,
		        attributes are inherited from the original token.
		    RETURNS (Token): The first newly created token.
		    
	**/
	static public function _split(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_validate_extensions(extensions)
	**/
	static public function _validate_extensions(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function get_array_module(arr:Dynamic):Dynamic;
	/**
		get_string_id(key)
		Get a string ID, handling the reserved symbols correctly. If the key is
		    already an ID, return it.
		
		    This function optimises for convenience over performance, so shouldn't be
		    used in tight loops.
		    
	**/
	static public function get_string_id(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		intify_attrs(stringy_attrs, strings_map=None, _do_deprecated=False)
		
		Normalize a dictionary of attributes, converting them to ints.
		
		stringy_attrs (dict): Dictionary keyed by attribute string names. Values
		    can be ints or strings.
		strings_map (StringStore): Defaults to None. If provided, encodes string
		    values into ints.
		RETURNS (dict): Attributes dictionary with keys and optionally values
		    converted to ints.
	**/
	static public function intify_attrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check if an extension attribute is writable.
		ext (tuple): The (default, getter, setter, method) tuple available  via
		    {Doc,Span,Token}.get_extension.
		RETURNS (bool): Whether the attribute is writable.
	**/
	static public function is_writable_attr(ext:Dynamic):Dynamic;
	/**
		normalize_token_attrs(Vocab vocab, attrs)
	**/
	static public function normalize_token_attrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		set_token_attrs(Token py_token, attrs)
	**/
	static public function set_token_attrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
}