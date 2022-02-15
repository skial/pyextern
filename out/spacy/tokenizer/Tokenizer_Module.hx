/* This file is generated, do not edit! */
package spacy.tokenizer;
@:pythonImport("spacy.tokenizer") extern class Tokenizer_Module {
	static public var NORM : Dynamic;
	static public var ORTH : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		_get_regex_pattern(regex)
		Get a pattern string for a regex, or None if the pattern is None.
	**/
	static public function _get_regex_pattern(regex:Dynamic):Dynamic;
	/**
		Given a list of words and a text, reconstruct the original tokens and
		return a list of words and spaces that can be used to create a Doc. This
		can help recover destructive tokenization that didn't preserve any
		whitespace information.
		
		words (Iterable[str]): The words.
		text (str): The original text.
		RETURNS (Tuple[List[str], List[bool]]): The words and spaces.
	**/
	static public function get_words_and_spaces(words:Dynamic, text:Dynamic):Dynamic;
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
		validate_examples(examples, method)
		Check that a batch of examples received during processing is valid.
		    This function lives here to prevent circular imports.
		
		    examples (Iterable[Examples]): A batch of examples.
		    method (str): The method name to show in error messages.
		    
	**/
	static public function validate_examples(args:haxe.extern.Rest<Dynamic>):Dynamic;
}