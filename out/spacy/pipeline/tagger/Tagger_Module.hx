/* This file is generated, do not edit! */
package spacy.pipeline.tagger;
@:pythonImport("spacy.pipeline.tagger") extern class Tagger_Module {
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
	static public var DEFAULT_TAGGER_MODEL : Dynamic;
	static public var ID : Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var POS : Dynamic;
	static public var X : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	static public var default_model_config : Dynamic;
	/**
		deserialize_config(path)
	**/
	static public function deserialize_config(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		make_tagger(nlp: Language, name: str, model: Model, overwrite: bool, scorer: Optional[Callable], neg_prefix: str)
		Construct a part-of-speech tagger component.
		
		    model (Model[List[Doc], List[Floats2d]]): A model instance that predicts
		        the tag probabilities. The output vectors should match the number of tags
		        in size, and be normalized as probabilities (all scores between 0 and 1,
		        with the rows summing to 1).
		    
	**/
	static public function make_tagger(nlp:Dynamic, name:Dynamic, model:Dynamic, overwrite:Dynamic, scorer:Dynamic, neg_prefix:Dynamic):Dynamic;
	/**
		make_tagger_scorer()
	**/
	static public function make_tagger_scorer():Dynamic;
	/**
		Walk over the model's nodes, setting the dropout rate. You can specify
		one or more attribute names, by default it looks for ["dropout_rate"].
	**/
	static public function set_dropout_rate(model:Dynamic, drop:Dynamic, ?attrs:Dynamic):Dynamic;
	/**
		tagger_score(examples, **kwargs)
	**/
	static public function tagger_score(examples:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		validate_examples(examples, method)
		Check that a batch of examples received during processing is valid.
		    This function lives here to prevent circular imports.
		
		    examples (Iterable[Examples]): A batch of examples.
		    method (str): The method name to show in error messages.
		    
	**/
	static public function validate_examples(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		validate_get_examples(get_examples, method)
		Check that a generator of a batch of examples received during processing is valid:
		    the callable produces a non-empty list of Example objects.
		    This function lives here to prevent circular imports.
		
		    get_examples (Callable[[], Iterable[Example]]): A function that produces a batch of examples.
		    method (str): The method name to show in error messages.
		    
	**/
	static public function validate_get_examples(args:haxe.extern.Rest<Dynamic>):Dynamic;
}