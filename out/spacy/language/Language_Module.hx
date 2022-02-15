/* This file is generated, do not edit! */
package spacy.language;
@:pythonImport("spacy.language") extern class Language_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var BASE_EXCEPTIONS : Dynamic;
	static public var CONFIG_SECTION_ORDER : Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var DEFAULT_CONFIG : Dynamic;
	static public var DEFAULT_CONFIG_PATH : Dynamic;
	static public var DEFAULT_CONFIG_PRETRAIN_PATH : Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var GIT_VERSION : Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterator(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Literal(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function NoReturn(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Pattern(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Set(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var TOKENIZER_INFIXES : Dynamic;
	static public var TOKENIZER_PREFIXES : Dynamic;
	static public var TOKENIZER_SUFFIXES : Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Matches zero or more characters at the beginning of the string.
	**/
	static public function URL_MATCH(string:Dynamic, ?pos:Dynamic, ?endpos:Dynamic):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var _AnyContext : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Worker for Language.pipe
		
		ensure_doc (Callable[[Union[str, Doc]], Doc]): Function to create Doc from text
		    or raise an error if the input is neither a Doc nor a string.
		pipes (Iterable[Pipe]): The components to apply.
		receiver (multiprocessing.Connection): Pipe to receive text. Usually
		    created by `multiprocessing.Pipe()`
		sender (multiprocessing.Connection): Pipe to send doc. Usually created by
		    `multiprocessing.Pipe()`
		underscore_state (Tuple[dict, dict, dict]): The data in the Underscore class
		    of the parent.
	**/
	static public function _apply_pipes(ensure_doc:Dynamic, pipes:Dynamic, receiver:Dynamic, sender:Dynamic, underscore_state:Dynamic):Dynamic;
	/**
		Make a copy of a batch of examples, copying the predicted Doc as well.
		This is used in contexts where we need to take ownership of the examples
		so that they can be mutated, for instance during Language.evaluate and
		Language.update.
	**/
	static public function _copy_examples(examples:Dynamic):Dynamic;
	static public function _pipe(docs:Dynamic, proc:Dynamic, name:Dynamic, default_error_handler:Dynamic, kwargs:Dynamic):Dynamic;
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
		Cast a value to a type.
		
		This returns the value unchanged.  To the type checker this
		signals that the return value has the designated type, but at
		runtime we intentionally don't check anything (we want this
		to be as fast as possible).
	**/
	@:native("cast")
	static public function _cast(typ:Dynamic, val:Dynamic):Dynamic;
	/**
		Combine and normalize score weights defined by components, e.g.
		{"ents_r": 0.2, "ents_p": 0.3, "ents_f": 0.5} and {"some_other_score": 1.0}.
		
		weights (List[dict]): The weights defined by the components.
		overrides (Dict[str, Optional[Union[float, int]]]): Existing scores that
		    should be preserved.
		RETURNS (Dict[str, float]): The combined and normalized weights.
	**/
	static public function combine_score_weights(weights:Dynamic, ?overrides:Dynamic):Dynamic;
	/**
		@contextmanager decorator.
		
		Typical usage:
		
		    @contextmanager
		    def some_generator(<arguments>):
		        <setup>
		        try:
		            yield <value>
		        finally:
		            <cleanup>
		
		This makes this:
		
		    with some_generator(<arguments>) as <variable>:
		        <body>
		
		equivalent to this:
		
		    <setup>
		    try:
		        <variable> = <value>
		        <body>
		    finally:
		        <cleanup>
	**/
	static public function contextmanager(func:Dynamic):Dynamic;
	/**
		Registered function to create a tokenizer. Returns a factory that takes
		the nlp object and returns a Tokenizer instance using the language detaults.
	**/
	static public function create_tokenizer():Dynamic;
	/**
		create_vocab(lang, defaults, vectors_name=None)
	**/
	static public function create_vocab(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns the same class as was passed in, with dunder methods
		added based on the fields defined in the class.
		
		Examines PEP 526 __annotations__ to determine fields.
		
		If init is true, an __init__() method is added to the class. If
		repr is true, a __repr__() method is added. If order is true, rich
		comparison dunder methods are added. If unsafe_hash is true, a
		__hash__() method function is added. If frozen is true, fields may
		not be assigned to after instance creation.
	**/
	static public function dataclass(?cls:Dynamic, ?init:Dynamic, ?repr:Dynamic, ?eq:Dynamic, ?order:Dynamic, ?unsafe_hash:Dynamic, ?frozen:Dynamic):Dynamic;
	/**
		Deep copy operation on arbitrary Python objects.
		
		See the module's __doc__ string for more info.
	**/
	static public function deepcopy(x:Dynamic, ?memo:Dynamic, ?_nil:Dynamic):Dynamic;
	/**
		Get the current backend object.
	**/
	static public function get_current_ops():Dynamic;
	static public function init_tok2vec(nlp:Dynamic, pretrain_config:Dynamic, init_config:Dynamic):Dynamic;
	static public function init_vocab(nlp:Dynamic, ?data:Dynamic, ?lookups:Dynamic, ?vectors:Dynamic):Dynamic;
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
	static public function load_lookups_data(lang:Dynamic, tables:Dynamic):Dynamic;
	/**
		Decorator for overloaded functions/methods.
		
		In a stub file, place two or more stub definitions for the same
		function in a row, each decorated with @overload.  For example:
		
		  @overload
		  def utf8(value: None) -> None: ...
		  @overload
		  def utf8(value: bytes) -> bytes: ...
		  @overload
		  def utf8(value: str) -> bytes: ...
		
		In a non-stub file (i.e. a regular .py file), do the same but
		follow it with an implementation.  The implementation should *not*
		be decorated with @overload.  For example:
		
		  @overload
		  def utf8(value: None) -> None: ...
		  @overload
		  def utf8(value: bytes) -> bytes: ...
		  @overload
		  def utf8(value: str) -> bytes: ...
		  def utf8(value):
		      # implementation goes here
	**/
	@:native("overload")
	static public function _overload(func:Dynamic):Dynamic;
	/**
		Print a formatted version of the pipe analysis produced by analyze_pipes.
		
		analysis (Dict[str, Union[List[str], Dict[str, List[str]]]]): The analysis.
		keys (List[str]): The meta keys to show in the table.
	**/
	static public function print_pipe_analysis(analysis:Dynamic, ?keys:Dynamic):Dynamic;
	static public function raise_error(proc_name:Dynamic, proc:Dynamic, docs:Dynamic, e:Dynamic):Dynamic;
	/**
		perf_counter() -> float
		
		Performance counter for benchmarking.
	**/
	static public function timer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Validate component attributes provided to "assigns", "requires" etc.
		Raises error for invalid attributes and formatting. Doesn't check if
		custom extension attributes are registered, since this is something the
		user might want to do themselves later in the component.
		
		values (Iterable[str]): The string attributes to check, e.g. `["token.pos"]`.
		RETURNS (Iterable[str]): The checked attributes.
	**/
	static public function validate_attrs(values:Dynamic):Dynamic;
	/**
		validate_examples(examples, method)
		Check that a batch of examples received during processing is valid.
		    This function lives here to prevent circular imports.
		
		    examples (Iterable[Examples]): A batch of examples.
		    method (str): The method name to show in error messages.
		    
	**/
	static public function validate_examples(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Validate initialization settings against the expected arguments in
		the method signature. Will parse values if possible (e.g. int to string)
		and return the updated settings dict. Will raise a ConfigValidationError
		if types don't match or required values are missing.
		
		func (Callable): The initialize method of a given component etc.
		settings (Dict[str, Any]): The settings from the respective [initialize] block.
		section (str): Initialize section, for error message.
		name (str): Name of the block in the section.
		exclude (Iterable[str]): Parameter names to exclude from schema.
		RETURNS (Dict[str, Any]): The validated settings.
	**/
	static public function validate_init_settings(func:Dynamic, settings:Dynamic, ?section:Dynamic, ?name:Dynamic, ?exclude:Dynamic):Dynamic;
	/**
		Warn about require_gpu if a jupyter notebook + cupy + mismatched
		contextvars vs. thread ops are detected
	**/
	static public function warn_if_jupyter_cupy():Dynamic;
}