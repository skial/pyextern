/* This file is generated, do not edit! */
package spacy.pipeline.spancat;
@:pythonImport("spacy.pipeline.spancat") extern class Spancat_Module {
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
	static public var DEFAULT_SPANCAT_MODEL : Dynamic;
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
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Suggest all spans of the given lengths between a given min and max value - both inclusive.
		Spans are returned as a ragged array of integers. The array has two columns,
		indicating the start and end position.
	**/
	static public function build_ngram_range_suggester(min_size:Dynamic, max_size:Dynamic):Dynamic;
	/**
		Suggest all spans of the given lengths. Spans are returned as a ragged
		array of integers. The array has two columns, indicating the start and end
		position.
	**/
	static public function build_ngram_suggester(sizes:Dynamic):Dynamic;
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
		Get the current backend object.
	**/
	static public function get_current_ops():Dynamic;
	/**
		Create a SpanCategorizer component. The span categorizer consists of two
		parts: a suggester function that proposes candidate spans, and a labeller
		model that predicts one or more labels for each span.
		
		suggester (Callable[[Iterable[Doc], Optional[Ops]], Ragged]): A function that suggests spans.
		    Spans are returned as a ragged array with two integer columns, for the
		    start and end positions.
		model (Model[Tuple[List[Doc], Ragged], Floats2d]): A model instance that
		    is given a list of documents and (start, end) indices representing
		    candidate span offsets. The model predicts a probability for each category
		    for each span.
		spans_key (str): Key of the doc.spans dict to save the spans under. During
		    initialization and training, the component will look for spans on the
		    reference document under the same key.
		threshold (float): Minimum probability to consider a prediction positive.
		    Spans with a positive prediction will be saved on the Doc. Defaults to
		    0.5.
		max_positive (Optional[int]): Maximum number of labels to consider positive
		    per span. Defaults to None, indicating no limit.
	**/
	static public function make_spancat(nlp:Dynamic, name:Dynamic, suggester:Dynamic, model:Dynamic, spans_key:Dynamic, scorer:Dynamic, threshold:Dynamic, max_positive:Dynamic):Dynamic;
	static public function make_spancat_scorer():Dynamic;
	/**
		Mark a protocol class as a runtime protocol.
		
		Such protocol can be used with isinstance() and issubclass().
		Raise TypeError if applied to a non-protocol class.
		This allows a simple-minded structural check very similar to
		one trick ponies in collections.abc such as Iterable.
		For example::
		
		    @runtime_checkable
		    class Closable(Protocol):
		        def close(self): ...
		
		    assert isinstance(open('/some/file'), Closable)
		
		Warning: this will check only the presence of the required methods,
		not their type signatures!
	**/
	static public function runtime_checkable(cls:Dynamic):Dynamic;
	/**
		Walk over the model's nodes, setting the dropout rate. You can specify
		one or more attribute names, by default it looks for ["dropout_rate"].
	**/
	static public function set_dropout_rate(model:Dynamic, drop:Dynamic, ?attrs:Dynamic):Dynamic;
	static public var spancat_default_config : Dynamic;
	static public function spancat_score(examples:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		validate_examples(examples, method)
		Check that a batch of examples received during processing is valid.
		    This function lives here to prevent circular imports.
		
		    examples (Iterable[Examples]): A batch of examples.
		    method (str): The method name to show in error messages.
		    
	**/
	static public function validate_examples(args:haxe.extern.Rest<Dynamic>):Dynamic;
}