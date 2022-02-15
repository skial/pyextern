/* This file is generated, do not edit! */
package spacy.displacy;
@:pythonImport("spacy.displacy") extern class Displacy_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var RENDER_WRAPPER : Dynamic;
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
	static public var _html : Dynamic;
	static public function app(environ:Dynamic, start_response:Dynamic):Dynamic;
	static public function get_doc_settings(doc:Dynamic):Dynamic;
	/**
		Check if user is running spaCy from a Jupyter notebook by detecting the
		IPython kernel. Mainly used for the displaCy visualizer.
		RETURNS (bool): True if in Jupyter, False if not.
	**/
	static public function is_in_jupyter():Dynamic;
	/**
		Generate dependency parse in {'words': [], 'arcs': []} format.
		
		doc (Doc): Document do parse.
		RETURNS (dict): Generated dependency parse keyed by words and arcs.
	**/
	static public function parse_deps(orig_doc:Dynamic, ?options:Dynamic):Dynamic;
	/**
		Generate named entities in [{start: i, end: i, label: 'label'}] format.
		
		doc (Doc): Document to parse.
		options (Dict[str, Any]): NER-specific visualisation options.
		RETURNS (dict): Generated entities keyed by text (original text) and ents.
	**/
	static public function parse_ents(doc:Dynamic, ?options:Dynamic):Dynamic;
	/**
		Render displaCy visualisation.
		
		docs (Union[Iterable[Union[Doc, Span, dict]], Doc, Span, dict]]): Document(s) to visualise.
		    a 'dict' is only allowed here when 'manual' is set to True
		style (str): Visualisation style, 'dep' or 'ent'.
		page (bool): Render markup as full HTML page.
		minify (bool): Minify HTML markup.
		jupyter (bool): Override Jupyter auto-detection.
		options (dict): Visualiser-specific options, e.g. colors.
		manual (bool): Don't parse `Doc` and instead expect a dict/list of dicts.
		RETURNS (str): Rendered HTML markup.
		
		DOCS: https://spacy.io/api/top-level#displacy.render
		USAGE: https://spacy.io/usage/visualizers
	**/
	static public function render(docs:Dynamic, ?style:Dynamic, ?page:Dynamic, ?minify:Dynamic, ?jupyter:Dynamic, ?options:Dynamic, ?manual:Dynamic):Dynamic;
	/**
		Serve displaCy visualisation.
		
		docs (list or Doc): Document(s) to visualise.
		style (str): Visualisation style, 'dep' or 'ent'.
		page (bool): Render markup as full HTML page.
		minify (bool): Minify HTML markup.
		options (dict): Visualiser-specific options, e.g. colors.
		manual (bool): Don't parse `Doc` and instead expect a dict/list of dicts.
		port (int): Port to serve visualisation.
		host (str): Host to serve visualisation.
		
		DOCS: https://spacy.io/api/top-level#displacy.serve
		USAGE: https://spacy.io/usage/visualizers
	**/
	static public function serve(docs:Dynamic, ?style:Dynamic, ?page:Dynamic, ?minify:Dynamic, ?options:Dynamic, ?manual:Dynamic, ?port:Dynamic, ?host:Dynamic):Dynamic;
	/**
		Set an optional wrapper function that is called around the generated
		HTML markup on displacy.render. This can be used to allow integration into
		other platforms, similar to Jupyter Notebooks that require functions to be
		called around the HTML. It can also be used to implement custom callbacks
		on render, or to embed the visualization in a custom page.
		
		func (callable): Function to call around markup before rendering it. Needs
		    to take one argument, the HTML markup, and should return the desired
		    output of displacy.render.
	**/
	static public function set_render_wrapper(func:Dynamic):Dynamic;
}