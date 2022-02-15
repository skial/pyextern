/* This file is generated, do not edit! */
package spacy.pipeline.lemmatizer;
@:pythonImport("spacy.pipeline.lemmatizer") extern class Lemmatizer_Module {
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
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function lemmatizer_score(examples:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Load the data from the spacy-lookups-data package for a given language,
		if available. Returns an empty `Lookups` container if there's no data or if the package
		is not installed.
		
		lang (str): The language code (corresponds to entry point exposed by
		    the spacy-lookups-data package).
		tables (List[str]): Name of tables to load, e.g. ["lemma_lookup", "lemma_exc"]
		strict (bool): Whether to raise an error if a table doesn't exist.
		RETURNS (Lookups): The lookups container containing the loaded tables.
	**/
	static public function load_lookups(lang:Dynamic, tables:Dynamic, ?strict:Dynamic):Dynamic;
	static public var logger : Dynamic;
	static public function make_lemmatizer(nlp:Dynamic, model:Dynamic, name:Dynamic, mode:Dynamic, overwrite:Dynamic, scorer:Dynamic):Dynamic;
	static public function make_lemmatizer_scorer():Dynamic;
}