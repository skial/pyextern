/* This file is generated, do not edit! */
package spacy.lang.lex_attrs;
@:pythonImport("spacy.lang.lex_attrs") extern class Lex_attrs_Module {
	static public var LEX_ATTRS : Dynamic;
	static public function Set(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Matches zero or more characters at the beginning of the string.
	**/
	static public function URL_MATCH(string:Dynamic, ?pos:Dynamic, ?endpos:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Matches zero or more characters at the beginning of the string.
	**/
	static public function _like_email(string:Dynamic, ?pos:Dynamic, ?endpos:Dynamic):Dynamic;
	static public var _tlds : Dynamic;
	static public function get_lang(text:Dynamic, ?lang:Dynamic):Dynamic;
	static public function is_alpha(string:Dynamic):Dynamic;
	static public function is_ascii(text:Dynamic):Dynamic;
	static public function is_bracket(text:Dynamic):Dynamic;
	static public function is_currency(text:Dynamic):Dynamic;
	static public function is_digit(string:Dynamic):Dynamic;
	static public function is_left_punct(text:Dynamic):Dynamic;
	static public function is_lower(string:Dynamic):Dynamic;
	static public function is_punct(text:Dynamic):Dynamic;
	static public function is_quote(text:Dynamic):Dynamic;
	static public function is_right_punct(text:Dynamic):Dynamic;
	static public function is_space(string:Dynamic):Dynamic;
	static public function is_stop(string:Dynamic, ?stops:Dynamic):Dynamic;
	static public function is_title(string:Dynamic):Dynamic;
	static public function is_upper(string:Dynamic):Dynamic;
	static public function like_email(text:Dynamic):Dynamic;
	static public function like_num(text:Dynamic):Dynamic;
	static public function like_url(text:Dynamic):Dynamic;
	static public function lower(string:Dynamic):Dynamic;
	static public function prefix(string:Dynamic):Dynamic;
	static public function suffix(string:Dynamic):Dynamic;
	static public function word_shape(text:Dynamic):Dynamic;
}