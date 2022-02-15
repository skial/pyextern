/* This file is generated, do not edit! */
package spacy.ml.tb_framework;
@:pythonImport("spacy.ml.tb_framework") extern class Tb_framework_Module {
	/**
		Set up a stepwise transition-based model
	**/
	static public function TransitionModel(tok2vec:Dynamic, lower:Dynamic, upper:Dynamic, resize_output:Dynamic, ?dropout:Dynamic, ?unseen_classes:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function forward(model:Dynamic, X:Dynamic, is_train:Dynamic):Dynamic;
	static public function init(model:Dynamic, ?X:Dynamic, ?Y:Dynamic):Dynamic;
	/**
		Transform a sequences of layers into a null operation.
	**/
	static public function noop(?layers:python.VarArgs<Dynamic>):Dynamic;
}