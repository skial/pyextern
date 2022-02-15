/* This file is generated, do not edit! */
package spacy.pipeline.multitask;
@:pythonImport("spacy.pipeline.multitask") extern class Multitask_Module {
	static public var DEFAULT_MT_MODEL : Dynamic;
	static public var ID : Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var POS : Dynamic;
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
		make_nn_labeller(nlp: Language, name: str, model: Model, labels: Optional[dict], target: str)
	**/
	static public function make_nn_labeller(nlp:Dynamic, name:Dynamic, model:Dynamic, labels:Dynamic, target:Dynamic):Dynamic;
	/**
		Walk over the model's nodes, setting the dropout rate. You can specify
		one or more attribute names, by default it looks for ["dropout_rate"].
	**/
	static public function set_dropout_rate(model:Dynamic, drop:Dynamic, ?attrs:Dynamic):Dynamic;
	static public function to_categorical(Y:Dynamic, ?n_classes:Dynamic):Dynamic;
	/**
		validate_examples(examples, method)
		Check that a batch of examples received during processing is valid.
		    This function lives here to prevent circular imports.
		
		    examples (Iterable[Examples]): A batch of examples.
		    method (str): The method name to show in error messages.
		    
	**/
	static public function validate_examples(args:haxe.extern.Rest<Dynamic>):Dynamic;
}