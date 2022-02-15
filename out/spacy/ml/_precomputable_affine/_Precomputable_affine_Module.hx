/* This file is generated, do not edit! */
package spacy.ml._precomputable_affine;
@:pythonImport("spacy.ml._precomputable_affine") extern class _Precomputable_affine_Module {
	static public function PrecomputableAffine(nO:Dynamic, nI:Dynamic, nF:Dynamic, nP:Dynamic, ?dropout:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _backprop_precomputable_affine_padding(model:Dynamic, dY:Dynamic, ids:Dynamic):Dynamic;
	static public function forward(model:Dynamic, X:Dynamic, is_train:Dynamic):Dynamic;
	/**
		This is like the 'layer sequential unit variance', but instead
		of taking the actual inputs, we randomly generate whitened data.
		
		Why's this all so complicated? We have a huge number of inputs,
		and the maxout unit makes guessing the dynamics tricky. Instead
		we set the maxout weights to values that empirically result in
		whitened outputs given whitened inputs.
	**/
	static public function init(model:Dynamic, ?X:Dynamic, ?Y:Dynamic):Dynamic;
	static public function normal_init(ops:Dynamic, shape:Dynamic, ?mean:Dynamic):Dynamic;
}