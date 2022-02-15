/* This file is generated, do not edit! */
package spacy.pipeline.sentencizer;
@:pythonImport("spacy.pipeline.sentencizer") extern class Sentencizer_Module {
	static public var BACKWARD_OVERWRITE : Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		make_sentencizer(nlp: Language, name: str, punct_chars: Optional[List[str]], overwrite: bool, scorer: Optional[Callable])
	**/
	static public function make_sentencizer(nlp:Dynamic, name:Dynamic, punct_chars:Dynamic, overwrite:Dynamic, scorer:Dynamic):Dynamic;
	/**
		senter_score(examples, **kwargs)
	**/
	static public function senter_score(examples:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}