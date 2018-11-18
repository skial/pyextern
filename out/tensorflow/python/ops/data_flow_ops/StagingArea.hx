/* This file is generated, do not edit! */
package tensorflow.python.ops.data_flow_ops;
@:pythonImport("tensorflow.python.ops.data_flow_ops", "StagingArea") extern class StagingArea {
	public function _StagingArea__internal_get(get_fn:Dynamic, name:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Constructs a staging area object.
		
		The two optional lists, `shapes` and `names`, must be of the same length
		as `dtypes` if provided.  The values at a given index `i` indicate the
		shape and name to use for the corresponding queue component in `dtypes`.
		
		The device scope at the time of object creation determines where the
		storage for the `StagingArea` will reside.  Calls to `put` will incur a copy
		to this memory space, if necessary.  Tensors returned by `get` will be
		placed according to the device scope when `get` is called.
		
		Args:
		  dtypes:  A list of types.  The length of dtypes must equal the number
		    of tensors in each element.
		  shapes: (Optional.) Constraints on the shapes of tensors in an element.
		    A list of shape tuples or None. This list is the same length
		    as dtypes.  If the shape of any tensors in the element are constrained,
		    all must be; shapes can be None if the shapes should not be constrained.
		  names: (Optional.) If provided, the `get()` and
		    `put()` methods will use dictionaries with these names as keys.
		    Must be None or a list or tuple of the same length as `dtypes`.
		  shared_name: (Optional.) A name to be used for the shared object. By
		    passing the same name to two different python objects they will share
		    the underlying staging area. Must be a string.
		  capacity: (Optional.) Maximum number of elements.
		    An integer. If zero, the Staging Area is unbounded
		  memory_limit: (Optional.) Maximum number of bytes of all tensors
		    in the Staging Area.
		    An integer. If zero, the Staging Area is unbounded
		
		Raises:
		  ValueError: If one of the arguments is invalid.
	**/
	@:native("__init__")
	public function ___init__(dtypes:Dynamic, ?shapes:Dynamic, ?names:Dynamic, ?shared_name:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic):Dynamic;
	/**
		Constructs a staging area object.
		
		The two optional lists, `shapes` and `names`, must be of the same length
		as `dtypes` if provided.  The values at a given index `i` indicate the
		shape and name to use for the corresponding queue component in `dtypes`.
		
		The device scope at the time of object creation determines where the
		storage for the `StagingArea` will reside.  Calls to `put` will incur a copy
		to this memory space, if necessary.  Tensors returned by `get` will be
		placed according to the device scope when `get` is called.
		
		Args:
		  dtypes:  A list of types.  The length of dtypes must equal the number
		    of tensors in each element.
		  shapes: (Optional.) Constraints on the shapes of tensors in an element.
		    A list of shape tuples or None. This list is the same length
		    as dtypes.  If the shape of any tensors in the element are constrained,
		    all must be; shapes can be None if the shapes should not be constrained.
		  names: (Optional.) If provided, the `get()` and
		    `put()` methods will use dictionaries with these names as keys.
		    Must be None or a list or tuple of the same length as `dtypes`.
		  shared_name: (Optional.) A name to be used for the shared object. By
		    passing the same name to two different python objects they will share
		    the underlying staging area. Must be a string.
		  capacity: (Optional.) Maximum number of elements.
		    An integer. If zero, the Staging Area is unbounded
		  memory_limit: (Optional.) Maximum number of bytes of all tensors
		    in the Staging Area.
		    An integer. If zero, the Staging Area is unbounded
		
		Raises:
		  ValueError: If one of the arguments is invalid.
	**/
	public function new(dtypes:Dynamic, ?shapes:Dynamic, ?names:Dynamic, ?shared_name:Dynamic, ?capacity:Dynamic, ?memory_limit:Dynamic):Void;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Validate and convert `vals` to a list of `Tensor`s.
		
		The `vals` argument can be a Tensor, a list or tuple of tensors, or a
		dictionary with tensor values.
		
		If `vals` is a list, then the appropriate indices associated with the
		values must be provided.
		
		If it is a dictionary, the staging area must have been constructed with a
		`names` attribute and the dictionary keys must match the staging area names.
		`indices` will be inferred from the dictionary keys.
		If the staging area was constructed with a `names` attribute, `vals` must
		be a dictionary.
		
		Checks that the dtype and shape of each value matches that
		of the staging area.
		
		Args:
		  vals: A tensor, a list or tuple of tensors, or a dictionary.
		
		Returns:
		  A (tensors, indices) tuple where `tensors` is a list of `Tensor` objects
		  and `indices` is a list of indices associed with the tensors.
		
		Raises:
		  ValueError: If `vals` or `indices` is invalid.
	**/
	public function _check_put_dtypes(vals:Dynamic, ?indices:Dynamic):Dynamic;
	/**
		Encode inter-device transfers if the current device
		is not the same as the Staging Area's device.
	**/
	public function _create_device_transfers(tensors:Dynamic):Dynamic;
	/**
		Return the value to return from a get op.
		
		If the staging area has names, return a dictionary with the
		names as keys.  Otherwise return either a single tensor
		or a list of tensors depending on the length of `tensors`.
		
		Args:
		  tensors: List of tensors from the get op.
		  indices: Indices of associated names and shapes
		
		Returns:
		  A single tensor, a list of tensors, or a dictionary
		  of tensors.
	**/
	public function _get_return_value(tensors:Dynamic, indices:Dynamic):Dynamic;
	static public var _identifier : Dynamic;
	static public var _lock : Dynamic;
	/**
		Return a list of values to pass to `name_scope()`.
		
		Args:
		  vals: A tensor, a list or tuple of tensors, or a dictionary.
		
		Returns:
		  The values in vals as a list.
	**/
	public function _scope_vals(vals:Dynamic):Dynamic;
	/**
		The maximum number of elements of this staging area.
	**/
	public var capacity : Dynamic;
	/**
		Clears the staging area.
		
		Args:
		    name: A name for the operation (optional)
		
		Returns:
		    The created op
	**/
	public function clear(?name:Dynamic):Dynamic;
	/**
		The list of dtypes for each component of a staging area element.
	**/
	public var dtypes : Dynamic;
	/**
		Gets one element from this staging area.
		
		If the staging area is empty when this operation executes, it will block
		until there is an element to dequeue.
		
		Note that unlike others ops that can block, like the queue Dequeue
		operations, this can stop other work from happening.  To avoid this, the
		intended use is for this to be called only when there will be an element
		already available.  One method for doing this in a training loop would be to
		run a `put()` call during a warmup session.run call, and then call both
		`get()` and `put()` in each subsequent step.
		
		The placement of the returned tensor will be determined by the current
		device scope when this function is called.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  The tuple of tensors that was gotten.
	**/
	public function get(?name:Dynamic):Dynamic;
	/**
		The maximum number of bytes of this staging area.
	**/
	public var memory_limit : Dynamic;
	/**
		The name of the staging area.
	**/
	public var name : Dynamic;
	/**
		The list of names for each component of a staging area element.
	**/
	public var names : Dynamic;
	/**
		Peeks at an element in the staging area.
		
		If the staging area is too small to contain the element at
		the specified index, it will block until enough elements
		are inserted to complete the operation.
		
		The placement of the returned tensor will be determined by
		the current device scope when this function is called.
		
		Args:
		  index: The index of the tensor within the staging area
		          to look up.
		  name: A name for the operation (optional).
		
		Returns:
		  The tuple of tensors that was gotten.
	**/
	public function peek(index:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Create an op that places a value into the staging area.
		
		This operation will block if the `StagingArea` has reached
		its capacity.
		
		Args:
		  values: A single tensor, a list or tuple of tensors, or a dictionary with
		    tensor values. The number of elements must match the length of the
		    list provided to the dtypes argument when creating the StagingArea.
		  name: A name for the operation (optional).
		
		Returns:
		    The created op.
		
		Raises:
		  ValueError: If the number or type of inputs don't match the staging area.
	**/
	public function put(values:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The list of shapes for each component of a staging area element.
	**/
	public var shapes : Dynamic;
	/**
		Returns the number of elements in the staging area.
		
		Args:
		    name: A name for the operation (optional)
		
		Returns:
		    The created op
	**/
	public function size(?name:Dynamic):Dynamic;
}