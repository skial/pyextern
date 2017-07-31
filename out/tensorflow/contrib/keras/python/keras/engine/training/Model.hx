/* This file is generated, do not edit! */
package tensorflow.contrib.keras.python.keras.engine.training;
@:pythonImport("tensorflow.contrib.keras.python.keras.engine.training", "Model") extern class Model {
	/**
		Wrapper around self.call(), for handling internal references.
		
		If a Keras tensor is passed:
		    - We call self._add_inbound_node().
		    - If necessary, we `build` the layer to match
		        the shape of the input(s).
		    - We update the _keras_history of the output tensor(s)
		        with the current layer.
		        This is done as part of _add_inbound_node().
		
		Arguments:
		    inputs: Can be a tensor or list/tuple of tensors.
		    **kwargs: Additional keyword arguments to be passed to `call()`.
		
		Returns:
		    Output of the layer's `call` method.
		
		Raises:
		    ValueError: in case the layer is missing shape information
		        for its `build` call.
	**/
	public function __call__(inputs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __deepcopy__(memo:Dynamic):Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(inputs:Dynamic, outputs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(inputs:Dynamic, outputs:Dynamic, ?name:Dynamic):Void;
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
	/**
		Internal method to create an inbound node for the layer.
		
		Arguments:
		    input_tensors: list of input tensors.
		    output_tensors: list of output tensors.
		    input_masks: list of input masks (a mask can be a tensor, or None).
		    output_masks: list of output masks (a mask can be a tensor, or None).
		    arguments: dictionary of keyword arguments that were passed to the
		        `call` method of the layer at the call that created the node.
	**/
	public function _add_inbound_node(input_tensors:Dynamic, output_tensors:Dynamic, input_masks:Dynamic, output_masks:Dynamic, ?arguments:Dynamic):Dynamic;
	/**
		Checks compatibility between the layer and provided inputs.
		
		This checks that the tensor(s) `inputs` verify the input assumptions
		of the layer (if any). If not, a clear and actional exception gets raised.
		
		Arguments:
		    inputs: input tensor or list of input tensors.
		
		Raises:
		    ValueError: in case of mismatch between
		        the provided inputs and the expectations of the layer.
	**/
	public function _assert_input_compatibility(inputs:Dynamic):Dynamic;
	/**
		Computes the output shape of the layer.
		
		Assumes that the layer will be built
		to match that input shape provided.
		
		Arguments:
		    input_shape: Shape tuple (tuple of integers)
		        or list of shape tuples (one per output tensor of the layer).
		        Shape tuples can include None for free dimensions,
		        instead of an integer.
		
		Returns:
		    An input shape tuple.
	**/
	public function _compute_output_shape(input_shape:Dynamic):Dynamic;
	/**
		Abstract fit function for `f(ins)`.
		
		Assume that f returns a list, labeled by out_labels.
		
		Arguments:
		    f: Keras function returning a list of tensors
		    ins: list of tensors to be fed to `f`
		    out_labels: list of strings, display names of
		        the outputs of `f`
		    batch_size: integer batch size
		    epochs: number of times to iterate over the data
		    verbose: verbosity mode, 0, 1 or 2
		    callbacks: list of callbacks to be called during training
		    val_f: Keras function to call for validation
		    val_ins: list of tensors to be fed to `val_f`
		    shuffle: whether to shuffle the data at the beginning of each epoch
		    callback_metrics: list of strings, the display names of the metrics
		        passed to the callbacks. They should be the
		        concatenation of list the display names of the outputs of
		         `f` and the list of display names of the outputs of `f_val`.
		    initial_epoch: epoch at which to start training
		        (useful for resuming a previous training run)
		
		Returns:
		    `History` object.
	**/
	public function _fit_loop(f:Dynamic, ins:Dynamic, ?out_labels:Dynamic, ?batch_size:Dynamic, ?epochs:Dynamic, ?verbose:Dynamic, ?callbacks:Dynamic, ?val_f:Dynamic, ?val_ins:Dynamic, ?shuffle:Dynamic, ?callback_metrics:Dynamic, ?initial_epoch:Dynamic):Dynamic;
	/**
		Retrieves an attribute (e.g. input_tensors) from a node.
		
		This is used to implement the methods:
		    - get_input_shape_at
		    - get_output_shape_at
		    - get_input_at
		    etc...
		
		Arguments:
		    node_index: Integer index of the node from which
		        to retrieve the attribute.
		    attr: Exact node attribute name.
		    attr_name: Human-readable attribute name, for error messages.
		
		Returns:
		    The layer's attribute `attr` at the node of index `node_index`.
		
		Raises:
		    RuntimeError: If the layer has no inbound nodes.
		    ValueError: If the index is does not match any node.
	**/
	public function _get_node_attribute_at_index(node_index:Dynamic, attr:Dynamic, attr_name:Dynamic):Dynamic;
	public function _make_predict_function():Dynamic;
	public function _make_test_function():Dynamic;
	public function _make_train_function():Dynamic;
	/**
		Abstract method to loop over some data in batches.
		
		Arguments:
		    f: Keras function returning a list of tensors.
		    ins: list of tensors to be fed to `f`.
		    batch_size: integer batch size.
		    verbose: verbosity mode.
		
		Returns:
		    Array of predictions (if the model has a single output)
		    or list of arrays of predictions
		    (if the model has multiple outputs).
	**/
	public function _predict_loop(f:Dynamic, ins:Dynamic, ?batch_size:Dynamic, ?verbose:Dynamic):Dynamic;
	public function _set_scope(?scope:Dynamic):Dynamic;
	public function _standardize_user_data(x:Dynamic, y:Dynamic, ?sample_weight:Dynamic, ?class_weight:Dynamic, ?check_batch_axis:Dynamic, ?batch_size:Dynamic):Dynamic;
	/**
		Abstract method to loop over some data in batches.
		
		Arguments:
		    f: Keras function returning a list of tensors.
		    ins: list of tensors to be fed to `f`.
		    batch_size: integer batch size.
		    verbose: verbosity mode.
		
		Returns:
		    Scalar loss (if the model has a single output and no metrics)
		    or list of scalars (if the model has multiple outputs
		    and/or metrics). The attribute `model.metrics_names` will give you
		    the display labels for the scalar outputs.
	**/
	public function _test_loop(f:Dynamic, ins:Dynamic, ?batch_size:Dynamic, ?verbose:Dynamic):Dynamic;
	/**
		Util hared between different serialization methods.
		
		Returns:
		    Model config with Keras version information added.
	**/
	public function _updated_config():Dynamic;
	/**
		Add loss tensor(s), potentially dependent on layer inputs.
		
		Some losses (for instance, activity regularization losses) may be dependent
		on the inputs passed when calling a layer. Hence, when reusing a same layer
		on different inputs `a` and `b`, some entries in `layer.losses` may be
		dependent on `a` and some on `b`. This method automatically keeps track
		of dependencies.
		
		The `get_losses_for` method allows to retrieve the losses relevant to a
		specific set of inputs.
		
		Arguments:
		  losses: Loss tensor, or list/tuple of tensors.
		  inputs: Optional input tensor(s) that the loss(es) depend on. Must
		    match the `inputs` argument passed to the `__call__` method at the time
		    the losses are created. If `None` is passed, the losses are assumed
		    to be unconditional, and will apply across all dataflows of the layer
		    (e.g. weight regularization losses).
	**/
	public function add_loss(losses:Dynamic, ?inputs:Dynamic):Dynamic;
	/**
		Add update op(s), potentially dependent on layer inputs.
		
		Weight updates (for instance, the updates of the moving mean and variance
		in a BatchNormalization layer) may be dependent on the inputs passed
		when calling a layer. Hence, when reusing a same layer on
		different inputs `a` and `b`, some entries in `layer.updates` may be
		dependent on `a` and some on `b`. This method automatically keeps track
		of dependencies.
		
		The `get_updates_for` method allows to retrieve the updates relevant to a
		specific set of inputs.
		
		Arguments:
		  updates: Update op, or list/tuple of update ops.
		  inputs: Optional input tensor(s) that the update(s) depend on. Must
		    match the `inputs` argument passed to the `__call__` method at the time
		    the updates are created. If `None` is passed, the updates are assumed
		    to be unconditional, and will apply across all dataflows of the layer.
	**/
	public function add_update(updates:Dynamic, ?inputs:Dynamic):Dynamic;
	/**
		Adds a new variable to the layer, or gets an existing one; returns it.
		
		Arguments:
		  name: variable name.
		  shape: variable shape.
		  dtype: The type of the variable. Defaults to `self.dtype`.
		  initializer: initializer instance (callable).
		  regularizer: regularizer instance (callable).
		  trainable: whether the variable should be part of the layer's
		    "trainable_variables" (e.g. variables, biases)
		    or "non_trainable_variables" (e.g. BatchNorm mean, stddev).
		
		Returns:
		  The created variable.
	**/
	public function add_variable(name:Dynamic, shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?trainable:Dynamic):Dynamic;
	/**
		Adds a weight variable to the layer.
		
		Arguments:
		    name: String, the name for the weight variable.
		    shape: The shape tuple of the weight.
		    dtype: The dtype of the weight.
		    initializer: An Initializer instance (callable).
		    regularizer: An optional Regularizer instance.
		    trainable: A boolean, whether the weight should
		        be trained via backprop or not (assuming
		        that the layer itself is also trainable).
		    constraint: An optional Constraint instance.
		
		Returns:
		    The created weight variable.
	**/
	public function add_weight(name:Dynamic, shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?trainable:Dynamic, ?constraint:Dynamic):Dynamic;
	/**
		Apply the layer on a input.
		
		This simply wraps `self.__call__`.
		
		Arguments:
		  inputs: Input tensor(s).
		  *args: additional positional arguments to be passed to `self.call`.
		  **kwargs: additional keyword arguments to be passed to `self.call`.
		
		Returns:
		  Output tensor(s).
	**/
	public function apply(inputs:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Creates the layer weights.
		
		Must be implemented on all layers that have weights.
		
		Arguments:
		    input_shape: Keras tensor (future input to layer)
		        or list/tuple of Keras tensors to reference
		        for weight shape computations.
	**/
	public function build(input_shape:Dynamic):Dynamic;
	/**
		Call the model on new inputs.
		
		In this case `call` just reapplies
		all ops in the graph to the new inputs
		(e.g. build a new computational graph from the provided inputs).
		
		A model is callable on non-Keras tensors.
		
		Arguments:
		    inputs: A tensor or list of tensors.
		    mask: A mask or list of masks. A mask can be
		        either a tensor or None (no mask).
		
		Returns:
		    A tensor if there is a single output, or
		    a list of tensors if there are more than one outputs.
	**/
	public function call(inputs:Dynamic, ?mask:Dynamic):Dynamic;
	/**
		Configures the model for training.
		
		Arguments:
		    optimizer: str (name of optimizer) or optimizer object.
		        See [optimizers](/optimizers).
		    loss: str (name of objective function) or objective function.
		        See [losses](/losses).
		        If the model has multiple outputs, you can use a different loss
		        on each output by passing a dictionary or a list of losses.
		    metrics: list of metrics to be evaluated by the model
		        during training and testing.
		        Typically you will use `metrics=['accuracy']`.
		        To specify different metrics for different outputs of a
		        multi-output model, you could also pass a dictionary,
		        such as `metrics={'output_a': 'accuracy'}`.
		    loss_weights: Optional list or dictionary specifying scalar
		        coefficients (Python floats) to weight the loss contributions
		        of different model outputs.
		        If a list, it is expected to have a 1:1 mapping
		        to the model's outputs. If a tensor, it is expected to map
		        output names (strings) to scalar coefficients.
		    sample_weight_mode: if you need to do timestep-wise
		        sample weighting (2D weights), set this to `"temporal"`.
		        `None` defaults to sample-wise weights (1D).
		        If the model has multiple outputs, you can use a different
		        `sample_weight_mode` on each output by passing a
		        dictionary or a list of modes.
		
		Raises:
		    ValueError: In case of invalid arguments for
		        `optimizer`, `loss`, `metrics` or `sample_weight_mode`.
		    RuntimeError: If the model has no loss to optimize.
	**/
	public function compile(optimizer:Dynamic, loss:Dynamic, ?metrics:Dynamic, ?loss_weights:Dynamic, ?sample_weight_mode:Dynamic):Dynamic;
	/**
		Computes an output mask tensor.
		
		Arguments:
		    inputs: Tensor or list of tensors.
		    mask: Tensor or list of tensors.
		
		Returns:
		    None or a tensor (or list of tensors,
		        one per output tensor of the layer).
	**/
	public function compute_mask(inputs:Dynamic, mask:Dynamic):Dynamic;
	public var constraints : Dynamic;
	/**
		Count the total number of scalars composing the weights.
		
		Returns:
		    An integer count.
		
		Raises:
		    RuntimeError: if the layer isn't yet built
		        (in which case its weights aren't yet defined).
	**/
	public function count_params():Dynamic;
	/**
		Returns the loss value & metrics values for the model in test mode.
		
		Computation is done in batches.
		
		Arguments:
		    x: Numpy array of test data,
		        or list of Numpy arrays if the model has multiple inputs.
		        If all inputs in the model are named,
		        you can also pass a dictionary
		        mapping input names to Numpy arrays.
		    y: Numpy array of target data,
		        or list of Numpy arrays if the model has multiple outputs.
		        If all outputs in the model are named,
		        you can also pass a dictionary
		        mapping output names to Numpy arrays.
		    batch_size: integer. Number of samples per gradient update.
		    verbose: verbosity mode, 0 or 1.
		    sample_weight: Array of weights to weight the contribution
		        of different samples to the loss and metrics.
		
		Returns:
		    Scalar test loss (if the model has a single output and no metrics)
		    or list of scalars (if the model has multiple outputs
		    and/or metrics). The attribute `model.metrics_names` will give you
		    the display labels for the scalar outputs.
	**/
	public function evaluate(x:Dynamic, y:Dynamic, ?batch_size:Dynamic, ?verbose:Dynamic, ?sample_weight:Dynamic):Dynamic;
	/**
		Evaluates the model on a data generator.
		
		The generator should return the same kind of data
		as accepted by `test_on_batch`.
		
		Arguments:
		    generator: Generator yielding tuples (inputs, targets)
		        or (inputs, targets, sample_weights)
		    steps: Total number of steps (batches of samples)
		        to yield from `generator` before stopping.
		    max_q_size: maximum size for the generator queue
		    workers: maximum number of processes to spin up
		        when using process based threading
		    pickle_safe: if True, use process based threading.
		        Note that because
		        this implementation relies on multiprocessing,
		        you should not pass
		        non picklable arguments to the generator
		        as they can't be passed
		        easily to children processes.
		
		Returns:
		    Scalar test loss (if the model has a single output and no metrics)
		    or list of scalars (if the model has multiple outputs
		    and/or metrics). The attribute `model.metrics_names` will give you
		    the display labels for the scalar outputs.
		
		Raises:
		    ValueError: In case the generator yields
		        data in an invalid format.
	**/
	public function evaluate_generator(generator:Dynamic, steps:Dynamic, ?max_q_size:Dynamic, ?workers:Dynamic, ?pickle_safe:Dynamic):Dynamic;
	/**
		Trains the model for a fixed number of epochs (iterations on a dataset).
		
		Arguments:
		    x: Numpy array of training data,
		        or list of Numpy arrays if the model has multiple inputs.
		        If all inputs in the model are named,
		        you can also pass a dictionary
		        mapping input names to Numpy arrays.
		    y: Numpy array of target data,
		        or list of Numpy arrays if the model has multiple outputs.
		        If all outputs in the model are named,
		        you can also pass a dictionary
		        mapping output names to Numpy arrays.
		    batch_size: integer. Number of samples per gradient update.
		    epochs: integer, the number of times to iterate
		        over the training data arrays.
		        verbose: 0, 1, or 2. Verbosity mode.
		        0 = silent, 1 = verbose, 2 = one log line per epoch.
		    callbacks: list of callbacks to be called during training.
		        See [callbacks](/callbacks).
		    validation_split: float between 0 and 1:
		        fraction of the training data to be used as validation data.
		        The model will set apart this fraction of the training data,
		        will not train on it, and will evaluate
		        the loss and any model metrics
		        on this data at the end of each epoch.
		    validation_data: data on which to evaluate
		        the loss and any model metrics
		        at the end of each epoch. The model will not
		        be trained on this data.
		        This could be a tuple (x_val, y_val)
		        or a tuple (x_val, y_val, val_sample_weights).
		    shuffle: boolean, whether to shuffle the training data
		        before each epoch.
		    class_weight: optional dictionary mapping
		        class indices (integers) to
		        a weight (float) to apply to the model's loss for the samples
		        from this class during training.
		        This can be useful to tell the model to "pay more attention" to
		        samples from an under-represented class.
		    sample_weight: optional array of the same length as x, containing
		        weights to apply to the model's loss for each sample.
		        In the case of temporal data, you can pass a 2D array
		        with shape (samples, sequence_length),
		        to apply a different weight to every timestep of every sample.
		        In this case you should make sure to specify
		        sample_weight_mode="temporal" in compile().
		    initial_epoch: epoch at which to start training
		        (useful for resuming a previous training run)
		
		Returns:
		    A `History` instance. Its `history` attribute contains
		    all information collected during training.
		
		Raises:
		    ValueError: In case of mismatch between the provided input data
		        and what the model expects.
	**/
	public function fit(?x:Dynamic, ?y:Dynamic, ?batch_size:Dynamic, ?epochs:Dynamic, ?verbose:Dynamic, ?callbacks:Dynamic, ?validation_split:Dynamic, ?validation_data:Dynamic, ?shuffle:Dynamic, ?class_weight:Dynamic, ?sample_weight:Dynamic, ?initial_epoch:Dynamic):Dynamic;
	/**
		Fits the model on data yielded batch-by-batch by a Python generator.
		
		The generator is run in parallel to the model, for efficiency.
		For instance, this allows you to do real-time data augmentation
		on images on CPU in parallel to training your model on GPU.
		
		Arguments:
		    generator: a generator.
		        The output of the generator must be either
		        - a tuple (inputs, targets)
		        - a tuple (inputs, targets, sample_weights).
		        All arrays should contain the same number of samples.
		        The generator is expected to loop over its data
		        indefinitely. An epoch finishes when `steps_per_epoch`
		        samples have been seen by the model.
		    steps_per_epoch: Total number of steps (batches of samples)
		        to yield from `generator` before declaring one epoch
		        finished and starting the next epoch. It should typically
		        be equal to the number of unique samples if your dataset
		        divided by the batch size.
		    epochs: integer, total number of iterations on the data.
		    verbose: verbosity mode, 0, 1, or 2.
		    callbacks: list of callbacks to be called during training.
		    validation_data: this can be either
		        - a generator for the validation data
		        - a tuple (inputs, targets)
		        - a tuple (inputs, targets, sample_weights).
		    validation_steps: Only relevant if `validation_data`
		        is a generator. Total number of steps (batches of samples)
		        to yield from `generator` before stopping.
		    class_weight: dictionary mapping class indices to a weight
		        for the class.
		    max_q_size: maximum size for the generator queue
		    workers: maximum number of processes to spin up
		        when using process based threading
		    pickle_safe: if True, use process based threading.
		        Note that because
		        this implementation relies on multiprocessing,
		        you should not pass
		        non picklable arguments to the generator
		        as they can't be passed
		        easily to children processes.
		    initial_epoch: epoch at which to start training
		        (useful for resuming a previous training run)
		
		Returns:
		    A `History` object.
		
		Example:
		
		```python
		    def generate_arrays_from_file(path):
		        while 1:
		            f = open(path)
		            for line in f:
		                # create numpy arrays of input data
		                # and labels, from each line in the file
		                x1, x2, y = process_line(line)
		                yield ({'input_1': x1, 'input_2': x2}, {'output': y})
		            f.close()
		
		    model.fit_generator(generate_arrays_from_file('/my_file.txt'),
		                        steps_per_epoch=10000, epochs=10)
		```
		
		Raises:
		    ValueError: In case the generator yields
		        data in an invalid format.
	**/
	public function fit_generator(generator:Dynamic, steps_per_epoch:Dynamic, ?epochs:Dynamic, ?verbose:Dynamic, ?callbacks:Dynamic, ?validation_data:Dynamic, ?validation_steps:Dynamic, ?class_weight:Dynamic, ?max_q_size:Dynamic, ?workers:Dynamic, ?pickle_safe:Dynamic, ?initial_epoch:Dynamic):Dynamic;
	/**
		Instantiates a Model from its config (output of `get_config()`).
		
		Arguments:
		    config: Model config dictionary.
		    custom_objects: Optional dictionary mapping names
		        (strings) to custom classes or functions to be
		        considered during deserialization.
		
		Returns:
		    A model instance.
		
		Raises:
		    ValueError: In case of improperly formatted config dict.
	**/
	static public function from_config(config:Dynamic, ?custom_objects:Dynamic):Dynamic;
	/**
		Returns the config of the layer.
		
		A layer config is a Python dictionary (serializable)
		containing the configuration of a layer.
		The same layer can be reinstantiated later
		(without its trained weights) from this configuration.
		
		The config of a layer does not include connectivity
		information, nor the layer class name. These are handled
		by `Container` (one layer of abstraction above).
		
		Returns:
		    Python dictionary.
	**/
	public function get_config():Dynamic;
	/**
		Retrieves the input tensor(s) of a layer at a given node.
		
		Arguments:
		    node_index: Integer, index of the node
		        from which to retrieve the attribute.
		        E.g. `node_index=0` will correspond to the
		        first time the layer was called.
		
		Returns:
		    A tensor (or list of tensors if the layer has multiple inputs).
	**/
	public function get_input_at(node_index:Dynamic):Dynamic;
	/**
		Retrieves the input mask tensor(s) of a layer at a given node.
		
		Arguments:
		    node_index: Integer, index of the node
		        from which to retrieve the attribute.
		        E.g. `node_index=0` will correspond to the
		        first time the layer was called.
		
		Returns:
		    A mask tensor
		    (or list of tensors if the layer has multiple inputs).
	**/
	public function get_input_mask_at(node_index:Dynamic):Dynamic;
	/**
		Retrieves the input shape(s) of a layer at a given node.
		
		Arguments:
		    node_index: Integer, index of the node
		        from which to retrieve the attribute.
		        E.g. `node_index=0` will correspond to the
		        first time the layer was called.
		
		Returns:
		    A shape tuple
		    (or list of shape tuples if the layer has multiple inputs).
	**/
	public function get_input_shape_at(node_index:Dynamic):Dynamic;
	/**
		Retrieves a layer based on either its name (unique) or index.
		
		Indices are based on order of horizontal graph traversal (bottom-up).
		
		Arguments:
		    name: String, name of layer.
		    index: Integer, index of layer.
		
		Returns:
		    A layer instance.
		
		Raises:
		    ValueError: In case of invalid layer name or index.
	**/
	public function get_layer(?name:Dynamic, ?index:Dynamic):Dynamic;
	/**
		Retrieves losses relevant to a specific set of inputs.
		
		Arguments:
		  inputs: Input tensor or list/tuple of input tensors.
		    Must match the `inputs` argument passed to the `__call__`
		    method at the time the losses were created.
		    If you pass `inputs=None`, unconditional losses are returned,
		    such as weight regularization losses.
		
		Returns:
		  List of loss tensors of the layer that depend on `inputs`.
	**/
	public function get_losses_for(inputs:Dynamic):Dynamic;
	/**
		Retrieves the output tensor(s) of a layer at a given node.
		
		Arguments:
		    node_index: Integer, index of the node
		        from which to retrieve the attribute.
		        E.g. `node_index=0` will correspond to the
		        first time the layer was called.
		
		Returns:
		    A tensor (or list of tensors if the layer has multiple outputs).
	**/
	public function get_output_at(node_index:Dynamic):Dynamic;
	/**
		Retrieves the output mask tensor(s) of a layer at a given node.
		
		Arguments:
		    node_index: Integer, index of the node
		        from which to retrieve the attribute.
		        E.g. `node_index=0` will correspond to the
		        first time the layer was called.
		
		Returns:
		    A mask tensor
		    (or list of tensors if the layer has multiple outputs).
	**/
	public function get_output_mask_at(node_index:Dynamic):Dynamic;
	/**
		Retrieves the output shape(s) of a layer at a given node.
		
		Arguments:
		    node_index: Integer, index of the node
		        from which to retrieve the attribute.
		        E.g. `node_index=0` will correspond to the
		        first time the layer was called.
		
		Returns:
		    A shape tuple
		    (or list of shape tuples if the layer has multiple outputs).
	**/
	public function get_output_shape_at(node_index:Dynamic):Dynamic;
	/**
		Retrieves updates relevant to a specific set of inputs.
		
		Arguments:
		  inputs: Input tensor or list/tuple of input tensors.
		    Must match the `inputs` argument passed to the `__call__` method
		    at the time the updates were created.
		    If you pass `inputs=None`, unconditional updates are returned.
		
		Returns:
		  List of update ops of the layer that depend on `inputs`.
	**/
	public function get_updates_for(inputs:Dynamic):Dynamic;
	/**
		Retrieves the weights of the model.
		
		Returns:
		    A flat list of Numpy arrays.
	**/
	public function get_weights():Dynamic;
	public var graph : Dynamic;
	/**
		Retrieves the input tensor(s) of a layer.
		
		Only applicable if the layer has exactly one inbound node,
		i.e. if it is connected to one incoming layer.
		
		Returns:
		    Input tensor or list of input tensors.
		
		Raises:
		    AttributeError: if the layer is connected to
		    more than one incoming layers.
	**/
	public var input : Dynamic;
	/**
		Retrieves the input mask tensor(s) of a layer.
		
		Only applicable if the layer has exactly one inbound node,
		i.e. if it is connected to one incoming layer.
		
		Returns:
		    Input mask tensor (potentially None) or list of input
		    mask tensors.
		
		Raises:
		    AttributeError: if the layer is connected to
		    more than one incoming layers.
	**/
	public var input_mask : Dynamic;
	/**
		Retrieves the input shape(s) of a layer.
		
		Only applicable if the layer has exactly one inbound node,
		i.e. if it is connected to one incoming layer.
		
		Returns:
		    Input shape, as `TensorShape`
		    (or list of `TensorShape`, one tuple per input tensor).
		
		Raises:
		    AttributeError: if the layer is connected to
		    more than one incoming layers.
	**/
	public var input_shape : Dynamic;
	/**
		Gets the model's input specs.
		
		Returns:
		    A list of `InputSpec` instances (one per input to the model)
		        or a single instance if the model has only one input.
	**/
	public var input_spec : Dynamic;
	/**
		Loads all layer weights from a HDF5 save file.
		
		If `by_name` is False (default) weights are loaded
		based on the network's topology, meaning the architecture
		should be the same as when the weights were saved.
		Note that layers that don't have weights are not taken
		into account in the topological ordering, so adding or
		removing layers is fine as long as they don't have weights.
		
		If `by_name` is True, weights are loaded into layers
		only if they share the same name. This is useful
		for fine-tuning or transfer-learning models where
		some of the layers have changed.
		
		Arguments:
		    filepath: String, path to the weights file to load.
		    by_name: Boolean, whether to load weights by name
		        or by topological order.
		
		Raises:
		    ImportError: If h5py is not available.
	**/
	public function load_weights(filepath:Dynamic, ?by_name:Dynamic):Dynamic;
	/**
		Retrieve the model's losses.
		
		Will only include losses that are either
		inconditional, or conditional on inputs to this model
		(e.g. will not include losses that depend on tensors
		that aren't inputs to this model).
		
		Returns:
		    A list of loss tensors.
	**/
	public var losses : Dynamic;
	public var non_trainable_variables : Dynamic;
	public var non_trainable_weights : Dynamic;
	/**
		Retrieves the output tensor(s) of a layer.
		
		Only applicable if the layer has exactly one inbound node,
		i.e. if it is connected to one incoming layer.
		
		Returns:
		    Output tensor or list of output tensors.
		
		Raises:
		    AttributeError: if the layer is connected to
		    more than one incoming layers.
	**/
	public var output : Dynamic;
	/**
		Retrieves the output mask tensor(s) of a layer.
		
		Only applicable if the layer has exactly one inbound node,
		i.e. if it is connected to one incoming layer.
		
		Returns:
		    Output mask tensor (potentially None) or list of output
		    mask tensors.
		
		Raises:
		    AttributeError: if the layer is connected to
		    more than one incoming layers.
	**/
	public var output_mask : Dynamic;
	/**
		Retrieves the output shape(s) of a layer.
		
		Only applicable if the layer has one inbound node,
		or if all inbound nodes have the same output shape.
		
		Returns:
		    Output shape, as `TensorShape`
		    (or list of `TensorShape`, one tuple per output tensor).
		
		Raises:
		    AttributeError: if the layer is connected to
		    more than one incoming layers.
	**/
	public var output_shape : Dynamic;
	/**
		Generates output predictions for the input samples.
		
		Computation is done in batches.
		
		Arguments:
		    x: the input data, as a Numpy array
		        (or list of Numpy arrays if the model has multiple outputs).
		    batch_size: integer.
		    verbose: verbosity mode, 0 or 1.
		
		Returns:
		    Numpy array(s) of predictions.
		
		Raises:
		    ValueError: In case of mismatch between the provided
		        input data and the model's expectations,
		        or in case a stateful model receives a number of samples
		        that is not a multiple of the batch size.
	**/
	public function predict(x:Dynamic, ?batch_size:Dynamic, ?verbose:Dynamic):Dynamic;
	/**
		Generates predictions for the input samples from a data generator.
		
		The generator should return the same kind of data as accepted by
		`predict_on_batch`.
		
		Arguments:
		    generator: Generator yielding batches of input samples.
		    steps: Total number of steps (batches of samples)
		        to yield from `generator` before stopping.
		    max_q_size: Maximum size for the generator queue.
		    workers: Maximum number of processes to spin up
		        when using process based threading
		    pickle_safe: If `True`, use process based threading.
		        Note that because
		        this implementation relies on multiprocessing,
		        you should not pass
		        non picklable arguments to the generator
		        as they can't be passed
		        easily to children processes.
		    verbose: verbosity mode, 0 or 1.
		
		Returns:
		    Numpy array(s) of predictions.
		
		Raises:
		    ValueError: In case the generator yields
		        data in an invalid format.
	**/
	public function predict_generator(generator:Dynamic, steps:Dynamic, ?max_q_size:Dynamic, ?workers:Dynamic, ?pickle_safe:Dynamic, ?verbose:Dynamic):Dynamic;
	/**
		Returns predictions for a single batch of samples.
		
		Arguments:
		    x: Input samples, as a Numpy array.
		
		Returns:
		    Numpy array(s) of predictions.
	**/
	public function predict_on_batch(x:Dynamic):Dynamic;
	public function reset_states():Dynamic;
	/**
		Computes output tensors for new inputs.
		
		# Note:
		    - Expects `inputs` to be a list (potentially with 1 element).
		    - Can be run on non-Keras tensors.
		
		Arguments:
		    inputs: List of tensors
		    masks: List of masks (tensors or None).
		
		Returns:
		    Three lists: output_tensors, output_masks, output_shapes
	**/
	public function run_internal_graph(inputs:Dynamic, ?masks:Dynamic):Dynamic;
	/**
		Save the model to a single HDF5 file.
		
		The savefile includes:
		    - The model architecture, allowing to re-instantiate the model.
		    - The model weights.
		    - The state of the optimizer, allowing to resume training
		        exactly where you left off.
		
		This allows you to save the entirety of the state of a model
		in a single file.
		
		Saved models can be reinstantiated via `keras.models.load_model`.
		The model returned by `load_model`
		is a compiled model ready to be used (unless the saved model
		was never compiled in the first place).
		
		Arguments:
		    filepath: String, path to the file to save the weights to.
		    overwrite: Whether to silently overwrite any existing file at the
		        target location, or provide the user with a manual prompt.
		    include_optimizer: If True, save optimizer's state together.
		
		Example:
		
		```python
		from keras.models import load_model
		
		model.save('my_model.h5')  # creates a HDF5 file 'my_model.h5'
		del model  # deletes the existing model
		
		# returns a compiled model
		# identical to the previous one
		model = load_model('my_model.h5')
		```
	**/
	public function save(filepath:Dynamic, ?overwrite:Dynamic, ?include_optimizer:Dynamic):Dynamic;
	/**
		Dumps all layer weights to a HDF5 file.
		
		The weight file has:
		    - `layer_names` (attribute), a list of strings
		        (ordered names of model layers).
		    - For every layer, a `group` named `layer.name`
		        - For every such layer group, a group attribute `weight_names`,
		            a list of strings
		            (ordered names of weights tensor of the layer).
		        - For every weight in the layer, a dataset
		            storing the weight value, named after the weight tensor.
		
		Arguments:
		    filepath: String, path to the file to save the weights to.
		    overwrite: Whether to silently overwrite any existing file at the
		        target location, or provide the user with a manual prompt.
		
		Raises:
		    ImportError: If h5py is not available.
	**/
	public function save_weights(filepath:Dynamic, ?overwrite:Dynamic):Dynamic;
	public var scope_name : Dynamic;
	/**
		Sets the weights of the model.
		
		Arguments:
		    weights: A list of Numpy arrays with shapes and types matching
		        the output of `model.get_weights()`.
	**/
	public function set_weights(weights:Dynamic):Dynamic;
	/**
		Returns the `updates` from all layers that are stateful.
		
		This is useful for separating training updates and
		state updates, e.g. when we need to update a layer's internal state
		during prediction.
		
		Returns:
		    A list of update ops.
	**/
	public var state_updates : Dynamic;
	public var stateful : Dynamic;
	public function summary(?line_length:Dynamic, ?positions:Dynamic):Dynamic;
	/**
		Test the model on a single batch of samples.
		
		Arguments:
		    x: Numpy array of test data,
		        or list of Numpy arrays if the model has multiple inputs.
		        If all inputs in the model are named,
		        you can also pass a dictionary
		        mapping input names to Numpy arrays.
		    y: Numpy array of target data,
		        or list of Numpy arrays if the model has multiple outputs.
		        If all outputs in the model are named,
		        you can also pass a dictionary
		        mapping output names to Numpy arrays.
		    sample_weight: optional array of the same length as x, containing
		        weights to apply to the model's loss for each sample.
		        In the case of temporal data, you can pass a 2D array
		        with shape (samples, sequence_length),
		        to apply a different weight to every timestep of every sample.
		        In this case you should make sure to specify
		        sample_weight_mode="temporal" in compile().
		
		Returns:
		    Scalar test loss (if the model has a single output and no metrics)
		    or list of scalars (if the model has multiple outputs
		    and/or metrics). The attribute `model.metrics_names` will give you
		    the display labels for the scalar outputs.
	**/
	public function test_on_batch(x:Dynamic, y:Dynamic, ?sample_weight:Dynamic):Dynamic;
	/**
		Returns a JSON string containing the network configuration.
		
		To load a network from a JSON save file, use
		`keras.models.model_from_json(json_string, custom_objects={})`.
		
		Arguments:
		    **kwargs: Additional keyword arguments
		        to be passed to `json.dumps()`.
		
		Returns:
		    A JSON string.
	**/
	public function to_json(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns a yaml string containing the network configuration.
		
		To load a network from a yaml save file, use
		`keras.models.model_from_yaml(yaml_string, custom_objects={})`.
		
		`custom_objects` should be a dictionary mapping
		the names of custom losses / layers / etc to the corresponding
		functions / classes.
		
		Arguments:
		    **kwargs: Additional keyword arguments
		        to be passed to `yaml.dump()`.
		
		Returns:
		    A YAML string.
		
		Raises:
		    ImportError: if yaml module is not found.
	**/
	public function to_yaml(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Runs a single gradient update on a single batch of data.
		
		Arguments:
		    x: Numpy array of training data,
		        or list of Numpy arrays if the model has multiple inputs.
		        If all inputs in the model are named,
		        you can also pass a dictionary
		        mapping input names to Numpy arrays.
		    y: Numpy array of target data,
		        or list of Numpy arrays if the model has multiple outputs.
		        If all outputs in the model are named,
		        you can also pass a dictionary
		        mapping output names to Numpy arrays.
		    sample_weight: optional array of the same length as x, containing
		        weights to apply to the model's loss for each sample.
		        In the case of temporal data, you can pass a 2D array
		        with shape (samples, sequence_length),
		        to apply a different weight to every timestep of every sample.
		        In this case you should make sure to specify
		        sample_weight_mode="temporal" in compile().
		    class_weight: optional dictionary mapping
		        class indices (integers) to
		        a weight (float) to apply to the model's loss for the samples
		        from this class during training.
		        This can be useful to tell the model to "pay more attention" to
		        samples from an under-represented class.
		
		Returns:
		    Scalar training loss
		    (if the model has a single output and no metrics)
		    or list of scalars (if the model has multiple outputs
		    and/or metrics). The attribute `model.metrics_names` will give you
		    the display labels for the scalar outputs.
	**/
	public function train_on_batch(x:Dynamic, y:Dynamic, ?sample_weight:Dynamic, ?class_weight:Dynamic):Dynamic;
	public var trainable_variables : Dynamic;
	public var trainable_weights : Dynamic;
	/**
		Retrieve the model's updates.
		
		Will only include updates that are either
		inconditional, or conditional on inputs to this model
		(e.g. will not include updates that depend on tensors
		that aren't inputs to this model).
		
		Returns:
		    A list of update ops.
	**/
	public var updates : Dynamic;
	public var uses_learning_phase : Dynamic;
	/**
		Returns the list of all layer variables/weights.
		
		Returns:
		  A list of variables.
	**/
	public var variables : Dynamic;
	/**
		Returns the list of all layer variables/weights.
		
		Returns:
		  A list of variables.
	**/
	public var weights : Dynamic;
}