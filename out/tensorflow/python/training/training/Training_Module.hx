/* This file is generated, do not edit! */
package tensorflow.python.training.training;
@:pythonImport("tensorflow.python.training.training") extern class Training_Module {
	/**
		Creates a `MonitoredSession` for training.
		
		For a chief, this utility sets proper session initializer/restorer. It also
		creates hooks related to checkpoint and summary saving. For workers, this
		utility sets proper session creator which waits for the chief to
		initialize/restore.
		
		
		Args:
		  master: `String` the TensorFlow master to use.
		  is_chief: If `True`, it will take care of initialization and recovery the
		    underlying TensorFlow session. If `False`, it will wait on a chief to
		    initialize or recover the TensorFlow session.
		  checkpoint_dir: A string.  Optional path to a directory where to restore
		    variables.
		  scaffold: A `Scaffold` used for gathering or building supportive ops. If
		    not specified, a default one is created. It's used to finalize the graph.
		  hooks: Optional list of `SessionRunHook` objects.
		  chief_only_hooks: list of `SessionRunHook` objects. Activate these hooks if
		    `is_chief==True`, ignore otherwise.
		  save_checkpoint_secs: The frequency, in seconds, that a checkpoint is saved
		    using a default checkpoint saver. If `save_checkpoint_secs` is set to
		    `None`, then the default checkpoint saver isn't used.
		  save_summaries_steps: The frequency, in number of global steps, that the
		    summaries are written to disk using a default summary saver. If both
		    `save_summaries_steps` and `save_summaries_secs` are set to `None`, then
		    the default summary saver isn't used.
		  save_summaries_secs: The frequency, in secs, that the summaries are written
		    to disk using a default summary saver.  If both `save_summaries_steps` and
		    `save_summaries_secs` are set to `None`, then the default summary saver
		    isn't used.
		  config: an instance of `tf.ConfigProto` proto used to configure the session.
		    It's the `config` argument of constructor of `tf.Session`.
		  stop_grace_period_secs: Number of seconds given to threads to stop after
		    `close()` has been called.
		  log_step_count_steps: The frequency, in number of global steps, that the
		    global step/sec is logged.
		
		Returns:
		  A `MonitoredSession` object.
	**/
	static public function MonitoredTrainingSession(?master:Dynamic, ?is_chief:Dynamic, ?checkpoint_dir:Dynamic, ?scaffold:Dynamic, ?hooks:Dynamic, ?chief_only_hooks:Dynamic, ?save_checkpoint_secs:Dynamic, ?save_summaries_steps:Dynamic, ?save_summaries_secs:Dynamic, ?config:Dynamic, ?stop_grace_period_secs:Dynamic, ?log_step_count_steps:Dynamic):Dynamic;
	static public function NewCheckpointReader(filepattern:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _allowed_symbols : Dynamic;
	/**
		Adds a `QueueRunner` to a collection in the graph.
		
		When building a complex model that uses many queues it is often difficult to
		gather all the queue runners that need to be run.  This convenience function
		allows you to add a queue runner to a well known collection in the graph.
		
		The companion method `start_queue_runners()` can be used to start threads for
		all the collected queue runners.
		
		Args:
		  qr: A `QueueRunner`.
		  collection: A `GraphKey` specifying the graph collection to add
		    the queue runner to.  Defaults to `GraphKeys.QUEUE_RUNNERS`.
	**/
	static public function add_queue_runner(qr:Dynamic, ?collection:Dynamic):Dynamic;
	/**
		Asserts `global_step_tensor` is a scalar int `Variable` or `Tensor`.
		
		Args:
		  global_step_tensor: `Tensor` to test.
	**/
	static public function assert_global_step(global_step_tensor:Dynamic):Dynamic;
	/**
		Basic loop to train a model.
		
		Calls `train_step_fn` in a loop to train a model.  The function is called as:
		
		```python
		train_step_fn(session, *args, **kwargs)
		```
		
		It is passed a `tf.Session` in addition to `args` and `kwargs`.  The function
		typically runs one training step in the session.
		
		Args:
		  supervisor: `tf.train.Supervisor` to run the training services.
		  train_step_fn: Callable to execute one training step.  Called
		    repeatedly as `train_step_fn(session, *args **kwargs)`.
		  args: Optional positional arguments passed to `train_step_fn`.
		  kwargs: Optional keyword arguments passed to `train_step_fn`.
		  master: Master to use to create the training session.  Defaults to
		    `""` which causes the session to be created in the local process.
	**/
	static public function basic_train_loop(supervisor:Dynamic, train_step_fn:Dynamic, ?args:Dynamic, ?kwargs:Dynamic, ?master:Dynamic):Dynamic;
	/**
		Creates batches of tensors in `tensors`.
		
		The argument `tensors` can be a list or a dictionary of tensors.
		The value returned by the function will be of the same type
		as `tensors`.
		
		This function is implemented using a queue. A `QueueRunner` for the
		queue is added to the current `Graph`'s `QUEUE_RUNNER` collection.
		
		If `enqueue_many` is `False`, `tensors` is assumed to represent a single
		example.  An input tensor with shape `[x, y, z]` will be output as a tensor
		with shape `[batch_size, x, y, z]`.
		
		If `enqueue_many` is `True`, `tensors` is assumed to represent a batch of
		examples, where the first dimension is indexed by example, and all members of
		`tensors` should have the same size in the first dimension.  If an input
		tensor has shape `[*, x, y, z]`, the output will have shape `[batch_size, x,
		y, z]`.  The `capacity` argument controls the how long the prefetching is
		allowed to grow the queues.
		
		The returned operation is a dequeue operation and will throw
		`tf.errors.OutOfRangeError` if the input queue is exhausted. If this
		operation is feeding another input queue, its queue runner will catch
		this exception, however, if this operation is used in your main thread
		you are responsible for catching this yourself.
		
		*N.B.:* If `dynamic_pad` is `False`, you must ensure that either
		(i) the `shapes` argument is passed, or (ii) all of the tensors in
		`tensors` must have fully-defined shapes. `ValueError` will be
		raised if neither of these conditions holds.
		
		If `dynamic_pad` is `True`, it is sufficient that the *rank* of the
		tensors is known, but individual dimensions may have shape `None`.
		In this case, for each enqueue the dimensions with value `None`
		may have a variable length; upon dequeue, the output tensors will be padded
		on the right to the maximum shape of the tensors in the current minibatch.
		For numbers, this padding takes value 0.  For strings, this padding is
		the empty string.  See `PaddingFIFOQueue` for more info.
		
		If `allow_smaller_final_batch` is `True`, a smaller batch value than
		`batch_size` is returned when the queue is closed and there are not enough
		elements to fill the batch, otherwise the pending elements are discarded.
		In addition, all output tensors' static shapes, as accessed via the
		`get_shape` method will have a first `Dimension` value of `None`, and
		operations that depend on fixed batch_size would fail.
		
		Args:
		  tensors: The list or dictionary of tensors to enqueue.
		  batch_size: The new batch size pulled from the queue.
		  num_threads: The number of threads enqueuing `tensors`.  The batching will
		    be nondeterministic if `num_threads > 1`.
		  capacity: An integer. The maximum number of elements in the queue.
		  enqueue_many: Whether each tensor in `tensors` is a single example.
		  shapes: (Optional) The shapes for each example.  Defaults to the
		    inferred shapes for `tensors`.
		  dynamic_pad: Boolean.  Allow variable dimensions in input shapes.
		    The given dimensions are padded upon dequeue so that tensors within a
		    batch have the same shapes.
		  allow_smaller_final_batch: (Optional) Boolean. If `True`, allow the final
		    batch to be smaller if there are insufficient items left in the queue.
		  shared_name: (Optional). If set, this queue will be shared under the given
		    name across multiple sessions.
		  name: (Optional) A name for the operations.
		
		Returns:
		  A list or dictionary of tensors with the same types as `tensors` (except if
		  the input is a list of one element, then it returns a tensor, not a list).
		
		Raises:
		  ValueError: If the `shapes` are not specified, and cannot be
		    inferred from the elements of `tensors`.
	**/
	static public function batch(tensors:Dynamic, batch_size:Dynamic, ?num_threads:Dynamic, ?capacity:Dynamic, ?enqueue_many:Dynamic, ?shapes:Dynamic, ?dynamic_pad:Dynamic, ?allow_smaller_final_batch:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Runs a list of tensors to fill a queue to create batches of examples.
		
		The `tensors_list` argument is a list of tuples of tensors, or a list of
		dictionaries of tensors.  Each element in the list is treated similarly
		to the `tensors` argument of `tf.train.batch()`.
		
		WARNING: This function is nondeterministic, since it starts a separate thread
		for each tensor.
		
		Enqueues a different list of tensors in different threads.
		Implemented using a queue -- a `QueueRunner` for the queue
		is added to the current `Graph`'s `QUEUE_RUNNER` collection.
		
		`len(tensors_list)` threads will be started,
		with thread `i` enqueuing the tensors from
		`tensors_list[i]`. `tensors_list[i1][j]` must match
		`tensors_list[i2][j]` in type and shape, except in the first
		dimension if `enqueue_many` is true.
		
		If `enqueue_many` is `False`, each `tensors_list[i]` is assumed
		to represent a single example. An input tensor `x` will be output as a
		tensor with shape `[batch_size] + x.shape`.
		
		If `enqueue_many` is `True`, `tensors_list[i]` is assumed to
		represent a batch of examples, where the first dimension is indexed
		by example, and all members of `tensors_list[i]` should have the
		same size in the first dimension.  The slices of any input tensor
		`x` are treated as examples, and the output tensors will have shape
		`[batch_size] + x.shape[1:]`.
		
		The `capacity` argument controls the how long the prefetching is allowed to
		grow the queues.
		
		The returned operation is a dequeue operation and will throw
		`tf.errors.OutOfRangeError` if the input queue is exhausted. If this
		operation is feeding another input queue, its queue runner will catch
		this exception, however, if this operation is used in your main thread
		you are responsible for catching this yourself.
		
		*N.B.:* If `dynamic_pad` is `False`, you must ensure that either
		(i) the `shapes` argument is passed, or (ii) all of the tensors in
		`tensors_list` must have fully-defined shapes. `ValueError` will be
		raised if neither of these conditions holds.
		
		If `dynamic_pad` is `True`, it is sufficient that the *rank* of the
		tensors is known, but individual dimensions may have value `None`.
		In this case, for each enqueue the dimensions with value `None`
		may have a variable length; upon dequeue, the output tensors will be padded
		on the right to the maximum shape of the tensors in the current minibatch.
		For numbers, this padding takes value 0.  For strings, this padding is
		the empty string.  See `PaddingFIFOQueue` for more info.
		
		If `allow_smaller_final_batch` is `True`, a smaller batch value than
		`batch_size` is returned when the queue is closed and there are not enough
		elements to fill the batch, otherwise the pending elements are discarded.
		In addition, all output tensors' static shapes, as accessed via the
		`get_shape` method will have a first `Dimension` value of `None`, and
		operations that depend on fixed batch_size would fail.
		
		Args:
		  tensors_list: A list of tuples or dictionaries of tensors to enqueue.
		  batch_size: An integer. The new batch size pulled from the queue.
		  capacity: An integer. The maximum number of elements in the queue.
		  enqueue_many: Whether each tensor in `tensor_list_list` is a single
		    example.
		  shapes: (Optional) The shapes for each example.  Defaults to the
		    inferred shapes for `tensor_list_list[i]`.
		  dynamic_pad: Boolean.  Allow variable dimensions in input shapes.
		    The given dimensions are padded upon dequeue so that tensors within a
		    batch have the same shapes.
		  allow_smaller_final_batch: (Optional) Boolean. If `True`, allow the final
		    batch to be smaller if there are insufficient items left in the queue.
		  shared_name: (Optional) If set, this queue will be shared under the given
		    name across multiple sessions.
		  name: (Optional) A name for the operations.
		
		Returns:
		  A list or dictionary of tensors with the same number and types as
		  `tensors_list[i]`.
		
		Raises:
		  ValueError: If the `shapes` are not specified, and cannot be
		    inferred from the elements of `tensor_list_list`.
	**/
	static public function batch_join(tensors_list:Dynamic, batch_size:Dynamic, ?capacity:Dynamic, ?enqueue_many:Dynamic, ?shapes:Dynamic, ?dynamic_pad:Dynamic, ?allow_smaller_final_batch:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Checks whether a V1 or V2 checkpoint exists with the specified prefix.
		
		This is the recommended way to check if a checkpoint exists, since it takes
		into account the naming difference between V1 and V2 formats.
		
		Args:
		  checkpoint_prefix: the prefix of a V1 or V2 checkpoint, with V2 taking
		    priority.  Typically the result of `Saver.save()` or that of
		    `tf.train.latest_checkpoint()`, regardless of sharded/non-sharded or
		    V1/V2.
		Returns:
		  A bool, true iff a checkpoint referred to by `checkpoint_prefix` exists.
	**/
	static public function checkpoint_exists(checkpoint_prefix:Dynamic):Dynamic;
	/**
		Create global step tensor in graph.
		
		Args:
		  graph: The graph in which to create the global step tensor. If missing,
		    use default graph.
		
		Returns:
		  Global step tensor.
		
		Raises:
		  ValueError: if global step tensor is already defined.
	**/
	static public function create_global_step(?graph:Dynamic):Dynamic;
	static public function do_quantize_training_on_graphdef(input_graph:Dynamic, num_bits:Dynamic):Dynamic;
	/**
		Applies exponential decay to the learning rate.
		
		When training a model, it is often recommended to lower the learning rate as
		the training progresses.  This function applies an exponential decay function
		to a provided initial learning rate.  It requires a `global_step` value to
		compute the decayed learning rate.  You can just pass a TensorFlow variable
		that you increment at each training step.
		
		The function returns the decayed learning rate.  It is computed as:
		
		```python
		decayed_learning_rate = learning_rate *
		                        decay_rate ^ (global_step / decay_steps)
		```
		
		If the argument `staircase` is `True`, then `global_step / decay_steps` is an
		integer division and the decayed learning rate follows a staircase function.
		
		Example: decay every 100000 steps with a base of 0.96:
		
		```python
		...
		global_step = tf.Variable(0, trainable=False)
		starter_learning_rate = 0.1
		learning_rate = tf.train.exponential_decay(starter_learning_rate, global_step,
		                                           100000, 0.96, staircase=True)
		# Passing global_step to minimize() will increment it at each step.
		learning_step = (
		    tf.train.GradientDescentOptimizer(learning_rate)
		    .minimize(...my loss..., global_step=global_step)
		)
		```
		
		Args:
		  learning_rate: A scalar `float32` or `float64` `Tensor` or a
		    Python number.  The initial learning rate.
		  global_step: A scalar `int32` or `int64` `Tensor` or a Python number.
		    Global step to use for the decay computation.  Must not be negative.
		  decay_steps: A scalar `int32` or `int64` `Tensor` or a Python number.
		    Must be positive.  See the decay computation above.
		  decay_rate: A scalar `float32` or `float64` `Tensor` or a
		    Python number.  The decay rate.
		  staircase: Boolean.  If `True` decay the learning rate at discrete intervals
		  name: String.  Optional name of the operation.  Defaults to
		    'ExponentialDecay'.
		
		Returns:
		  A scalar `Tensor` of the same type as `learning_rate`.  The decayed
		  learning rate.
		
		Raises:
		  ValueError: if `global_step` is not supplied.
	**/
	static public function exponential_decay(learning_rate:Dynamic, global_step:Dynamic, decay_steps:Dynamic, decay_rate:Dynamic, ?staircase:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns `MetaGraphDef` proto. Optionally writes it to filename.
		
		This function exports the graph, saver, and collection objects into
		`MetaGraphDef` protocol buffer with the intention of it being imported
		at a later time or location to restart training, run inference, or be
		a subgraph.
		
		Args:
		  filename: Optional filename including the path for writing the
		    generated `MetaGraphDef` protocol buffer.
		  meta_info_def: `MetaInfoDef` protocol buffer.
		  graph_def: `GraphDef` protocol buffer.
		  saver_def: `SaverDef` protocol buffer.
		  collection_list: List of string keys to collect.
		  as_text: If `True`, writes the `MetaGraphDef` as an ASCII proto.
		  graph: The `Graph` to import into. If `None`, use the default graph.
		  export_scope: Optional `string`. Name scope under which to extract
		    the subgraph. The scope name will be striped from the node definitions
		    for easy import later into new name scopes. If `None`, the whole graph
		    is exported. graph_def and export_scope cannot both be specified.
		  clear_devices: Whether or not to clear the device field for an `Operation`
		    or `Tensor` during export.
		  **kwargs: Optional keyed arguments.
		
		Returns:
		  A `MetaGraphDef` proto.
		
		Raises:
		  ValueError: When the `GraphDef` is larger than 2GB.
	**/
	static public function export_meta_graph(?filename:Dynamic, ?meta_info_def:Dynamic, ?graph_def:Dynamic, ?saver_def:Dynamic, ?collection_list:Dynamic, ?as_text:Dynamic, ?graph:Dynamic, ?export_scope:Dynamic, ?clear_devices:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Generates a checkpoint state proto.
		
		Args:
		  save_dir: Directory where the model was saved.
		  model_checkpoint_path: The checkpoint file.
		  all_model_checkpoint_paths: List of strings.  Paths to all not-yet-deleted
		    checkpoints, sorted from oldest to newest.  If this is a non-empty list,
		    the last element must be equal to model_checkpoint_path.  These paths
		    are also saved in the CheckpointState proto.
		
		Returns:
		  CheckpointState proto with model_checkpoint_path and
		  all_model_checkpoint_paths updated to either absolute paths or
		  relative paths to the current save_dir.
	**/
	static public function generate_checkpoint_state_proto(save_dir:Dynamic, model_checkpoint_path:Dynamic, ?all_model_checkpoint_paths:Dynamic):Dynamic;
	/**
		Returns the mtimes (modification timestamps) of the checkpoints.
		
		Globs for the checkpoints pointed to by `checkpoint_prefixes`.  If the files
		exist, collect their mtime.  Both V2 and V1 checkpoints are considered, in
		that priority.
		
		This is the recommended way to get the mtimes, since it takes into account
		the naming difference between V1 and V2 formats.
		
		Args:
		  checkpoint_prefixes: a list of checkpoint paths, typically the results of
		    `Saver.save()` or those of `tf.train.latest_checkpoint()`, regardless of
		    sharded/non-sharded or V1/V2.
		Returns:
		  A list of mtimes (in microseconds) of the found checkpoints.
	**/
	static public function get_checkpoint_mtimes(checkpoint_prefixes:Dynamic):Dynamic;
	/**
		Returns CheckpointState proto from the "checkpoint" file.
		
		If the "checkpoint" file contains a valid CheckpointState
		proto, returns it.
		
		Args:
		  checkpoint_dir: The directory of checkpoints.
		  latest_filename: Optional name of the checkpoint file.  Default to
		    'checkpoint'.
		
		Returns:
		  A CheckpointState if the state was available, None
		  otherwise.
		
		Raises:
		  ValueError: if the checkpoint read doesn't have model_checkpoint_path set.
	**/
	static public function get_checkpoint_state(checkpoint_dir:Dynamic, ?latest_filename:Dynamic):Dynamic;
	/**
		Get the global step tensor.
		
		The global step tensor must be an integer variable. We first try to find it
		in the collection `GLOBAL_STEP`, or by name `global_step:0`.
		
		Args:
		  graph: The graph to find the global step in. If missing, use default graph.
		
		Returns:
		  The global step variable, or `None` if none was found.
		
		Raises:
		  TypeError: If the global step tensor has a non-integer type, or if it is not
		    a `Variable`.
	**/
	static public function get_global_step(?graph:Dynamic):Dynamic;
	/**
		Returns and create (if necessary) the global step tensor.
		
		Args:
		  graph: The graph in which to create the global step tensor. If missing, use
		    default graph.
		
		Returns:
		  The global step tensor.
	**/
	static public function get_or_create_global_step(?graph:Dynamic):Dynamic;
	/**
		Small helper to get the global step.
		
		```python
		# Creates a variable to hold the global_step.
		global_step_tensor = tf.Variable(10, trainable=False, name='global_step')
		# Creates a session.
		sess = tf.Session()
		# Initializes the variable.
		print('global_step: %s' % tf.train.global_step(sess, global_step_tensor))
		
		global_step: 10
		```
		
		Args:
		  sess: A TensorFlow `Session` object.
		  global_step_tensor:  `Tensor` or the `name` of the operation that contains
		    the global step.
		
		Returns:
		  The global step value.
	**/
	static public function global_step(sess:Dynamic, global_step_tensor:Dynamic):Dynamic;
	/**
		Recreates a Graph saved in a `MetaGraphDef` proto.
		
		This function takes a `MetaGraphDef` protocol buffer as input. If
		the argument is a file containing a `MetaGraphDef` protocol buffer ,
		it constructs a protocol buffer from the file content. The function
		then adds all the nodes from the `graph_def` field to the
		current graph, recreates all the collections, and returns a saver
		constructed from the `saver_def` field.
		
		In combination with `export_meta_graph()`, this function can be used to
		
		* Serialize a graph along with other Python objects such as `QueueRunner`,
		  `Variable` into a `MetaGraphDef`.
		
		* Restart training from a saved graph and checkpoints.
		
		* Run inference from a saved graph and checkpoints.
		
		```Python
		...
		# Create a saver.
		saver = tf.train.Saver(...variables...)
		# Remember the training_op we want to run by adding it to a collection.
		tf.add_to_collection('train_op', train_op)
		sess = tf.Session()
		for step in xrange(1000000):
		    sess.run(train_op)
		    if step % 1000 == 0:
		        # Saves checkpoint, which by default also exports a meta_graph
		        # named 'my-model-global_step.meta'.
		        saver.save(sess, 'my-model', global_step=step)
		```
		
		Later we can continue training from this saved `meta_graph` without building
		the model from scratch.
		
		```Python
		with tf.Session() as sess:
		  new_saver = tf.train.import_meta_graph('my-save-dir/my-model-10000.meta')
		  new_saver.restore(sess, 'my-save-dir/my-model-10000')
		  # tf.get_collection() returns a list. In this example we only want the
		  # first one.
		  train_op = tf.get_collection('train_op')[0]
		  for step in xrange(1000000):
		    sess.run(train_op)
		```
		
		NOTE: Restarting training from saved `meta_graph` only works if the
		device assignments have not changed.
		
		Args:
		  meta_graph_or_file: `MetaGraphDef` protocol buffer or filename (including
		    the path) containing a `MetaGraphDef`.
		  clear_devices: Whether or not to clear the device field for an `Operation`
		    or `Tensor` during import.
		  import_scope: Optional `string`. Name scope to add. Only used when
		    initializing from protocol buffer.
		  **kwargs: Optional keyed arguments.
		
		Returns:
		  A saver constructed from `saver_def` in `MetaGraphDef` or None.
		
		  A None value is returned if no variables exist in the `MetaGraphDef`
		  (i.e., there are no variables to restore).
	**/
	static public function import_meta_graph(meta_graph_or_file:Dynamic, ?clear_devices:Dynamic, ?import_scope:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Output the rows of `input_tensor` to a queue for an input pipeline.
		
		Note: if `num_epochs` is not `None`, this function creates local counter
		`epochs`. Use `local_variables_initializer()` to initialize local variables.
		
		Args:
		  input_tensor: A tensor with the rows to produce. Must be at least
		    one-dimensional. Must either have a fully-defined shape, or
		    `element_shape` must be defined.
		  element_shape: (Optional.) A `TensorShape` representing the shape of a
		    row of `input_tensor`, if it cannot be inferred.
		  num_epochs: (Optional.) An integer. If specified `input_producer` produces
		    each row of `input_tensor` `num_epochs` times before generating an
		    `OutOfRange` error. If not specified, `input_producer` can cycle through
		    the rows of `input_tensor` an unlimited number of times.
		  shuffle: (Optional.) A boolean. If true, the rows are randomly shuffled
		    within each epoch.
		  seed: (Optional.) An integer. The seed to use if `shuffle` is true.
		  capacity: (Optional.) The capacity of the queue to be used for buffering
		    the input.
		  shared_name: (Optional.) If set, this queue will be shared under the given
		    name across multiple sessions.
		  summary_name: (Optional.) If set, a scalar summary for the current queue
		    size will be generated, using this name as part of the tag.
		  name: (Optional.) A name for queue.
		  cancel_op: (Optional.) Cancel op for the queue
		
		Returns:
		  A queue with the output rows.  A `QueueRunner` for the queue is
		  added to the current `QUEUE_RUNNER` collection of the current
		  graph.
		
		Raises:
		  ValueError: If the shape of the input cannot be inferred from the arguments.
	**/
	static public function input_producer(input_tensor:Dynamic, ?element_shape:Dynamic, ?num_epochs:Dynamic, ?shuffle:Dynamic, ?seed:Dynamic, ?capacity:Dynamic, ?shared_name:Dynamic, ?summary_name:Dynamic, ?name:Dynamic, ?cancel_op:Dynamic):Dynamic;
	/**
		Applies inverse time decay to the initial learning rate.
		
		When training a model, it is often recommended to lower the learning rate as
		the training progresses.  This function applies an inverse decay function
		to a provided initial learning rate.  It requires an `global_step` value to
		compute the decayed learning rate.  You can just pass a TensorFlow variable
		that you increment at each training step.
		
		The function returns the decayed learning rate.  It is computed as:
		
		```python
		decayed_learning_rate = learning_rate / (1 + decay_rate * t)
		```
		
		Example: decay 1/t with a rate of 0.5:
		
		```python
		...
		global_step = tf.Variable(0, trainable=False)
		learning_rate = 0.1
		k = 0.5
		learning_rate = tf.train.inverse_time_decay(learning_rate, global_step, k)
		
		# Passing global_step to minimize() will increment it at each step.
		learning_step = (
		    tf.train.GradientDescentOptimizer(learning_rate)
		    .minimize(...my loss..., global_step=global_step)
		)
		```
		
		Args:
		  learning_rate: A scalar `float32` or `float64` `Tensor` or a
		    Python number.  The initial learning rate.
		  global_step: A Python number.
		    Global step to use for the decay computation.  Must not be negative.
		  decay_steps: How often to apply decay.
		  decay_rate: A Python number.  The decay rate.
		  staircase: Whether to apply decay in a discrete staircase, as opposed to
		    continuous, fashion.
		  name: String.  Optional name of the operation.  Defaults to
		    'InverseTimeDecay'.
		
		Returns:
		  A scalar `Tensor` of the same type as `learning_rate`.  The decayed
		  learning rate.
		
		Raises:
		  ValueError: if `global_step` is not supplied.
	**/
	static public function inverse_time_decay(learning_rate:Dynamic, global_step:Dynamic, decay_steps:Dynamic, decay_rate:Dynamic, ?staircase:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Finds the filename of latest saved checkpoint file.
		
		Args:
		  checkpoint_dir: Directory where the variables were saved.
		  latest_filename: Optional name for the protocol buffer file that
		    contains the list of most recent checkpoint filenames.
		    See the corresponding argument to `Saver.save()`.
		
		Returns:
		  The full path to the latest checkpoint or `None` if no checkpoint was found.
	**/
	static public function latest_checkpoint(checkpoint_dir:Dynamic, ?latest_filename:Dynamic):Dynamic;
	/**
		Returns tensor `num_epochs` times and then raises an `OutOfRange` error.
		
		Note: creates local counter `epochs`. Use `local_variables_initializer()` to
		initialize local variables.
		
		Args:
		  tensor: Any `Tensor`.
		  num_epochs: A positive integer (optional).  If specified, limits the number
		    of steps the output tensor may be evaluated.
		  name: A name for the operations (optional).
		
		Returns:
		  tensor or `OutOfRange`.
		
		Raises:
		  ValueError: if `num_epochs` is invalid.
	**/
	static public function limit_epochs(tensor:Dynamic, ?num_epochs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Save the list of files matching pattern, so it is only computed once.
		
		Args:
		  pattern: A file pattern (glob), or 1D tensor of file patterns.
		  name: A name for the operations (optional).
		
		Returns:
		  A variable that is initialized to the list of files matching the pattern(s).
	**/
	static public function match_filenames_once(pattern:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Conditionally creates batches of tensors based on `keep_input`.
		
		See docstring in `batch` for more details.
		
		Args:
		  tensors: The list or dictionary of tensors to enqueue.
		  keep_input: A `bool` Tensor.  This tensor controls whether the input is
		    added to the queue or not.  If it is a scalar and evaluates `True`, then
		    `tensors` are all added to the queue. If it is a vector and `enqueue_many`
		    is `True`, then each example is added to the queue only if the
		    corresponding value in `keep_input` is `True`. This tensor essentially
		    acts as a filtering mechanism.
		  batch_size: The new batch size pulled from the queue.
		  num_threads: The number of threads enqueuing `tensors`.  The batching will
		    be nondeterministic if `num_threads > 1`.
		  capacity: An integer. The maximum number of elements in the queue.
		  enqueue_many: Whether each tensor in `tensors` is a single example.
		  shapes: (Optional) The shapes for each example.  Defaults to the
		    inferred shapes for `tensors`.
		  dynamic_pad: Boolean.  Allow variable dimensions in input shapes.
		    The given dimensions are padded upon dequeue so that tensors within a
		    batch have the same shapes.
		  allow_smaller_final_batch: (Optional) Boolean. If `True`, allow the final
		    batch to be smaller if there are insufficient items left in the queue.
		  shared_name: (Optional). If set, this queue will be shared under the given
		    name across multiple sessions.
		  name: (Optional) A name for the operations.
		
		Returns:
		  A list or dictionary of tensors with the same types as `tensors`.
		
		Raises:
		  ValueError: If the `shapes` are not specified, and cannot be
		    inferred from the elements of `tensors`.
	**/
	static public function maybe_batch(tensors:Dynamic, keep_input:Dynamic, batch_size:Dynamic, ?num_threads:Dynamic, ?capacity:Dynamic, ?enqueue_many:Dynamic, ?shapes:Dynamic, ?dynamic_pad:Dynamic, ?allow_smaller_final_batch:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Runs a list of tensors to conditionally fill a queue to create batches.
		
		See docstring in `batch_join` for more details.
		
		Args:
		  tensors_list: A list of tuples or dictionaries of tensors to enqueue.
		  keep_input: A `bool` Tensor.  This tensor controls whether the input is
		    added to the queue or not.  If it is a scalar and evaluates `True`, then
		    `tensors` are all added to the queue. If it is a vector and `enqueue_many`
		    is `True`, then each example is added to the queue only if the
		    corresonding value in `keep_input` is `True`. This tensor essentially acts
		    as a filtering mechanism.
		  batch_size: An integer. The new batch size pulled from the queue.
		  capacity: An integer. The maximum number of elements in the queue.
		  enqueue_many: Whether each tensor in `tensor_list_list` is a single
		    example.
		  shapes: (Optional) The shapes for each example.  Defaults to the
		    inferred shapes for `tensor_list_list[i]`.
		  dynamic_pad: Boolean.  Allow variable dimensions in input shapes.
		    The given dimensions are padded upon dequeue so that tensors within a
		    batch have the same shapes.
		  allow_smaller_final_batch: (Optional) Boolean. If `True`, allow the final
		    batch to be smaller if there are insufficient items left in the queue.
		  shared_name: (Optional) If set, this queue will be shared under the given
		    name across multiple sessions.
		  name: (Optional) A name for the operations.
		
		Returns:
		  A list or dictionary of tensors with the same number and types as
		  `tensors_list[i]`.
		
		Raises:
		  ValueError: If the `shapes` are not specified, and cannot be
		    inferred from the elements of `tensor_list_list`.
	**/
	static public function maybe_batch_join(tensors_list:Dynamic, keep_input:Dynamic, batch_size:Dynamic, ?capacity:Dynamic, ?enqueue_many:Dynamic, ?shapes:Dynamic, ?dynamic_pad:Dynamic, ?allow_smaller_final_batch:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates batches by randomly shuffling conditionally-enqueued tensors.
		
		See docstring in `shuffle_batch` for more details.
		
		Args:
		  tensors: The list or dictionary of tensors to enqueue.
		  batch_size: The new batch size pulled from the queue.
		  capacity: An integer. The maximum number of elements in the queue.
		  min_after_dequeue: Minimum number elements in the queue after a
		    dequeue, used to ensure a level of mixing of elements.
		  keep_input: A `bool` Tensor.  This tensor controls whether the input is
		    added to the queue or not.  If it is a scalar and evaluates `True`, then
		    `tensors` are all added to the queue. If it is a vector and `enqueue_many`
		    is `True`, then each example is added to the queue only if the
		    corresonding value in `keep_input` is `True`. This tensor essentially acts
		    as a filtering mechanism.
		  num_threads: The number of threads enqueuing `tensor_list`.
		  seed: Seed for the random shuffling within the queue.
		  enqueue_many: Whether each tensor in `tensor_list` is a single example.
		  shapes: (Optional) The shapes for each example.  Defaults to the
		    inferred shapes for `tensor_list`.
		  allow_smaller_final_batch: (Optional) Boolean. If `True`, allow the final
		    batch to be smaller if there are insufficient items left in the queue.
		  shared_name: (Optional) If set, this queue will be shared under the given
		    name across multiple sessions.
		  name: (Optional) A name for the operations.
		
		Returns:
		  A list or dictionary of tensors with the types as `tensors`.
		
		Raises:
		  ValueError: If the `shapes` are not specified, and cannot be
		    inferred from the elements of `tensors`.
	**/
	static public function maybe_shuffle_batch(tensors:Dynamic, batch_size:Dynamic, capacity:Dynamic, min_after_dequeue:Dynamic, keep_input:Dynamic, ?num_threads:Dynamic, ?seed:Dynamic, ?enqueue_many:Dynamic, ?shapes:Dynamic, ?allow_smaller_final_batch:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Create batches by randomly shuffling conditionally-enqueued tensors.
		
		See docstring in `shuffle_batch_join` for more details.
		
		Args:
		  tensors_list: A list of tuples or dictionaries of tensors to enqueue.
		  batch_size: An integer. The new batch size pulled from the queue.
		  capacity: An integer. The maximum number of elements in the queue.
		  min_after_dequeue: Minimum number elements in the queue after a
		    dequeue, used to ensure a level of mixing of elements.
		  keep_input: A `bool` Tensor.  This tensor controls whether the input is
		    added to the queue or not.  If it is a scalar and evaluates `True`, then
		    `tensors` are all added to the queue. If it is a vector and `enqueue_many`
		    is `True`, then each example is added to the queue only if the
		    corresonding value in `keep_input` is `True`. This tensor essentially acts
		    as a filtering mechanism.
		  seed: Seed for the random shuffling within the queue.
		  enqueue_many: Whether each tensor in `tensor_list_list` is a single
		    example.
		  shapes: (Optional) The shapes for each example.  Defaults to the
		    inferred shapes for `tensors_list[i]`.
		  allow_smaller_final_batch: (Optional) Boolean. If `True`, allow the final
		    batch to be smaller if there are insufficient items left in the queue.
		  shared_name: (optional). If set, this queue will be shared under the given
		    name across multiple sessions.
		  name: (Optional) A name for the operations.
		
		Returns:
		  A list or dictionary of tensors with the same number and types as
		  `tensors_list[i]`.
		
		Raises:
		  ValueError: If the `shapes` are not specified, and cannot be
		    inferred from the elements of `tensors_list`.
	**/
	static public function maybe_shuffle_batch_join(tensors_list:Dynamic, batch_size:Dynamic, capacity:Dynamic, min_after_dequeue:Dynamic, keep_input:Dynamic, ?seed:Dynamic, ?enqueue_many:Dynamic, ?shapes:Dynamic, ?allow_smaller_final_batch:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies natural exponential decay to the initial learning rate.
		
		When training a model, it is often recommended to lower the learning rate as
		the training progresses.  This function applies an exponential decay function
		to a provided initial learning rate.  It requires an `global_step` value to
		compute the decayed learning rate.  You can just pass a TensorFlow variable
		that you increment at each training step.
		
		The function returns the decayed learning rate.  It is computed as:
		
		```python
		decayed_learning_rate = learning_rate * exp(-decay_rate * global_step)
		```
		
		Example: decay exponentially with a base of 0.96:
		
		```python
		...
		global_step = tf.Variable(0, trainable=False)
		learning_rate = 0.1
		k = 0.5
		learning_rate = tf.train.exponential_time_decay(learning_rate, global_step, k)
		
		# Passing global_step to minimize() will increment it at each step.
		learning_step = (
		    tf.train.GradientDescentOptimizer(learning_rate)
		    .minimize(...my loss..., global_step=global_step)
		)
		```
		
		Args:
		  learning_rate: A scalar `float32` or `float64` `Tensor` or a
		    Python number.  The initial learning rate.
		  global_step: A Python number.
		    Global step to use for the decay computation.  Must not be negative.
		  decay_steps: How often to apply decay.
		  decay_rate: A Python number.  The decay rate.
		  staircase: Whether to apply decay in a discrete staircase, as opposed to
		    continuous, fashion.
		  name: String.  Optional name of the operation.  Defaults to
		    'ExponentialTimeDecay'.
		
		Returns:
		  A scalar `Tensor` of the same type as `learning_rate`.  The decayed
		  learning rate.
		
		Raises:
		  ValueError: if `global_step` is not supplied.
	**/
	static public function natural_exp_decay(learning_rate:Dynamic, global_step:Dynamic, decay_steps:Dynamic, decay_rate:Dynamic, ?staircase:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Piecewise constant from boundaries and interval values.
		
		Example: use a learning rate that's 1.0 for the first 100000 steps, 0.5
		  for steps 100001 to 110000, and 0.1 for any additional steps.
		
		```python
		global_step = tf.Variable(0, trainable=False)
		boundaries = [100000, 110000]
		values = [1.0, 0.5, 0.1]
		learning_rate = tf.train.piecewise_constant(global_step, boundaries, values)
		
		# Later, whenever we perform an optimization step, we increment global_step.
		```
		
		Args:
		  x: A 0-D scalar `Tensor`. Must be one of the following types: `float32`,
		    `float64`, `uint8`, `int8`, `int16`, `int32`, `int64`.
		  boundaries: A list of `Tensor`s or `int`s or `float`s with strictly
		    increasing entries, and with all elements having the same type as `x`.
		  values: A list of `Tensor`s or float`s or `int`s that specifies the values
		    for the intervals defined by `boundaries`. It should have one more element
		    than `boundaries`, and all elements should have the same type.
		  name: A string. Optional name of the operation. Defaults to
		    'PiecewiseConstant'.
		
		Returns:
		  A 0-D Tensor. Its value is `values[0]` when `x <= boundaries[0]`,
		  `values[1]` when `x > boundaries[0]` and `x <= boundaries[1]`, ...,
		  and values[-1] when `x > boundaries[-1]`.
		
		Raises:
		  ValueError: if types of `x` and `buondaries` do not match, or types of all
		      `values` do not match.
	**/
	static public function piecewise_constant(x:Dynamic, boundaries:Dynamic, values:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies a polynomial decay to the learning rate.
		
		It is commonly observed that a monotonically decreasing learning rate, whose
		degree of change is carefully chosen, results in a better performing model.
		This function applies a polynomial decay function to a provided initial
		`learning_rate` to reach an `end_learning_rate` in the given `decay_steps`.
		
		It requires a `global_step` value to compute the decayed learning rate.  You
		can just pass a TensorFlow variable that you increment at each training step.
		
		The function returns the decayed learning rate.  It is computed as:
		
		```python
		global_step = min(global_step, decay_steps)
		decayed_learning_rate = (learning_rate - end_learning_rate) *
		                        (1 - global_step / decay_steps) ^ (power) +
		                        end_learning_rate
		
		```
		
		If `cycle` is True then a multiple of `decay_steps` is used, the first one
		that is bigger than `global_steps`.
		
		```python
		decay_steps = decay_steps * ceil(global_step / decay_steps)
		decayed_learning_rate = (learning_rate - end_learning_rate) *
		                        (1 - global_step / decay_steps) ^ (power) +
		                        end_learning_rate
		
		```
		
		Example: decay from 0.1 to 0.01 in 10000 steps using sqrt (i.e. power=0.5):
		
		```python
		...
		global_step = tf.Variable(0, trainable=False)
		starter_learning_rate = 0.1
		end_learning_rate = 0.01
		decay_steps = 10000
		learning_rate = tf.train.polynomial_decay(starter_learning_rate, global_step,
		                                          decay_steps, end_learning_rate,
		                                          power=0.5)
		# Passing global_step to minimize() will increment it at each step.
		learning_step = (
		    tf.train.GradientDescentOptimizer(learning_rate)
		    .minimize(...my loss..., global_step=global_step)
		)
		```
		
		Args:
		  learning_rate: A scalar `float32` or `float64` `Tensor` or a
		    Python number.  The initial learning rate.
		  global_step: A scalar `int32` or `int64` `Tensor` or a Python number.
		    Global step to use for the decay computation.  Must not be negative.
		  decay_steps: A scalar `int32` or `int64` `Tensor` or a Python number.
		    Must be positive.  See the decay computation above.
		  end_learning_rate: A scalar `float32` or `float64` `Tensor` or a
		    Python number.  The minimal end learning rate.
		  power: A scalar `float32` or `float64` `Tensor` or a
		    Python number.  The power of the polynomial. Defaults to linear, 1.0.
		  cycle: A boolean, whether or not it should cycle beyond decay_steps.
		  name: String.  Optional name of the operation. Defaults to
		    'PolynomialDecay'.
		
		Returns:
		  A scalar `Tensor` of the same type as `learning_rate`.  The decayed
		  learning rate.
		
		Raises:
		  ValueError: if `global_step` is not supplied.
	**/
	static public function polynomial_decay(learning_rate:Dynamic, global_step:Dynamic, decay_steps:Dynamic, ?end_learning_rate:Dynamic, ?power:Dynamic, ?cycle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Produces the integers from 0 to limit-1 in a queue.
		
		Note: if `num_epochs` is not `None`, this function creates local counter
		`epochs`. Use `local_variables_initializer()` to initialize local variables.
		
		Args:
		  limit: An int32 scalar tensor.
		  num_epochs: An integer (optional). If specified, `range_input_producer`
		    produces each integer `num_epochs` times before generating an
		    OutOfRange error. If not specified, `range_input_producer` can cycle
		    through the integers an unlimited number of times.
		  shuffle: Boolean. If true, the integers are randomly shuffled within each
		    epoch.
		  seed: An integer (optional). Seed used if shuffle == True.
		  capacity: An integer. Sets the queue capacity.
		  shared_name: (optional). If set, this queue will be shared under the given
		    name across multiple sessions.
		  name: A name for the operations (optional).
		
		Returns:
		  A Queue with the output integers.  A `QueueRunner` for the Queue
		  is added to the current `Graph`'s `QUEUE_RUNNER` collection.
	**/
	static public function range_input_producer(limit:Dynamic, ?num_epochs:Dynamic, ?shuffle:Dynamic, ?seed:Dynamic, ?capacity:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return a `device function` to use when building a Graph for replicas.
		
		Device Functions are used in `with tf.device(device_function):` statement to
		automatically assign devices to `Operation` objects as they are constructed,
		Device constraints are added from the inner-most context first, working
		outwards. The merging behavior adds constraints to fields that are yet unset
		by a more inner context. Currently the fields are (job, task, cpu/gpu).
		
		If `cluster` is `None`, and `ps_tasks` is 0, the returned function is a no-op.
		Otherwise, the value of `ps_tasks` is derived from `cluster`.
		
		By default, only Variable ops are placed on ps tasks, and the placement
		strategy is round-robin over all ps tasks. A custom `ps_strategy` may be used
		to do more intelligent placement, such as
		`tf.contrib.training.GreedyLoadBalancingStrategy`.
		
		For example,
		
		```python
		# To build a cluster with two ps jobs on hosts ps0 and ps1, and 3 worker
		# jobs on hosts worker0, worker1 and worker2.
		cluster_spec = {
		    "ps": ["ps0:2222", "ps1:2222"],
		    "worker": ["worker0:2222", "worker1:2222", "worker2:2222"]}
		with tf.device(tf.train.replica_device_setter(cluster=cluster_spec)):
		  # Build your graph
		  v1 = tf.Variable(...)  # assigned to /job:ps/task:0
		  v2 = tf.Variable(...)  # assigned to /job:ps/task:1
		  v3 = tf.Variable(...)  # assigned to /job:ps/task:0
		# Run compute
		```
		
		Args:
		  ps_tasks: Number of tasks in the `ps` job.  Ignored if `cluster` is
		    provided.
		  ps_device: String.  Device of the `ps` job.  If empty no `ps` job is used.
		    Defaults to `ps`.
		  worker_device: String.  Device of the `worker` job.  If empty no `worker`
		    job is used.
		  merge_devices: `Boolean`. If `True`, merges or only sets a device if the
		    device constraint is completely unset. merges device specification rather
		    than overriding them.
		  cluster: `ClusterDef` proto or `ClusterSpec`.
		  ps_ops: List of strings representing `Operation` types that need to be
		    placed on `ps` devices.  If `None`, defaults to `["Variable"]`.
		  ps_strategy: A callable invoked for every ps `Operation` (i.e. matched by
		    `ps_ops`), that takes the `Operation` and returns the ps task index to
		    use.  If `None`, defaults to a round-robin strategy across all `ps`
		    devices.
		
		Returns:
		  A function to pass to `tf.device()`.
		
		Raises:
		  TypeError if `cluster` is not a dictionary or `ClusterDef` protocol buffer,
		  or if `ps_strategy` is provided but not a callable.
	**/
	static public function replica_device_setter(?ps_tasks:Dynamic, ?ps_device:Dynamic, ?worker_device:Dynamic, ?merge_devices:Dynamic, ?cluster:Dynamic, ?ps_ops:Dynamic, ?ps_strategy:Dynamic):Dynamic;
	/**
		Computes fingerprints of the input strings.
		
		Args:
		  input: A `Tensor` of type `string`.
		    vector of strings to compute fingerprints on.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
		  a (N,2) shaped matrix where N is the number of elements in the input
		  vector. Each row contains the low and high parts of the fingerprint.
	**/
	static public function sdca_fprint(input:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Distributed version of Stochastic Dual Coordinate Ascent (SDCA) optimizer for
		
		linear models with L1 + L2 regularization. As global optimization objective is
		strongly-convex, the optimizer optimizes the dual objective at each step. The
		optimizer applies each update one example at a time. Examples are sampled
		uniformly, and the optimizer is learning rate free and enjoys linear convergence
		rate.
		
		[Proximal Stochastic Dual Coordinate Ascent](http://arxiv.org/pdf/1211.2717v1.pdf).<br>
		Shai Shalev-Shwartz, Tong Zhang. 2012
		
		$$Loss Objective = \sum f_{i} (wx_{i}) + (l2 / 2) * |w|^2 + l1 * |w|$$
		
		[Adding vs. Averaging in Distributed Primal-Dual Optimization](http://arxiv.org/abs/1502.03508).<br>
		Chenxin Ma, Virginia Smith, Martin Jaggi, Michael I. Jordan,
		Peter Richtarik, Martin Takac. 2015
		
		[Stochastic Dual Coordinate Ascent with Adaptive Probabilities](https://arxiv.org/abs/1502.08053).<br>
		Dominik Csiba, Zheng Qu, Peter Richtarik. 2015
		
		Args:
		  sparse_example_indices: A list of `Tensor` objects with type `int64`.
		    a list of vectors which contain example indices.
		  sparse_feature_indices: A list with the same length as `sparse_example_indices` of `Tensor` objects with type `int64`.
		    a list of vectors which contain feature indices.
		  sparse_feature_values: A list of `Tensor` objects with type `float32`.
		    a list of vectors which contains feature value
		    associated with each feature group.
		  dense_features: A list of `Tensor` objects with type `float32`.
		    a list of matrices which contains the dense feature values.
		  example_weights: A `Tensor` of type `float32`.
		    a vector which contains the weight associated with each
		    example.
		  example_labels: A `Tensor` of type `float32`.
		    a vector which contains the label/target associated with each
		    example.
		  sparse_indices: A list with the same length as `sparse_example_indices` of `Tensor` objects with type `int64`.
		    a list of vectors where each value is the indices which has
		    corresponding weights in sparse_weights. This field maybe omitted for the
		    dense approach.
		  sparse_weights: A list with the same length as `sparse_example_indices` of `Tensor` objects with type `float32`.
		    a list of vectors where each value is the weight associated with
		    a sparse feature group.
		  dense_weights: A list with the same length as `dense_features` of `Tensor` objects with type `float32`.
		    a list of vectors where the values are the weights associated
		    with a dense feature group.
		  example_state_data: A `Tensor` of type `float32`.
		    a list of vectors containing the example state data.
		  loss_type: A `string` from: `"logistic_loss", "squared_loss", "hinge_loss", "smooth_hinge_loss"`.
		    Type of the primal loss. Currently SdcaSolver supports logistic,
		    squared and hinge losses.
		  l1: A `float`. Symmetric l1 regularization strength.
		  l2: A `float`. Symmetric l2 regularization strength.
		  num_loss_partitions: An `int` that is `>= 1`.
		    Number of partitions of the global loss function.
		  num_inner_iterations: An `int` that is `>= 1`.
		    Number of iterations per mini-batch.
		  adaptative: An optional `bool`. Defaults to `False`.
		    Whether to use Adapative SDCA for the inner loop.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (out_example_state_data, out_delta_sparse_weights, out_delta_dense_weights).
		
		  out_example_state_data: A `Tensor` of type `float32`. a list of vectors containing the updated example state
		    data.
		  out_delta_sparse_weights: A list with the same length as `sparse_example_indices` of `Tensor` objects with type `float32`. a list of vectors where each value is the delta
		    weights associated with a sparse feature group.
		  out_delta_dense_weights: A list with the same length as `dense_features` of `Tensor` objects with type `float32`. a list of vectors where the values are the delta
		    weights associated with a dense feature group.
	**/
	static public function sdca_optimizer(sparse_example_indices:Dynamic, sparse_feature_indices:Dynamic, sparse_feature_values:Dynamic, dense_features:Dynamic, example_weights:Dynamic, example_labels:Dynamic, sparse_indices:Dynamic, sparse_weights:Dynamic, dense_weights:Dynamic, example_state_data:Dynamic, loss_type:Dynamic, l1:Dynamic, l2:Dynamic, num_loss_partitions:Dynamic, num_inner_iterations:Dynamic, ?adaptative:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Applies L1 regularization shrink step on the parameters.
		
		Args:
		  weights: A list of `Tensor` objects with type mutable `float32`.
		    a list of vectors where each value is the weight associated with a
		    feature group.
		  l1: A `float`. Symmetric l1 regularization strength.
		  l2: A `float`.
		    Symmetric l2 regularization strength. Should be a positive float.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function sdca_shrink_l1(weights:Dynamic, l1:Dynamic, l2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates batches by randomly shuffling tensors.
		
		This function adds the following to the current `Graph`:
		
		* A shuffling queue into which tensors from `tensors` are enqueued.
		* A `dequeue_many` operation to create batches from the queue.
		* A `QueueRunner` to `QUEUE_RUNNER` collection, to enqueue the tensors
		  from `tensors`.
		
		If `enqueue_many` is `False`, `tensors` is assumed to represent a
		single example.  An input tensor with shape `[x, y, z]` will be output
		as a tensor with shape `[batch_size, x, y, z]`.
		
		If `enqueue_many` is `True`, `tensors` is assumed to represent a
		batch of examples, where the first dimension is indexed by example,
		and all members of `tensors` should have the same size in the
		first dimension.  If an input tensor has shape `[*, x, y, z]`, the
		output will have shape `[batch_size, x, y, z]`.
		
		The `capacity` argument controls the how long the prefetching is allowed to
		grow the queues.
		
		The returned operation is a dequeue operation and will throw
		`tf.errors.OutOfRangeError` if the input queue is exhausted. If this
		operation is feeding another input queue, its queue runner will catch
		this exception, however, if this operation is used in your main thread
		you are responsible for catching this yourself.
		
		For example:
		
		```python
		# Creates batches of 32 images and 32 labels.
		image_batch, label_batch = tf.train.shuffle_batch(
		      [single_image, single_label],
		      batch_size=32,
		      num_threads=4,
		      capacity=50000,
		      min_after_dequeue=10000)
		```
		
		*N.B.:* You must ensure that either (i) the `shapes` argument is
		passed, or (ii) all of the tensors in `tensors` must have
		fully-defined shapes. `ValueError` will be raised if neither of
		these conditions holds.
		
		If `allow_smaller_final_batch` is `True`, a smaller batch value than
		`batch_size` is returned when the queue is closed and there are not enough
		elements to fill the batch, otherwise the pending elements are discarded.
		In addition, all output tensors' static shapes, as accessed via the
		`get_shape` method will have a first `Dimension` value of `None`, and
		operations that depend on fixed batch_size would fail.
		
		Args:
		  tensors: The list or dictionary of tensors to enqueue.
		  batch_size: The new batch size pulled from the queue.
		  capacity: An integer. The maximum number of elements in the queue.
		  min_after_dequeue: Minimum number elements in the queue after a
		    dequeue, used to ensure a level of mixing of elements.
		  num_threads: The number of threads enqueuing `tensor_list`.
		  seed: Seed for the random shuffling within the queue.
		  enqueue_many: Whether each tensor in `tensor_list` is a single example.
		  shapes: (Optional) The shapes for each example.  Defaults to the
		    inferred shapes for `tensor_list`.
		  allow_smaller_final_batch: (Optional) Boolean. If `True`, allow the final
		    batch to be smaller if there are insufficient items left in the queue.
		  shared_name: (Optional) If set, this queue will be shared under the given
		    name across multiple sessions.
		  name: (Optional) A name for the operations.
		
		Returns:
		  A list or dictionary of tensors with the types as `tensors`.
		
		Raises:
		  ValueError: If the `shapes` are not specified, and cannot be
		    inferred from the elements of `tensors`.
	**/
	static public function shuffle_batch(tensors:Dynamic, batch_size:Dynamic, capacity:Dynamic, min_after_dequeue:Dynamic, ?num_threads:Dynamic, ?seed:Dynamic, ?enqueue_many:Dynamic, ?shapes:Dynamic, ?allow_smaller_final_batch:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Create batches by randomly shuffling tensors.
		
		The `tensors_list` argument is a list of tuples of tensors, or a list of
		dictionaries of tensors.  Each element in the list is treated similarly
		to the `tensors` argument of `tf.train.shuffle_batch()`.
		
		This version enqueues a different list of tensors in different threads.
		It adds the following to the current `Graph`:
		
		* A shuffling queue into which tensors from `tensors_list` are enqueued.
		* A `dequeue_many` operation to create batches from the queue.
		* A `QueueRunner` to `QUEUE_RUNNER` collection, to enqueue the tensors
		  from `tensors_list`.
		
		`len(tensors_list)` threads will be started, with thread `i` enqueuing
		the tensors from `tensors_list[i]`. `tensors_list[i1][j]` must match
		`tensors_list[i2][j]` in type and shape, except in the first dimension if
		`enqueue_many` is true.
		
		If `enqueue_many` is `False`, each `tensors_list[i]` is assumed
		to represent a single example.  An input tensor with shape `[x, y, z]`
		will be output as a tensor with shape `[batch_size, x, y, z]`.
		
		If `enqueue_many` is `True`, `tensors_list[i]` is assumed to
		represent a batch of examples, where the first dimension is indexed
		by example, and all members of `tensors_list[i]` should have the
		same size in the first dimension.  If an input tensor has shape `[*, x,
		y, z]`, the output will have shape `[batch_size, x, y, z]`.
		
		The `capacity` argument controls the how long the prefetching is allowed to
		grow the queues.
		
		The returned operation is a dequeue operation and will throw
		`tf.errors.OutOfRangeError` if the input queue is exhausted. If this
		operation is feeding another input queue, its queue runner will catch
		this exception, however, if this operation is used in your main thread
		you are responsible for catching this yourself.
		
		If `allow_smaller_final_batch` is `True`, a smaller batch value than
		`batch_size` is returned when the queue is closed and there are not enough
		elements to fill the batch, otherwise the pending elements are discarded.
		In addition, all output tensors' static shapes, as accessed via the
		`get_shape` method will have a first `Dimension` value of `None`, and
		operations that depend on fixed batch_size would fail.
		
		Args:
		  tensors_list: A list of tuples or dictionaries of tensors to enqueue.
		  batch_size: An integer. The new batch size pulled from the queue.
		  capacity: An integer. The maximum number of elements in the queue.
		  min_after_dequeue: Minimum number elements in the queue after a
		    dequeue, used to ensure a level of mixing of elements.
		  seed: Seed for the random shuffling within the queue.
		  enqueue_many: Whether each tensor in `tensor_list_list` is a single
		    example.
		  shapes: (Optional) The shapes for each example.  Defaults to the
		    inferred shapes for `tensors_list[i]`.
		  allow_smaller_final_batch: (Optional) Boolean. If `True`, allow the final
		    batch to be smaller if there are insufficient items left in the queue.
		  shared_name: (optional). If set, this queue will be shared under the given
		    name across multiple sessions.
		  name: (Optional) A name for the operations.
		
		Returns:
		  A list or dictionary of tensors with the same number and types as
		  `tensors_list[i]`.
		
		Raises:
		  ValueError: If the `shapes` are not specified, and cannot be
		    inferred from the elements of `tensors_list`.
	**/
	static public function shuffle_batch_join(tensors_list:Dynamic, batch_size:Dynamic, capacity:Dynamic, min_after_dequeue:Dynamic, ?seed:Dynamic, ?enqueue_many:Dynamic, ?shapes:Dynamic, ?allow_smaller_final_batch:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Produces a slice of each `Tensor` in `tensor_list`.
		
		Implemented using a Queue -- a `QueueRunner` for the Queue
		is added to the current `Graph`'s `QUEUE_RUNNER` collection.
		
		Args:
		  tensor_list: A list of `Tensor` objects. Every `Tensor` in
		    `tensor_list` must have the same size in the first dimension.
		  num_epochs: An integer (optional). If specified, `slice_input_producer`
		    produces each slice `num_epochs` times before generating
		    an `OutOfRange` error. If not specified, `slice_input_producer` can cycle
		    through the slices an unlimited number of times.
		  shuffle: Boolean. If true, the integers are randomly shuffled within each
		    epoch.
		  seed: An integer (optional). Seed used if shuffle == True.
		  capacity: An integer. Sets the queue capacity.
		  shared_name: (optional). If set, this queue will be shared under the given
		    name across multiple sessions.
		  name: A name for the operations (optional).
		
		Returns:
		  A list of tensors, one for each element of `tensor_list`.  If the tensor
		  in `tensor_list` has shape `[N, a, b, .., z]`, then the corresponding output
		  tensor will have shape `[a, b, ..., z]`.
		
		Raises:
		  ValueError: if `slice_input_producer` produces nothing from `tensor_list`.
	**/
	static public function slice_input_producer(tensor_list:Dynamic, ?num_epochs:Dynamic, ?shuffle:Dynamic, ?seed:Dynamic, ?capacity:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Starts all queue runners collected in the graph.
		
		This is a companion method to `add_queue_runner()`.  It just starts
		threads for all queue runners collected in the graph.  It returns
		the list of all threads.
		
		Args:
		  sess: `Session` used to run the queue ops.  Defaults to the
		    default session.
		  coord: Optional `Coordinator` for coordinating the started threads.
		  daemon: Whether the threads should be marked as `daemons`, meaning
		    they don't block program exit.
		  start: Set to `False` to only create the threads, not start them.
		  collection: A `GraphKey` specifying the graph collection to
		    get the queue runners from.  Defaults to `GraphKeys.QUEUE_RUNNERS`.
		
		Raises:
		  ValueError: if `sess` is None and there isn't any default session.
		  TypeError: if `sess` is not a `tf.Session` object.
		
		Returns:
		  A list of threads.
	**/
	static public function start_queue_runners(?sess:Dynamic, ?coord:Dynamic, ?daemon:Dynamic, ?start:Dynamic, ?collection:Dynamic):Dynamic;
	/**
		Output strings (e.g. filenames) to a queue for an input pipeline.
		
		Note: if `num_epochs` is not `None`, this function creates local counter
		`epochs`. Use `local_variables_initializer()` to initialize local variables.
		
		Args:
		  string_tensor: A 1-D string tensor with the strings to produce.
		  num_epochs: An integer (optional). If specified, `string_input_producer`
		    produces each string from `string_tensor` `num_epochs` times before
		    generating an `OutOfRange` error. If not specified,
		    `string_input_producer` can cycle through the strings in `string_tensor`
		    an unlimited number of times.
		  shuffle: Boolean. If true, the strings are randomly shuffled within each
		    epoch.
		  seed: An integer (optional). Seed used if shuffle == True.
		  capacity: An integer. Sets the queue capacity.
		  shared_name: (optional). If set, this queue will be shared under the given
		    name across multiple sessions. All sessions open to the device which has
		    this queue will be able to access it via the shared_name. Using this in
		    a distributed setting means each name will only be seen by one of the
		    sessions which has access to this operation.
		  name: A name for the operations (optional).
		  cancel_op: Cancel op for the queue (optional).
		
		Returns:
		  A queue with the output strings.  A `QueueRunner` for the Queue
		  is added to the current `Graph`'s `QUEUE_RUNNER` collection.
		
		Raises:
		  ValueError: If the string_tensor is a null Python list.  At runtime,
		  will fail with an assertion if string_tensor becomes a null tensor.
	**/
	static public function string_input_producer(string_tensor:Dynamic, ?num_epochs:Dynamic, ?shuffle:Dynamic, ?seed:Dynamic, ?capacity:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?cancel_op:Dynamic):Dynamic;
	/**
		An iterator for reading `Event` protocol buffers from an event file.
		
		You can use this function to read events written to an event file. It returns
		a Python iterator that yields `Event` protocol buffers.
		
		Example: Print the contents of an events file.
		
		```python
		for e in tf.train.summary_iterator(path to events file):
		    print(e)
		```
		
		Example: Print selected summary values.
		
		```python
		# This example supposes that the events file contains summaries with a
		# summary value tag 'loss'.  These could have been added by calling
		# `add_summary()`, passing the output of a scalar summary op created with
		# with: `tf.summary.scalar('loss', loss_tensor)`.
		for e in tf.train.summary_iterator(path to events file):
		    for v in e.summary.value:
		        if v.tag == 'loss':
		            print(v.simple_value)
		```
		
		See the protocol buffer definitions of
		[Event](https://www.tensorflow.org/code/tensorflow/core/util/event.proto)
		and
		[Summary](https://www.tensorflow.org/code/tensorflow/core/framework/summary.proto)
		for more information about their attributes.
		
		Args:
		  path: The path to an event file created by a `SummaryWriter`.
		
		Yields:
		  `Event` protocol buffers.
	**/
	static public function summary_iterator(path:Dynamic):Dynamic;
	/**
		Updates the content of the 'checkpoint' file.
		
		This updates the checkpoint file containing a CheckpointState
		proto.
		
		Args:
		  save_dir: Directory where the model was saved.
		  model_checkpoint_path: The checkpoint file.
		  all_model_checkpoint_paths: List of strings.  Paths to all not-yet-deleted
		    checkpoints, sorted from oldest to newest.  If this is a non-empty list,
		    the last element must be equal to model_checkpoint_path.  These paths
		    are also saved in the CheckpointState proto.
		  latest_filename: Optional name of the checkpoint file.  Default to
		    'checkpoint'.
		
		Raises:
		  RuntimeError: If any of the model checkpoint paths conflict with the file
		    containing CheckpointSate.
	**/
	static public function update_checkpoint_state(save_dir:Dynamic, model_checkpoint_path:Dynamic, ?all_model_checkpoint_paths:Dynamic, ?latest_filename:Dynamic):Dynamic;
	/**
		Writes a graph proto to a file.
		
		The graph is written as a binary proto unless `as_text` is `True`.
		
		```python
		v = tf.Variable(0, name='my_variable')
		sess = tf.Session()
		tf.train.write_graph(sess.graph_def, '/tmp/my-model', 'train.pbtxt')
		```
		
		or
		
		```python
		v = tf.Variable(0, name='my_variable')
		sess = tf.Session()
		tf.train.write_graph(sess.graph, '/tmp/my-model', 'train.pbtxt')
		```
		
		Args:
		  graph_or_graph_def: A `Graph` or a `GraphDef` protocol buffer.
		  logdir: Directory where to write the graph. This can refer to remote
		    filesystems, such as Google Cloud Storage (GCS).
		  name: Filename for the graph.
		  as_text: If `True`, writes the graph as an ASCII proto.
		
		Returns:
		  The path of the output proto file.
	**/
	static public function write_graph(graph_or_graph_def:Dynamic, logdir:Dynamic, name:Dynamic, ?as_text:Dynamic):Dynamic;
}