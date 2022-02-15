/* This file is generated, do not edit! */
package spacy.kb;
@:pythonImport("spacy.kb") extern class Kb_Module {
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
	static public function Iterator(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	/**
		__pyx_unpickle_Candidate(__pyx_type, long __pyx_checksum, __pyx_state)
	**/
	static public function __pyx_unpickle_Candidate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		__pyx_unpickle_KnowledgeBase(__pyx_type, long __pyx_checksum, __pyx_state)
	**/
	static public function __pyx_unpickle_KnowledgeBase(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		Ensure string is converted to a Path.
		
		path (Any): Anything. If string, it's converted to Path.
		RETURNS: Path or original argument.
	**/
	static public function ensure_path(path:Dynamic):Dynamic;
	/**
		get_candidates(KnowledgeBase kb, span) -> Iterator[Candidate]
		
		Return candidate entities for a given span by using the text of the span as the alias
		and fetching appropriate entries from the index.
		This particular function is optimized to work with the built-in KB functionality,
		but any other custom candidate generation method can be used in combination with the KB as well.
	**/
	static public function get_candidates(args:haxe.extern.Rest<Dynamic>):Dynamic;
}