/* This file is generated, do not edit! */
package spacy;
@:pythonImport("spacy") extern class Spacy_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		Create a blank nlp object for a given language code.
		
		name (str): The language code, e.g. "en".
		vocab (Vocab): A Vocab object. If True, a vocab is created.
		config (Dict[str, Any] / Config): Optional config overrides.
		meta (Dict[str, Any]): Overrides for nlp.meta.
		RETURNS (Language): The nlp object.
	**/
	static public function blank(name:Dynamic, ?vocab:Dynamic, ?config:Dynamic, ?meta:Dynamic):Dynamic;
	/**
		Get a description for a given POS tag, dependency label or entity type.
		
		term (str): The term to explain.
		RETURNS (str): The explanation, or `None` if not found in the glossary.
		
		EXAMPLE:
		    >>> spacy.explain(u'NORP')
		    >>> doc = nlp(u'Hello world')
		    >>> print([w.text, w.tag_, spacy.explain(w.tag_) for w in doc])
	**/
	static public function explain(term:Dynamic):Dynamic;
	static public function info(?model:Dynamic, ?markdown:Dynamic, ?silent:Dynamic, ?exclude:Dynamic):Dynamic;
	/**
		Load a spaCy model from an installed package or a local path.
		
		name (str): Package name or model path.
		vocab (Vocab): A Vocab object. If True, a vocab is created.
		disable (Iterable[str]): Names of pipeline components to disable. Disabled
		    pipes will be loaded but they won't be run unless you explicitly
		    enable them by calling nlp.enable_pipe.
		exclude (Iterable[str]): Names of pipeline components to exclude. Excluded
		    components won't be loaded.
		config (Dict[str, Any] / Config): Config overrides as nested dict or dict
		    keyed by section values in dot notation.
		RETURNS (Language): The loaded nlp object.
	**/
	static public function load(name:Dynamic, ?vocab:Dynamic, ?disable:Dynamic, ?exclude:Dynamic, ?config:Dynamic):Dynamic;
	static public var logger : Dynamic;
	/**
		Use GPU if it's available. Returns True if so, False otherwise.
	**/
	static public function prefer_gpu(?gpu_id:Dynamic):Dynamic;
	/**
		Use CPU through best available backend.
	**/
	static public function require_cpu():Dynamic;
	static public function require_gpu(?gpu_id:Dynamic):Dynamic;
	static public function setup_default_warnings():Dynamic;
}