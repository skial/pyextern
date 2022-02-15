/* This file is generated, do not edit! */
package spacy.displacy.render;
@:pythonImport("spacy.displacy.render") extern class Render_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var DEFAULT_DIR : Dynamic;
	static public var DEFAULT_ENTITY_COLOR : Dynamic;
	static public var DEFAULT_LABEL_COLORS : Dynamic;
	static public var DEFAULT_LANG : Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var TPL_DEP_ARCS : Dynamic;
	static public var TPL_DEP_SVG : Dynamic;
	static public var TPL_DEP_WORDS : Dynamic;
	static public var TPL_DEP_WORDS_LEMMA : Dynamic;
	static public var TPL_ENT : Dynamic;
	static public var TPL_ENTS : Dynamic;
	static public var TPL_ENT_RTL : Dynamic;
	static public var TPL_FIGURE : Dynamic;
	static public var TPL_KB_LINK : Dynamic;
	static public var TPL_PAGE : Dynamic;
	static public var TPL_TITLE : Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Replace <, >, &, " with their HTML encoded representation. Intended to
		prevent HTML errors in rendered displaCy markup.
		
		text (str): The original text.
		RETURNS (str): Equivalent text to be safely used within HTML.
	**/
	static public function escape_html(text:Dynamic):Dynamic;
	/**
		Perform a template-specific, rudimentary HTML minification for displaCy.
		Disclaimer: NOT a general-purpose solution, only removes indentation and
		newlines.
		
		html (str): Markup to minify.
		RETURNS (str): "Minified" HTML.
	**/
	static public function minify_html(html:Dynamic):Dynamic;
}