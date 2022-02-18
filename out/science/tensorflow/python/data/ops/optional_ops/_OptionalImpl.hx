/* This file is generated, do not edit! */
package tensorflow.python.data.ops.optional_ops;
@:pythonImport("tensorflow.python.data.ops.optional_ops", "_OptionalImpl") extern class _OptionalImpl {
	static public var __abstractmethods__ : Dynamic;
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function ___init__(variant_tensor:Dynamic, element_spec:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(variant_tensor:Dynamic, element_spec:Dynamic):Void;
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
	static public var _abc_impl : Dynamic;
	/**
		Returns a list of `Operation`s that consume this `CompositeTensor`.
		
		Returns:
		  A list of `Operation`s.
		
		Raises:
		  RuntimeError: If this method is called while executing eagerly.
	**/
	public function _consumers():Dynamic;
	/**
		Returns a TypeSpec given a shape invariant (used by `tf.while_loop`).
		
		Args:
		  shape: A `tf.TensorShape` object.  The shape invariant for this
		    `CompositeTensor`, or `None` if a default shape invariant should be used
		    (based on the value of this `CompositeTensor`).
		
		Returns:
		  A nested structure whose values are `tf.TensorShape` objects, specifying
		  the shape invariants for the tensors that comprise this `CompositeTensor`.
	**/
	public function _shape_invariant_to_type_spec(shape:Dynamic):Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	static public var _tf_deprecated_api_names : Dynamic;
	/**
		A `TypeSpec` describing the type of this value.
	**/
	public var _type_spec : Dynamic;
	/**
		The type specification of an element of this optional.
		
		>>> optional = tf.experimental.Optional.from_value(42)
		>>> print(optional.element_spec)
		tf.TensorSpec(shape=(), dtype=tf.int32, name=None)
		
		Returns:
		  A (nested) structure of `tf.TypeSpec` objects matching the structure of an
		  element of this optional, specifying the type of individual components.
	**/
	public var element_spec : Dynamic;
	/**
		Returns an `Optional` that has no value.
		
		NOTE: This method takes an argument that defines the structure of the value
		that would be contained in the returned `Optional` if it had a value.
		
		>>> optional = tf.experimental.Optional.empty(
		...   tf.TensorSpec(shape=(), dtype=tf.int32, name=None))
		>>> print(optional.has_value())
		tf.Tensor(False, shape=(), dtype=bool)
		
		Args:
		  element_spec: A (nested) structure of `tf.TypeSpec` objects matching the
		    structure of an element of this optional.
		
		Returns:
		  A `tf.experimental.Optional` with no value.
	**/
	static public function empty(element_spec:Dynamic):Dynamic;
	/**
		Returns a `tf.experimental.Optional` that wraps the given value.
		
		>>> optional = tf.experimental.Optional.from_value(42)
		>>> print(optional.has_value())
		tf.Tensor(True, shape=(), dtype=bool)
		>>> print(optional.get_value())
		tf.Tensor(42, shape=(), dtype=int32)
		
		Args:
		  value: A value to wrap. The value must be convertible to `tf.Tensor` or
		    `tf.CompositeTensor`.
		
		Returns:
		  A `tf.experimental.Optional` that wraps `value`.
	**/
	static public function from_value(value:Dynamic):Dynamic;
	/**
		Returns the value wrapped by this optional.
		
		If this optional does not have a value (i.e. `self.has_value()` evaluates to
		`False`), this operation will raise `tf.errors.InvalidArgumentError` at
		runtime.
		
		>>> optional = tf.experimental.Optional.from_value(42)
		>>> print(optional.get_value())
		tf.Tensor(42, shape=(), dtype=int32)
		
		Args:
		  name: (Optional.) A name for the created operation.
		
		Returns:
		  The wrapped value.
	**/
	public function get_value(?name:Dynamic):Dynamic;
	/**
		Returns a tensor that evaluates to `True` if this optional has a value.
		
		>>> optional = tf.experimental.Optional.from_value(42)
		>>> print(optional.has_value())
		tf.Tensor(True, shape=(), dtype=bool)
		
		Args:
		  name: (Optional.) A name for the created operation.
		
		Returns:
		  A scalar `tf.Tensor` of type `tf.bool`.
	**/
	public function has_value(?name:Dynamic):Dynamic;
}