/* This file is generated, do not edit! */
package tensorflow.python.debug.wrappers.framework;
@:pythonImport("tensorflow.python.debug.wrappers.framework", "OnRunEndRequest") extern class OnRunEndRequest {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Constructor for `OnRunEndRequest`.
		
		Args:
		  performed_action: (`OnRunStartAction`) Actually-performed action by the
		    debug-wrapper session.
		  run_metadata: run_metadata output from the run() call (if any).
		  client_graph_def: (GraphDef) GraphDef from the client side, i.e., from
		    the python front end of TensorFlow. Can be obtained with
		    session.graph.as_graph_def().
		  tf_error: (errors.OpError subtypes) TensorFlow OpError that occurred
		    during the run (if any).
	**/
	@:native("__init__")
	public function ___init__(performed_action:Dynamic, ?run_metadata:Dynamic, ?client_graph_def:Dynamic, ?tf_error:Dynamic):Dynamic;
	/**
		Constructor for `OnRunEndRequest`.
		
		Args:
		  performed_action: (`OnRunStartAction`) Actually-performed action by the
		    debug-wrapper session.
		  run_metadata: run_metadata output from the run() call (if any).
		  client_graph_def: (GraphDef) GraphDef from the client side, i.e., from
		    the python front end of TensorFlow. Can be obtained with
		    session.graph.as_graph_def().
		  tf_error: (errors.OpError subtypes) TensorFlow OpError that occurred
		    during the run (if any).
	**/
	public function new(performed_action:Dynamic, ?run_metadata:Dynamic, ?client_graph_def:Dynamic, ?tf_error:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
}