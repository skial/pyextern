/* This file is generated, do not edit! */
package spacy.pipe_analysis;
@:pythonImport("spacy.pipe_analysis") extern class Pipe_analysis_Module {
	static public var DEFAULT_KEYS : Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ItemsView(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Set(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	/**
		Print a formatted summary for the current nlp object's pipeline. Shows
		a table with the pipeline components and why they assign and require, as
		well as any problems if available.
		
		nlp (Language): The nlp object.
		keys (List[str]): The meta keys to show in the table.
		RETURNS (dict): A dict with "summary" and "problems".
	**/
	static public function analyze_pipes(nlp:Dynamic, ?keys:Dynamic):Dynamic;
	/**
		Convert dot notation to a dict. For example: {"token.pos": True,
		"token._.xyz": True} becomes {"token": {"pos": True, "_": {"xyz": True }}}.
		
		values (Dict[str, Any]): The key/value pairs to convert.
		RETURNS (Dict[str, dict]): The converted values.
	**/
	static public function dot_to_dict(values:Dynamic):Dynamic;
	/**
		Check which components in the pipeline assign or require an attribute.
		
		nlp (Language): The current nlp object.
		attr (str): The attribute, e.g. "doc.tensor".
		RETURNS (Dict[str, List[str]]): A dict keyed by "assigns" and "requires",
		    mapped to a list of component names.
	**/
	static public function get_attr_info(nlp:Dynamic, attr:Dynamic):Dynamic;
	static public var msg : Dynamic;
	/**
		Print a formatted version of the pipe analysis produced by analyze_pipes.
		
		analysis (Dict[str, Union[List[str], Dict[str, List[str]]]]): The analysis.
		keys (List[str]): The meta keys to show in the table.
	**/
	static public function print_pipe_analysis(analysis:Dynamic, ?keys:Dynamic):Dynamic;
	/**
		Validate component attributes provided to "assigns", "requires" etc.
		Raises error for invalid attributes and formatting. Doesn't check if
		custom extension attributes are registered, since this is something the
		user might want to do themselves later in the component.
		
		values (Iterable[str]): The string attributes to check, e.g. `["token.pos"]`.
		RETURNS (Iterable[str]): The checked attributes.
	**/
	static public function validate_attrs(values:Dynamic):Dynamic;
}