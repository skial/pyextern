/* This file is generated, do not edit! */
package tensorflow.python.ops.data_flow_ops;
@:pythonImport("tensorflow.python.ops.data_flow_ops", "QueueBase") extern class QueueBase {
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
		Constructs a queue object from a queue reference.
		
		The two optional lists, `shapes` and `names`, must be of the same length
		as `dtypes` if provided.  The values at a given index `i` indicate the
		shape and name to use for the corresponding queue component in `dtypes`.
		
		Args:
		  dtypes:  A list of types.  The length of dtypes must equal the number
		    of tensors in each element.
		  shapes: Constraints on the shapes of tensors in an element:
		    A list of shape tuples or None. This list is the same length
		    as dtypes.  If the shape of any tensors in the element are constrained,
		    all must be; shapes can be None if the shapes should not be constrained.
		  names: Optional list of names.  If provided, the `enqueue()` and
		    `dequeue()` methods will use dictionaries with these names as keys.
		    Must be None or a list or tuple of the same length as `dtypes`.
		  queue_ref: The queue reference, i.e. the output of the queue op.
		
		Raises:
		  ValueError: If one of the arguments is invalid.
	**/
	@:native("__init__")
	public function ___init__(dtypes:Dynamic, shapes:Dynamic, names:Dynamic, queue_ref:Dynamic):Dynamic;
	/**
		Constructs a queue object from a queue reference.
		
		The two optional lists, `shapes` and `names`, must be of the same length
		as `dtypes` if provided.  The values at a given index `i` indicate the
		shape and name to use for the corresponding queue component in `dtypes`.
		
		Args:
		  dtypes:  A list of types.  The length of dtypes must equal the number
		    of tensors in each element.
		  shapes: Constraints on the shapes of tensors in an element:
		    A list of shape tuples or None. This list is the same length
		    as dtypes.  If the shape of any tensors in the element are constrained,
		    all must be; shapes can be None if the shapes should not be constrained.
		  names: Optional list of names.  If provided, the `enqueue()` and
		    `dequeue()` methods will use dictionaries with these names as keys.
		    Must be None or a list or tuple of the same length as `dtypes`.
		  queue_ref: The queue reference, i.e. the output of the queue op.
		
		Raises:
		  ValueError: If one of the arguments is invalid.
	**/
	public function new(dtypes:Dynamic, shapes:Dynamic, names:Dynamic, queue_ref:Dynamic):Void;
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
		
		If it is a dictionary, the queue must have been constructed with a
		`names` attribute and the dictionary keys must match the queue names.
		If the queue was constructed with a `names` attribute, `vals` must
		be a dictionary.
		
		Args:
		  vals: A tensor, a list or tuple of tensors, or a dictionary..
		
		Returns:
		  A list of `Tensor` objects.
		
		Raises:
		  ValueError: If `vals` is invalid.
	**/
	public function _check_enqueue_dtypes(vals:Dynamic):Dynamic;
	/**
		Return the value to return from a dequeue op.
		
		If the queue has names, return a dictionary with the
		names as keys.  Otherwise return either a single tensor
		or a list of tensors depending on the length of `tensors`.
		
		Args:
		  tensors: List of tensors from the dequeue op.
		
		Returns:
		  A single tensor, a list of tensors, or a dictionary
		  of tensors.
	**/
	public function _dequeue_return_value(tensors:Dynamic):Dynamic;
	/**
		Return a list of values to pass to `name_scope()`.
		
		Args:
		  vals: A tensor, a list or tuple of tensors, or a dictionary.
		
		Returns:
		  The values in vals as a list.
	**/
	public function _scope_vals(vals:Dynamic):Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	static public var _tf_deprecated_api_names : Dynamic;
	/**
		Closes this queue.
		
		This operation signals that no more elements will be enqueued in
		the given queue. Subsequent `enqueue` and `enqueue_many`
		operations will fail. Subsequent `dequeue` and `dequeue_many`
		operations will continue to succeed if sufficient elements remain
		in the queue. Subsequently dequeue and dequeue_many operations
		that would otherwise block waiting for more elements (if close
		hadn't been called) will now fail immediately.
		
		If `cancel_pending_enqueues` is `True`, all pending requests will also
		be canceled.
		
		Args:
		  cancel_pending_enqueues: (Optional.) A boolean, defaulting to
		    `False` (described above).
		  name: A name for the operation (optional).
		
		Returns:
		  The operation that closes the queue.
	**/
	public function close(?cancel_pending_enqueues:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Dequeues one element from this queue.
		
		If the queue is empty when this operation executes, it will block
		until there is an element to dequeue.
		
		At runtime, this operation may raise an error if the queue is
		`tf.QueueBase.close` before or during its execution. If the
		queue is closed, the queue is empty, and there are no pending
		enqueue operations that can fulfill this request,
		`tf.errors.OutOfRangeError` will be raised. If the session is
		`tf.Session.close`,
		`tf.errors.CancelledError` will be raised.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  The tuple of tensors that was dequeued.
	**/
	public function dequeue(?name:Dynamic):Dynamic;
	/**
		Dequeues and concatenates `n` elements from this queue.
		
		This operation concatenates queue-element component tensors along
		the 0th dimension to make a single component tensor.  All of the
		components in the dequeued tuple will have size `n` in the 0th dimension.
		
		If the queue is closed and there are less than `n` elements left, then an
		`OutOfRange` exception is raised.
		
		At runtime, this operation may raise an error if the queue is
		`tf.QueueBase.close` before or during its execution. If the
		queue is closed, the queue contains fewer than `n` elements, and
		there are no pending enqueue operations that can fulfill this
		request, `tf.errors.OutOfRangeError` will be raised. If the
		session is `tf.Session.close`,
		`tf.errors.CancelledError` will be raised.
		
		Args:
		  n: A scalar `Tensor` containing the number of elements to dequeue.
		  name: A name for the operation (optional).
		
		Returns:
		  The list of concatenated tensors that was dequeued.
	**/
	public function dequeue_many(n:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Dequeues and concatenates `n` elements from this queue.
		
		**Note** This operation is not supported by all queues.  If a queue does not
		support DequeueUpTo, then a `tf.errors.UnimplementedError` is raised.
		
		This operation concatenates queue-element component tensors along
		the 0th dimension to make a single component tensor. If the queue
		has not been closed, all of the components in the dequeued tuple
		will have size `n` in the 0th dimension.
		
		If the queue is closed and there are more than `0` but fewer than
		`n` elements remaining, then instead of raising a
		`tf.errors.OutOfRangeError` like `tf.QueueBase.dequeue_many`,
		less than `n` elements are returned immediately.  If the queue is
		closed and there are `0` elements left in the queue, then a
		`tf.errors.OutOfRangeError` is raised just like in `dequeue_many`.
		Otherwise the behavior is identical to `dequeue_many`.
		
		Args:
		  n: A scalar `Tensor` containing the number of elements to dequeue.
		  name: A name for the operation (optional).
		
		Returns:
		  The tuple of concatenated tensors that was dequeued.
	**/
	public function dequeue_up_to(n:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The list of dtypes for each component of a queue element.
	**/
	public var dtypes : Dynamic;
	/**
		Enqueues one element to this queue.
		
		If the queue is full when this operation executes, it will block
		until the element has been enqueued.
		
		At runtime, this operation may raise an error if the queue is
		`tf.QueueBase.close` before or during its execution. If the
		queue is closed before this operation runs,
		`tf.errors.CancelledError` will be raised. If this operation is
		blocked, and either (i) the queue is closed by a close operation
		with `cancel_pending_enqueues=True`, or (ii) the session is
		`tf.Session.close`,
		`tf.errors.CancelledError` will be raised.
		
		Args:
		  vals: A tensor, a list or tuple of tensors, or a dictionary containing
		    the values to enqueue.
		  name: A name for the operation (optional).
		
		Returns:
		  The operation that enqueues a new tuple of tensors to the queue.
	**/
	public function enqueue(vals:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Enqueues zero or more elements to this queue.
		
		This operation slices each component tensor along the 0th dimension to
		make multiple queue elements. All of the tensors in `vals` must have the
		same size in the 0th dimension.
		
		If the queue is full when this operation executes, it will block
		until all of the elements have been enqueued.
		
		At runtime, this operation may raise an error if the queue is
		`tf.QueueBase.close` before or during its execution. If the
		queue is closed before this operation runs,
		`tf.errors.CancelledError` will be raised. If this operation is
		blocked, and either (i) the queue is closed by a close operation
		with `cancel_pending_enqueues=True`, or (ii) the session is
		`tf.Session.close`,
		`tf.errors.CancelledError` will be raised.
		
		Args:
		  vals: A tensor, a list or tuple of tensors, or a dictionary
		    from which the queue elements are taken.
		  name: A name for the operation (optional).
		
		Returns:
		  The operation that enqueues a batch of tuples of tensors to the queue.
	**/
	public function enqueue_many(vals:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Create a queue using the queue reference from `queues[index]`.
		
		Args:
		  index: An integer scalar tensor that determines the input that gets
		    selected.
		  queues: A list of `QueueBase` objects.
		
		Returns:
		  A `QueueBase` object.
		
		Raises:
		  TypeError: When `queues` is not a list of `QueueBase` objects,
		    or when the data types of `queues` are not all the same.
	**/
	static public function from_list(index:Dynamic, queues:Dynamic):Dynamic;
	/**
		Returns true if queue is closed.
		
		This operation returns true if the queue is closed and false if the queue
		is open.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  True if the queue is closed and false if the queue is open.
	**/
	public function is_closed(?name:Dynamic):Dynamic;
	/**
		The name of the underlying queue.
	**/
	public var name : Dynamic;
	/**
		The list of names for each component of a queue element.
	**/
	public var names : Dynamic;
	/**
		The underlying queue reference.
	**/
	public var queue_ref : Dynamic;
	/**
		The list of shapes for each component of a queue element.
	**/
	public var shapes : Dynamic;
	/**
		Compute the number of elements in this queue.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  A scalar tensor containing the number of elements in this queue.
	**/
	public function size(?name:Dynamic):Dynamic;
}