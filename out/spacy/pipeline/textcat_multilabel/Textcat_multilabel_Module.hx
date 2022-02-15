/* This file is generated, do not edit! */
package spacy.pipeline.textcat_multilabel;
@:pythonImport("spacy.pipeline.textcat_multilabel") extern class Textcat_multilabel_Module {
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
	static public var DEFAULT_MULTI_TEXTCAT_MODEL : Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Create a TextCategorizer component. The text categorizer predicts categories
		over a whole document. It can learn one or more labels, and the labels are considered
		to be non-mutually exclusive, which means that there can be zero or more labels
		per doc).
		
		model (Model[List[Doc], List[Floats2d]]): A model instance that predicts
		    scores for each category.
		threshold (float): Cutoff to consider a prediction "positive".
	**/
	static public function make_multilabel_textcat(nlp:Dynamic, name:Dynamic, model:Dynamic, threshold:Dynamic, scorer:Dynamic):Dynamic;
	static public function make_textcat_multilabel_scorer():Dynamic;
	static public var multi_label_bow_config : Dynamic;
	static public var multi_label_cnn_config : Dynamic;
	static public var multi_label_default_config : Dynamic;
	static public function textcat_multilabel_score(examples:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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