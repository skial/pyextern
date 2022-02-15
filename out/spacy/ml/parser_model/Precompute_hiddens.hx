/* This file is generated, do not edit! */
package spacy.ml.parser_model;
@:pythonImport("spacy.ml.parser_model", "precompute_hiddens") extern class Precompute_hiddens {
	/**
		Call self as a function.
	**/
	public function __call__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __pyx_vtable__ : Dynamic;
	/**
		precompute_hiddens.__reduce_cython__(self)
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		precompute_hiddens.__setstate_cython__(self, __pyx_state)
	**/
	public function __setstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		precompute_hiddens._maxout_nonlinearity(self, state_vector)
	**/
	public function _maxout_nonlinearity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		precompute_hiddens._nonlinearity(self, state_vector)
	**/
	public function _nonlinearity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		precompute_hiddens._relu_nonlinearity(self, state_vector)
	**/
	public function _relu_nonlinearity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		precompute_hiddens.begin_update(self, token_ids)
	**/
	public function begin_update(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		precompute_hiddens.get_dim(self, name)
	**/
	public function get_dim(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		precompute_hiddens.has_dim(self, name)
	**/
	public function has_dim(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var nF : Dynamic;
	public var nO : Dynamic;
	public var nP : Dynamic;
	/**
		numpy_ops: object
	**/
	public var numpy_ops : Dynamic;
	/**
		ops: object
	**/
	public var ops : Dynamic;
	/**
		precompute_hiddens.predict(self, X)
	**/
	public function predict(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		precompute_hiddens.set_dim(self, name, value)
	**/
	public function set_dim(args:haxe.extern.Rest<Dynamic>):Dynamic;
}