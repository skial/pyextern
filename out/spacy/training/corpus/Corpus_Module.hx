/* This file is generated, do not edit! */
package spacy.training.corpus;
@:pythonImport("spacy.training.corpus") extern class Corpus_Module {
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var FILE_TYPE : Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterator(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function create_docbin_reader(path:Dynamic, gold_preproc:Dynamic, ?max_length:Dynamic, ?limit:Dynamic, ?augmenter:Dynamic):Dynamic;
	static public function create_jsonl_reader(path:Dynamic, ?min_length:Dynamic, ?max_length:Dynamic, ?limit:Dynamic):Dynamic;
	static public function dont_augment(nlp:Dynamic, example:Dynamic):Dynamic;
	static public function read_labels(path:Dynamic, ?require:Dynamic):Dynamic;
	static public function walk_corpus(path:Dynamic, file_type:Dynamic):Dynamic;
}