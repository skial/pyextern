/* This file is generated, do not edit! */
package tensorflow.python.keras.engine.compile_utils;
@:pythonImport("tensorflow.python.keras.engine.compile_utils", "Container") extern class Container {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
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
	public function ___init__(?output_names:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?output_names:Dynamic):Void;
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
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
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Convenience method to conform `struct` to `outputs` structure.
		
		Mappings performed:
		
		(1) Map a dict to a list of outputs, using the output names.
		(2) Fill missing keys in a dict w/ `None`s.
		(3) Map a single item to all outputs.
		
		Args:
		  outputs: Model predictions.
		  struct: Arbitrary nested structure (e.g. of labels, sample_weights,
		    losses, or metrics).
		
		Returns:
		  Mapping of `struct` to `outputs` structure.
	**/
	public function _conform_to_outputs(outputs:Dynamic, struct:Dynamic):Dynamic;
	public function _copy_object(obj:Dynamic):Dynamic;
	/**
		Determines if losses / metrics should be applied to all outputs.
		
		NOTE: This method should only be called for Metrics / Losses, not for
		y_true / sample_weight.
		
		Args:
		  outputs: Model predictions.
		  objects: Arbitrary nested structure (e.g. of losses or metrics)
		
		Returns:
		  Arbitrary nested structure of objects, maybe copied to each output.
		
		Applies a Loss / Metric to all outputs.
	**/
	public function _maybe_broadcast_to_outputs(outputs:Dynamic, objects:Dynamic):Dynamic;
	public function _should_broadcast(objects:Dynamic):Dynamic;
	public function build(y_pred:Dynamic):Dynamic;
}