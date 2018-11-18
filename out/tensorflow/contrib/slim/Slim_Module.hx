/* This file is generated, do not edit! */
package tensorflow.contrib.slim;
@:pythonImport("tensorflow.contrib.slim") extern class Slim_Module {
	static public var OPTIMIZER_CLS_NAMES : Dynamic;
	static public var OPTIMIZER_SUMMARIES : Dynamic;
	/**
		DEPRECATED FUNCTION
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-11-12.
		Instructions for updating:
		This file will be removed after the deprecation date.Please switch to third_party/tensorflow/contrib/learn/python/learn/estimators/head.py
	**/
	static public function ProblemType():Dynamic;
	static public var SPARSE_FEATURE_CROSS_DEFAULT_HASH_KEY : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Adapt the clipping value using statistics on the norms.
		
		Implement adaptive gradient as presented in section 3.2.1 of
		https://arxiv.org/abs/1412.1602.
		
		Keeps a moving average of the mean and std of the log(norm) of the gradient.
		If the norm exceeds `exp(mean + std_factor*std)` then all gradients will be
		rescaled such that the global norm becomes `exp(mean)`.
		
		Args:
		  std_factor: Python scaler (or tensor).
		    `max_norm = exp(mean + std_factor*std)`
		  decay: The smoothing factor of the moving averages.
		  static_max_norm: If provided, will threshold the norm to this value as an
		    extra safety.
		  global_step: Optional global_step. If provided, `decay = decay*n/(n+1)`.
		    This provides a quicker adaptation of the mean for the first steps.
		  report_summary: If `True`, will add histogram summaries of the `max_norm`.
		  epsilon: Small value chosen to avoid zero variance.
		  name: The name for this operation is used to scope operations and summaries.
		
		Returns:
		  A function for applying gradient clipping.
	**/
	static public function adaptive_clipping_fn(?std_factor:Dynamic, ?decay:Dynamic, ?static_max_norm:Dynamic, ?global_step:Dynamic, ?report_summary:Dynamic, ?epsilon:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Decorates a function with args so it can be used within an arg_scope.
		
		Args:
		  func: function to decorate.
		
		Returns:
		  A tuple with the decorated function func_with_args().
	**/
	static public function add_arg_scope(func:Dynamic):Dynamic;
	/**
		Adds a variable to the `GraphKeys.MODEL_VARIABLES` collection.
		
		Args:
		  var: a variable.
	**/
	static public function add_model_variable(_var:Dynamic):Dynamic;
	/**
		Returns the summed penalty by applying `regularizer` to the `weights_list`.
		
		Adding a regularization penalty over the layer weights and embedding weights
		can help prevent overfitting the training data. Regularization over layer
		biases is less common/useful, but assuming proper data preprocessing/mean
		subtraction, it usually shouldn't hurt much either.
		
		Args:
		  regularizer: A function that takes a single `Tensor` argument and returns
		    a scalar `Tensor` output.
		  weights_list: List of weights `Tensors` or `Variables` to apply
		    `regularizer` over. Defaults to the `GraphKeys.WEIGHTS` collection if
		    `None`.
		
		Returns:
		  A scalar representing the overall regularization penalty.
		
		Raises:
		  ValueError: If `regularizer` does not return a scalar output, or if we find
		      no weights.
	**/
	static public function apply_regularization(regularizer:Dynamic, ?weights_list:Dynamic):Dynamic;
	/**
		Stores the default arguments for the given set of list_ops.
		
		For usage, please see examples at top of the file.
		
		Args:
		  list_ops_or_scope: List or tuple of operations to set argument scope for or
		    a dictionary containing the current scope. When list_ops_or_scope is a
		    dict, kwargs must be empty. When list_ops_or_scope is a list or tuple,
		    then every op in it need to be decorated with @add_arg_scope to work.
		  **kwargs: keyword=value that will define the defaults for each op in
		            list_ops. All the ops need to accept the given set of arguments.
		
		Yields:
		  the current_scope, which is a dictionary of {op: {arg: value}}
		Raises:
		  TypeError: if list_ops is not a list or a tuple.
		  ValueError: if any op in list_ops has not be decorated with @add_arg_scope.
	**/
	static public function arg_scope(list_ops_or_scope:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function arg_scope_func_key(op:Dynamic):Dynamic;
	/**
		Returns the list kwargs that arg_scope can set for a func.
		
		Args:
		  func: function which has been decorated with @add_arg_scope.
		
		Returns:
		  a list of kwargs names.
	**/
	static public function arg_scoped_arguments(func:Dynamic):Dynamic;
	/**
		DEPRECATED FUNCTION
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.train.assert_global_step
	**/
	static public function assert_global_step(global_step_tensor:Dynamic):Dynamic;
	/**
		Verifies that a global step tensor is valid or gets one if None is given.
		
		If `global_step_tensor` is not None, check that it is a valid global step
		tensor (using `assert_global_step`). Otherwise find a global step tensor using
		`get_global_step` and return it.
		
		Args:
		  graph: The graph to find the global step tensor for.
		  global_step_tensor: The tensor to check for suitability as a global step.
		    If None is given (the default), find a global step tensor.
		
		Returns:
		  A tensor suitable as a global step, or `None` if none was provided and none
		  was found.
	**/
	static public function assert_or_get_global_step(?graph:Dynamic, ?global_step_tensor:Dynamic):Dynamic;
	/**
		Creates an operation to assign specific variables from a checkpoint.
		
		Args:
		  model_path: The full path to the model checkpoint. To get latest checkpoint
		      use `model_path = tf.train.latest_checkpoint(checkpoint_dir)`
		  var_list: A list of (possibly partitioned) `Variable` objects
		      or a dictionary mapping names in the checkpoint to the
		      corresponding variables or list of variables to initialize
		      from that checkpoint value. For partitioned Variables, the
		      name in the checkpoint must be the full variable, not the
		      name of the partitioned variable, eg. "my_var" rather than
		      "my_var/part_4". If empty, returns no_op(), {}.
		  ignore_missing_vars: Boolean, if True ignore variables missing in the
		      checkpoint with a warning instead of failing.
		
		Returns:
		  the restore_op and the feed_dict that need to be run to restore var_list.
		
		Raises:
		  ValueError: If `ignore_missing_vars` is False and the checkpoint specified
		      at `model_path` is missing one of the variables in `var_list`.
	**/
	static public function assign_from_checkpoint(model_path:Dynamic, var_list:Dynamic, ?ignore_missing_vars:Dynamic):Dynamic;
	/**
		Returns a function that assigns specific variables from a checkpoint.
		
		If ignore_missing_vars is True and no variables are found in the checkpoint
		it returns None.
		
		Args:
		  model_path: The full path to the model checkpoint. To get latest checkpoint
		      use `model_path = tf.train.latest_checkpoint(checkpoint_dir)`
		  var_list: A list of `Variable` objects or a dictionary mapping names in the
		      checkpoint to the corresponding variables to initialize. If empty or
		      `None`, it would return `no_op(), None`.
		  ignore_missing_vars: Boolean, if True it would ignore variables missing in
		      the checkpoint with a warning instead of failing.
		  reshape_variables: Boolean, if True it would automatically reshape variables
		      which are of different shape then the ones stored in the checkpoint but
		      which have the same number of elements.
		
		Returns:
		  A function that takes a single argument, a `tf.Session`, that applies the
		  assignment operation. If no matching variables were found in the checkpoint
		  then `None` is returned.
		
		Raises:
		  ValueError: If var_list is empty.
	**/
	static public function assign_from_checkpoint_fn(model_path:Dynamic, var_list:Dynamic, ?ignore_missing_vars:Dynamic, ?reshape_variables:Dynamic):Dynamic;
	/**
		Creates an assignment operation from a given mapping.
		
		This function provides a mechanism for performing assignment of variables
		to values in a way that does not fill the graph with large assignment values.
		
		Args:
		  var_names_to_values: A map from variable names to values.
		
		Returns:
		  assign_op: An `Operation` that assigns each of the given variables to the
		    requested values.
		  feed_dict: The feed dictionary to use when evaluating `assign_op`.
		
		Raises:
		  ValueError: if any of the given variable names were not found.
	**/
	static public function assign_from_values(var_names_to_values:Dynamic):Dynamic;
	/**
		Returns a function that assigns specific variables from the given values.
		
		This function provides a mechanism for performing assignment of variables
		to values in a way that does not fill the graph with large assignment values.
		
		Args:
		  var_names_to_values: A map from variable names to values.
		
		Returns:
		  A function that takes a single argument, a `tf.Session`, that applies the
		  assignment operation.
		
		Raises:
		  ValueError: if any of the given variable names were not found.
	**/
	static public function assign_from_values_fn(var_names_to_values:Dynamic):Dynamic;
	/**
		Adds a 2D average pooling op.
		
		It is assumed that the pooling is done per image but not in batch or channels.
		
		Args:
		  inputs: A 4-D tensor of shape `[batch_size, height, width, channels]` if
		    `data_format` is `NHWC`, and `[batch_size, channels, height, width]` if
		    `data_format` is `NCHW`.
		  kernel_size: A list of length 2: [kernel_height, kernel_width] of the
		    pooling kernel over which the op is computed. Can be an int if both
		    values are the same.
		  stride: A list of length 2: [stride_height, stride_width].
		    Can be an int if both strides are the same. Note that presently
		    both strides must have the same value.
		  padding: The padding method, either 'VALID' or 'SAME'.
		  data_format: A string. `NHWC` (default) and `NCHW` are supported.
		  outputs_collections: The collections to which the outputs are added.
		  scope: Optional scope for name_scope.
		
		Returns:
		  A `Tensor` representing the results of the pooling operation.
		
		Raises:
		  ValueError: If `data_format` is neither `NHWC` nor `NCHW`.
	**/
	static public function avg_pool2d(inputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?outputs_collections:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a 3D average pooling op.
		
		It is assumed that the pooling is done per image but not in batch or channels.
		
		Args:
		  inputs: A 5-D tensor of shape `[batch_size, depth, height, width, channels]`
		    if `data_format` is `NDHWC`, and `[batch_size, channels, depth, height,
		    width]` if `data_format` is `NCDHW`.
		  kernel_size: A list of length 3: [kernel_depth, kernel_height, kernel_width]
		    of the pooling kernel over which the op is computed. Can be an int if both
		    values are the same.
		  stride: A list of length 3: [stride_depth, stride_height, stride_width].
		    Can be an int if both strides are the same. Note that presently
		    both strides must have the same value.
		  padding: The padding method, either 'VALID' or 'SAME'.
		  data_format: A string. `NDHWC` (default) and `NCDHW` are supported.
		  outputs_collections: The collections to which the outputs are added.
		  scope: Optional scope for name_scope.
		
		Returns:
		  A `Tensor` representing the results of the pooling operation.
		
		Raises:
		  ValueError: If `data_format` is neither `NDHWC` nor `NCDHW`.
	**/
	static public function avg_pool3d(inputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?outputs_collections:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a Batch Normalization layer from http://arxiv.org/abs/1502.03167.
		
		  "Batch Normalization: Accelerating Deep Network Training by Reducing
		  Internal Covariate Shift"
		
		  Sergey Ioffe, Christian Szegedy
		
		Can be used as a normalizer function for conv2d and fully_connected. The
		normalization is over all but the last dimension if `data_format` is `NHWC`
		and all but the second dimension if `data_format` is `NCHW`.  In case of a 2D
		tensor this corresponds to the batch dimension, while in case of a 4D tensor
		this
		corresponds to the batch and space dimensions.
		
		Note: when training, the moving_mean and moving_variance need to be updated.
		By default the update ops are placed in `tf.GraphKeys.UPDATE_OPS`, so they
		need to be added as a dependency to the `train_op`. For example:
		
		```python
		  update_ops = tf.get_collection(tf.GraphKeys.UPDATE_OPS)
		  with tf.control_dependencies(update_ops):
		    train_op = optimizer.minimize(loss)
		```
		
		One can set updates_collections=None to force the updates in place, but that
		can have a speed penalty, especially in distributed settings.
		
		Args:
		  inputs: A tensor with 2 or more dimensions, where the first dimension has
		    `batch_size`. The normalization is over all but the last dimension if
		    `data_format` is `NHWC` and the second dimension if `data_format` is
		    `NCHW`.
		  decay: Decay for the moving average. Reasonable values for `decay` are close
		    to 1.0, typically in the multiple-nines range: 0.999, 0.99, 0.9, etc.
		    Lower `decay` value (recommend trying `decay`=0.9) if model experiences
		    reasonably good training performance but poor validation and/or test
		    performance. Try zero_debias_moving_mean=True for improved stability.
		  center: If True, add offset of `beta` to normalized tensor. If False, `beta`
		    is ignored.
		  scale: If True, multiply by `gamma`. If False, `gamma` is
		    not used. When the next layer is linear (also e.g. `nn.relu`), this can be
		    disabled since the scaling can be done by the next layer.
		  epsilon: Small float added to variance to avoid dividing by zero.
		  activation_fn: Activation function, default set to None to skip it and
		    maintain a linear activation.
		  param_initializers: Optional initializers for beta, gamma, moving mean and
		    moving variance.
		  param_regularizers: Optional regularizer for beta and gamma.
		  updates_collections: Collections to collect the update ops for computation.
		    The updates_ops need to be executed with the train_op.
		    If None, a control dependency would be added to make sure the updates are
		    computed in place.
		  is_training: Whether or not the layer is in training mode. In training mode
		    it would accumulate the statistics of the moments into `moving_mean` and
		    `moving_variance` using an exponential moving average with the given
		    `decay`. When it is not in training mode then it would use the values of
		    the `moving_mean` and the `moving_variance`.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional collections for the variables.
		  outputs_collections: Collections to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  batch_weights: An optional tensor of shape `[batch_size]`,
		    containing a frequency weight for each batch item. If present,
		    then the batch normalization uses weighted mean and
		    variance. (This can be used to correct for bias in training
		    example selection.)
		  fused: if `None` or `True`, use a faster, fused implementation if possible.
		    If `False`, use the system recommended implementation.
		  data_format: A string. `NHWC` (default) and `NCHW` are supported.
		  zero_debias_moving_mean: Use zero_debias for moving_mean. It creates a new
		    pair of variables 'moving_mean/biased' and 'moving_mean/local_step'.
		  scope: Optional scope for `variable_scope`.
		  renorm: Whether to use Batch Renormalization
		    (https://arxiv.org/abs/1702.03275). This adds extra variables during
		    training. The inference is the same for either value of this parameter.
		  renorm_clipping: A dictionary that may map keys 'rmax', 'rmin', 'dmax' to
		    scalar `Tensors` used to clip the renorm correction. The correction
		    `(r, d)` is used as `corrected_value = normalized_value * r + d`, with
		    `r` clipped to [rmin, rmax], and `d` to [-dmax, dmax]. Missing rmax, rmin,
		    dmax are set to inf, 0, inf, respectively.
		  renorm_decay: Momentum used to update the moving means and standard
		    deviations with renorm. Unlike `momentum`, this affects training
		    and should be neither too small (which would add noise) nor too large
		    (which would give stale estimates). Note that `decay` is still applied
		    to get the means and variances for inference.
		  adjustment: A function taking the `Tensor` containing the (dynamic) shape of
		    the input tensor and returning a pair (scale, bias) to apply to the
		    normalized values (before gamma and beta), only during training. For
		    example,
		      `adjustment = lambda shape: (
		        tf.random_uniform(shape[-1:], 0.93, 1.07),
		        tf.random_uniform(shape[-1:], -0.1, 0.1))`
		    will scale the normalized value by up to 7% up or down, then shift the
		    result by up to 0.1 (with independent scaling and bias for each feature
		    but shared across all examples), and finally apply gamma and/or beta. If
		    `None`, no adjustment is applied.
		
		Returns:
		  A `Tensor` representing the output of the operation.
		
		Raises:
		  ValueError: If `data_format` is neither `NHWC` nor `NCHW`.
		  ValueError: If the rank of `inputs` is undefined.
		  ValueError: If rank or channels dimension of `inputs` is undefined.
	**/
	static public function batch_norm(inputs:Dynamic, ?decay:Dynamic, ?center:Dynamic, ?scale:Dynamic, ?epsilon:Dynamic, ?activation_fn:Dynamic, ?param_initializers:Dynamic, ?param_regularizers:Dynamic, ?updates_collections:Dynamic, ?is_training:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?batch_weights:Dynamic, ?fused:Dynamic, ?data_format:Dynamic, ?zero_debias_moving_mean:Dynamic, ?scope:Dynamic, ?renorm:Dynamic, ?renorm_clipping:Dynamic, ?renorm_decay:Dynamic, ?adjustment:Dynamic):Dynamic;
	/**
		Adds a bias to the inputs.
		
		Can be used as a normalizer function for conv2d and fully_connected.
		
		Args:
		  inputs: A tensor of with at least rank 2 and value for the last dimension,
		    e.g. `[batch_size, depth]`, `[None, None, None, depth]`.
		  activation_fn: Activation function, default set to None to skip it and
		    maintain a linear activation.
		  initializer: An initializer for the bias, defaults to 0.
		  regularizer: A regularizer like the result of
		    `l1_regularizer` or `l2_regularizer`.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional collections for the variables.
		  outputs_collections: Collections to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  data_format: A string. 'NHWC' and 'NCHW' are supported.
		  scope: Optional scope for variable_scope.
		
		Returns:
		  A tensor representing the result of adding biases to the inputs.
		
		Raises:
		  ValueError: If `data_format` is neither `NHWC` nor `NCHW`.
		  ValueError: If `data_format` is `NCHW` and rank of `inputs` is not 4.
		  ValueError: If the rank of `inputs` is undefined.
		  ValueError: If rank or `C` dimension of `inputs` is undefined.
	**/
	static public function bias_add(inputs:Dynamic, ?activation_fn:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?data_format:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Creates a _TargetColumn for binary classification with SVMs. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-11-12.
		Instructions for updating:
		This file will be removed after the deprecation date.Please switch to third_party/tensorflow/contrib/learn/python/learn/estimators/head.py
		
		The target column uses binary hinge loss.
		
		Args:
		  label_name: String, name of the key in label dict. Can be null if label
		    is a tensor (single headed models).
		  weight_column_name: A string defining feature column name representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example.
		
		Returns:
		  An instance of _TargetColumn.
	**/
	static public function binary_svm_target(?label_name:Dynamic, ?weight_column_name:Dynamic):Dynamic;
	/**
		Maps a sequence of symbols to a vector per example by averaging embeddings.
		
		Args:
		  ids: `[batch_size, doc_length]` `Tensor` or `SparseTensor` of type
		    `int32` or `int64` with symbol ids.
		  vocab_size: Integer number of symbols in vocabulary.
		  embed_dim: Integer number of dimensions for embedding matrix.
		  sparse_lookup: `bool`, if `True`, converts ids to a `SparseTensor`
		      and performs a sparse embedding lookup. This is usually faster,
		      but not desirable if padding tokens should have an embedding. Empty rows
		      are assigned a special embedding.
		  initializer: An initializer for the embeddings, if `None` default for
		      current scope is used.
		  regularizer: Optional regularizer for the embeddings.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional string specifying the variable scope for the op, required
		      if `reuse=True`.
		  reuse: If `True`, variables inside the op will be reused.
		
		Returns:
		  Encoding `Tensor` `[batch_size, embed_dim]` produced by
		  averaging embeddings.
		
		Raises:
		  ValueError: If `embed_dim` or `vocab_size` are not specified.
	**/
	static public function bow_encoder(ids:Dynamic, vocab_size:Dynamic, embed_dim:Dynamic, ?sparse_lookup:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?trainable:Dynamic, ?scope:Dynamic, ?reuse:Dynamic):Dynamic;
	/**
		Bucketizes input_tensor by given boundaries.
		
		See bucketize_op.cc for more details.
		
		Args:
		  input_tensor: A `Tensor` which will be bucketize.
		  boundaries: A list of floats gives the boundaries. It has to be sorted.
		  name: A name prefix for the returned tensors (optional).
		
		Returns:
		  A `Tensor` with type int32 which indicates the corresponding bucket for
		    each value in `input_tensor`.
		
		Raises:
		  TypeError: If boundaries is not a list.
	**/
	static public function bucketize(input_tensor:Dynamic, boundaries:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a _BucketizedColumn for discretizing dense input.
		
		Args:
		  source_column: A _RealValuedColumn defining dense column.
		  boundaries: A list or tuple of floats specifying the boundaries. It has to
		    be sorted.
		
		Returns:
		  A _BucketizedColumn.
		
		Raises:
		  ValueError: if 'boundaries' is empty or not sorted.
	**/
	static public function bucketized_column(source_column:Dynamic, boundaries:Dynamic):Dynamic;
	/**
		Checks the validity of the set of FeatureColumns.
		
		Args:
		  feature_columns: An iterable of instances or subclasses of FeatureColumn.
		
		Raises:
		  ValueError: If `feature_columns` is a dict.
		  ValueError: If there are duplicate feature column keys.
	**/
	static public function check_feature_columns(feature_columns:Dynamic):Dynamic;
	/**
		Adds an N-D convolution followed by an optional batch_norm layer.
		
		It is required that 1 <= N <= 3.
		
		`convolution` creates a variable called `weights`, representing the
		convolutional kernel, that is convolved (actually cross-correlated) with the
		`inputs` to produce a `Tensor` of activations. If a `normalizer_fn` is
		provided (such as `batch_norm`), it is then applied. Otherwise, if
		`normalizer_fn` is None and a `biases_initializer` is provided then a `biases`
		variable would be created and added the activations. Finally, if
		`activation_fn` is not `None`, it is applied to the activations as well.
		
		Performs atrous convolution with input stride/dilation rate equal to `rate`
		if a value > 1 for any dimension of `rate` is specified.  In this case
		`stride` values != 1 are not supported.
		
		Args:
		  inputs: A Tensor of rank N+2 of shape
		    `[batch_size] + input_spatial_shape + [in_channels]` if data_format does
		    not start with "NC" (default), or
		    `[batch_size, in_channels] + input_spatial_shape` if data_format starts
		    with "NC".
		  num_outputs: Integer, the number of output filters.
		  kernel_size: A sequence of N positive integers specifying the spatial
		    dimensions of the filters.  Can be a single integer to specify the same
		    value for all spatial dimensions.
		  stride: A sequence of N positive integers specifying the stride at which to
		    compute output.  Can be a single integer to specify the same value for all
		    spatial dimensions.  Specifying any `stride` value != 1 is incompatible
		    with specifying any `rate` value != 1.
		  padding: One of `"VALID"` or `"SAME"`.
		  data_format: A string or None.  Specifies whether the channel dimension of
		    the `input` and output is the last dimension (default, or if `data_format`
		    does not start with "NC"), or the second dimension (if `data_format`
		    starts with "NC").  For N=1, the valid values are "NWC" (default) and
		    "NCW".  For N=2, the valid values are "NHWC" (default) and "NCHW".
		    For N=3, the valid values are "NDHWC" (default) and "NCDHW".
		  rate: A sequence of N positive integers specifying the dilation rate to use
		    for atrous convolution.  Can be a single integer to specify the same
		    value for all spatial dimensions.  Specifying any `rate` value != 1 is
		    incompatible with specifying any `stride` value != 1.
		  activation_fn: Activation function. The default value is a ReLU function.
		    Explicitly set it to None to skip it and maintain a linear activation.
		  normalizer_fn: Normalization function to use instead of `biases`. If
		    `normalizer_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		    default set to None for no normalizer function
		  normalizer_params: Normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional list of collections for all the variables or
		    a dictionary containing a different list of collection per variable.
		  outputs_collections: Collection to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for `variable_scope`.
		  conv_dims: Optional convolution dimensionality, when set it would use the
		    corresponding convolution (e.g. 2 for Conv 2D, 3 for Conv 3D, ..). When
		    leaved to None it would select the convolution dimensionality based on
		    the input rank (i.e. Conv ND, with N = input_rank - 2).
		
		Returns:
		  A tensor representing the output of the operation.
		
		Raises:
		  ValueError: If `data_format` is invalid.
		  ValueError: Both 'rate' and `stride` are not uniformly 1.
	**/
	static public function conv1d(inputs:Dynamic, num_outputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?rate:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds an N-D convolution followed by an optional batch_norm layer.
		
		It is required that 1 <= N <= 3.
		
		`convolution` creates a variable called `weights`, representing the
		convolutional kernel, that is convolved (actually cross-correlated) with the
		`inputs` to produce a `Tensor` of activations. If a `normalizer_fn` is
		provided (such as `batch_norm`), it is then applied. Otherwise, if
		`normalizer_fn` is None and a `biases_initializer` is provided then a `biases`
		variable would be created and added the activations. Finally, if
		`activation_fn` is not `None`, it is applied to the activations as well.
		
		Performs atrous convolution with input stride/dilation rate equal to `rate`
		if a value > 1 for any dimension of `rate` is specified.  In this case
		`stride` values != 1 are not supported.
		
		Args:
		  inputs: A Tensor of rank N+2 of shape
		    `[batch_size] + input_spatial_shape + [in_channels]` if data_format does
		    not start with "NC" (default), or
		    `[batch_size, in_channels] + input_spatial_shape` if data_format starts
		    with "NC".
		  num_outputs: Integer, the number of output filters.
		  kernel_size: A sequence of N positive integers specifying the spatial
		    dimensions of the filters.  Can be a single integer to specify the same
		    value for all spatial dimensions.
		  stride: A sequence of N positive integers specifying the stride at which to
		    compute output.  Can be a single integer to specify the same value for all
		    spatial dimensions.  Specifying any `stride` value != 1 is incompatible
		    with specifying any `rate` value != 1.
		  padding: One of `"VALID"` or `"SAME"`.
		  data_format: A string or None.  Specifies whether the channel dimension of
		    the `input` and output is the last dimension (default, or if `data_format`
		    does not start with "NC"), or the second dimension (if `data_format`
		    starts with "NC").  For N=1, the valid values are "NWC" (default) and
		    "NCW".  For N=2, the valid values are "NHWC" (default) and "NCHW".
		    For N=3, the valid values are "NDHWC" (default) and "NCDHW".
		  rate: A sequence of N positive integers specifying the dilation rate to use
		    for atrous convolution.  Can be a single integer to specify the same
		    value for all spatial dimensions.  Specifying any `rate` value != 1 is
		    incompatible with specifying any `stride` value != 1.
		  activation_fn: Activation function. The default value is a ReLU function.
		    Explicitly set it to None to skip it and maintain a linear activation.
		  normalizer_fn: Normalization function to use instead of `biases`. If
		    `normalizer_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		    default set to None for no normalizer function
		  normalizer_params: Normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional list of collections for all the variables or
		    a dictionary containing a different list of collection per variable.
		  outputs_collections: Collection to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for `variable_scope`.
		  conv_dims: Optional convolution dimensionality, when set it would use the
		    corresponding convolution (e.g. 2 for Conv 2D, 3 for Conv 3D, ..). When
		    leaved to None it would select the convolution dimensionality based on
		    the input rank (i.e. Conv ND, with N = input_rank - 2).
		
		Returns:
		  A tensor representing the output of the operation.
		
		Raises:
		  ValueError: If `data_format` is invalid.
		  ValueError: Both 'rate' and `stride` are not uniformly 1.
	**/
	static public function conv2d(inputs:Dynamic, num_outputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?rate:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Performs the same in-plane convolution to each channel independently.
		
		This is useful for performing various simple channel-independent convolution
		operations such as image gradients:
		
		  image = tf.constant(..., shape=(16, 240, 320, 3))
		  vert_gradients = layers.conv2d_in_plane(image,
		                                          kernel=[1, -1],
		                                          kernel_size=[2, 1])
		  horz_gradients = layers.conv2d_in_plane(image,
		                                          kernel=[1, -1],
		                                          kernel_size=[1, 2])
		
		Args:
		  inputs: A 4-D tensor with dimensions [batch_size, height, width, channels].
		  kernel_size: A list of length 2 holding the [kernel_height, kernel_width] of
		    of the pooling. Can be an int if both values are the same.
		  stride: A list of length 2 `[stride_height, stride_width]`.
		    Can be an int if both strides are the same. Note that presently
		    both strides must have the same value.
		  padding: The padding type to use, either 'SAME' or 'VALID'.
		  activation_fn: Activation function. The default value is a ReLU function.
		    Explicitly set it to None to skip it and maintain a linear activation.
		  normalizer_fn: Normalization function to use instead of `biases`. If
		    `normalizer_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		    default set to None for no normalizer function
		  normalizer_params: Normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional list of collections for all the variables or
		    a dictionary containing a different list of collection per variable.
		  outputs_collections: Collection to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for `variable_scope`.
		
		Returns:
		  A `Tensor` representing the output of the operation.
	**/
	static public function conv2d_in_plane(inputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a convolution2d_transpose with an optional batch normalization layer.
		
		The function creates a variable called `weights`, representing the
		kernel, that is convolved with the input. If `normalizer_fn` is `None`, a
		second variable called 'biases' is added to the result of the operation.
		
		Args:
		  inputs: A 4-D `Tensor` of type `float` and shape
		    `[batch, height, width, in_channels]` for `NHWC` data format or
		    `[batch, in_channels, height, width]` for `NCHW` data format.
		  num_outputs: Integer, the number of output filters.
		  kernel_size: A list of length 2 holding the [kernel_height, kernel_width] of
		    of the filters. Can be an int if both values are the same.
		  stride: A list of length 2: [stride_height, stride_width].
		    Can be an int if both strides are the same.  Note that presently
		    both strides must have the same value.
		  padding: One of 'VALID' or 'SAME'.
		  data_format: A string. `NHWC` (default) and `NCHW` are supported.
		  activation_fn: Activation function. The default value is a ReLU function.
		    Explicitly set it to None to skip it and maintain a linear activation.
		  normalizer_fn: Normalization function to use instead of `biases`. If
		    `normalizer_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		    default set to None for no normalizer function
		  normalizer_params: Normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional list of collections for all the variables or
		    a dictionary containing a different list of collection per variable.
		  outputs_collections: Collection to add the outputs.
		  trainable: Whether or not the variables should be trainable or not.
		  scope: Optional scope for variable_scope.
		
		Returns:
		  A tensor representing the output of the operation.
		
		Raises:
		  ValueError: If 'kernel_size' is not a list of length 2.
		  ValueError: If `data_format` is neither `NHWC` nor `NCHW`.
		  ValueError: If `C` dimension of `inputs` is None.
	**/
	static public function conv2d_transpose(inputs:Dynamic, num_outputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds an N-D convolution followed by an optional batch_norm layer.
		
		It is required that 1 <= N <= 3.
		
		`convolution` creates a variable called `weights`, representing the
		convolutional kernel, that is convolved (actually cross-correlated) with the
		`inputs` to produce a `Tensor` of activations. If a `normalizer_fn` is
		provided (such as `batch_norm`), it is then applied. Otherwise, if
		`normalizer_fn` is None and a `biases_initializer` is provided then a `biases`
		variable would be created and added the activations. Finally, if
		`activation_fn` is not `None`, it is applied to the activations as well.
		
		Performs atrous convolution with input stride/dilation rate equal to `rate`
		if a value > 1 for any dimension of `rate` is specified.  In this case
		`stride` values != 1 are not supported.
		
		Args:
		  inputs: A Tensor of rank N+2 of shape
		    `[batch_size] + input_spatial_shape + [in_channels]` if data_format does
		    not start with "NC" (default), or
		    `[batch_size, in_channels] + input_spatial_shape` if data_format starts
		    with "NC".
		  num_outputs: Integer, the number of output filters.
		  kernel_size: A sequence of N positive integers specifying the spatial
		    dimensions of the filters.  Can be a single integer to specify the same
		    value for all spatial dimensions.
		  stride: A sequence of N positive integers specifying the stride at which to
		    compute output.  Can be a single integer to specify the same value for all
		    spatial dimensions.  Specifying any `stride` value != 1 is incompatible
		    with specifying any `rate` value != 1.
		  padding: One of `"VALID"` or `"SAME"`.
		  data_format: A string or None.  Specifies whether the channel dimension of
		    the `input` and output is the last dimension (default, or if `data_format`
		    does not start with "NC"), or the second dimension (if `data_format`
		    starts with "NC").  For N=1, the valid values are "NWC" (default) and
		    "NCW".  For N=2, the valid values are "NHWC" (default) and "NCHW".
		    For N=3, the valid values are "NDHWC" (default) and "NCDHW".
		  rate: A sequence of N positive integers specifying the dilation rate to use
		    for atrous convolution.  Can be a single integer to specify the same
		    value for all spatial dimensions.  Specifying any `rate` value != 1 is
		    incompatible with specifying any `stride` value != 1.
		  activation_fn: Activation function. The default value is a ReLU function.
		    Explicitly set it to None to skip it and maintain a linear activation.
		  normalizer_fn: Normalization function to use instead of `biases`. If
		    `normalizer_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		    default set to None for no normalizer function
		  normalizer_params: Normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional list of collections for all the variables or
		    a dictionary containing a different list of collection per variable.
		  outputs_collections: Collection to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for `variable_scope`.
		  conv_dims: Optional convolution dimensionality, when set it would use the
		    corresponding convolution (e.g. 2 for Conv 2D, 3 for Conv 3D, ..). When
		    leaved to None it would select the convolution dimensionality based on
		    the input rank (i.e. Conv ND, with N = input_rank - 2).
		
		Returns:
		  A tensor representing the output of the operation.
		
		Raises:
		  ValueError: If `data_format` is invalid.
		  ValueError: Both 'rate' and `stride` are not uniformly 1.
	**/
	static public function conv3d(inputs:Dynamic, num_outputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?rate:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a convolution3d_transpose with an optional batch normalization layer.
		
		The function creates a variable called `weights`, representing the
		kernel, that is convolved with the input. If `batch_norm_params` is `None`, a
		second variable called 'biases' is added to the result of the operation.
		Args:
		  inputs: A 5-D `Tensor` of type `float` and shape
		    `[batch, depth, height, width, in_channels]` for `NDHWC` data format or
		    `[batch, in_channels, depth, height, width]` for `NCDHW` data format.
		  num_outputs: Integer, the number of output filters.
		  kernel_size: A list of length 3 holding the [kernel_depth, kernel_height,
		    kernel_width] of the filters. Can be an int if both values are the same.
		  stride: A list of length 3: [stride_depth, stride_height, stride_width].
		    Can be an int if both strides are the same.  Note that presently
		    both strides must have the same value.
		  padding: One of 'VALID' or 'SAME'.
		  data_format: A string. `NDHWC` (default) and `NCDHW` are supported.
		  activation_fn: Activation function. The default value is a ReLU function.
		    Explicitly set it to None to skip it and maintain a linear activation.
		  normalizer_fn: Normalization function to use instead of `biases`. If
		    `normalizer_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		    default set to None for no normalizer function
		  normalizer_params: Normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional list of collections for all the variables or
		    a dictionary containing a different list of collection per variable.
		  outputs_collections: Collection to add the outputs.
		  trainable: Whether or not the variables should be trainable or not.
		  scope: Optional scope for variable_scope.
		Returns:
		  A tensor representing the output of the operation.
		Raises:
		  ValueError: If 'kernel_size' is not a list of length 3.
		  ValueError: If `data_format` is neither `NDHWC` nor `NCDHW`.
		  ValueError: If `C` dimension of `inputs` is None.
	**/
	static public function conv3d_transpose(inputs:Dynamic, num_outputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds an N-D convolution followed by an optional batch_norm layer.
		
		It is required that 1 <= N <= 3.
		
		`convolution` creates a variable called `weights`, representing the
		convolutional kernel, that is convolved (actually cross-correlated) with the
		`inputs` to produce a `Tensor` of activations. If a `normalizer_fn` is
		provided (such as `batch_norm`), it is then applied. Otherwise, if
		`normalizer_fn` is None and a `biases_initializer` is provided then a `biases`
		variable would be created and added the activations. Finally, if
		`activation_fn` is not `None`, it is applied to the activations as well.
		
		Performs atrous convolution with input stride/dilation rate equal to `rate`
		if a value > 1 for any dimension of `rate` is specified.  In this case
		`stride` values != 1 are not supported.
		
		Args:
		  inputs: A Tensor of rank N+2 of shape
		    `[batch_size] + input_spatial_shape + [in_channels]` if data_format does
		    not start with "NC" (default), or
		    `[batch_size, in_channels] + input_spatial_shape` if data_format starts
		    with "NC".
		  num_outputs: Integer, the number of output filters.
		  kernel_size: A sequence of N positive integers specifying the spatial
		    dimensions of the filters.  Can be a single integer to specify the same
		    value for all spatial dimensions.
		  stride: A sequence of N positive integers specifying the stride at which to
		    compute output.  Can be a single integer to specify the same value for all
		    spatial dimensions.  Specifying any `stride` value != 1 is incompatible
		    with specifying any `rate` value != 1.
		  padding: One of `"VALID"` or `"SAME"`.
		  data_format: A string or None.  Specifies whether the channel dimension of
		    the `input` and output is the last dimension (default, or if `data_format`
		    does not start with "NC"), or the second dimension (if `data_format`
		    starts with "NC").  For N=1, the valid values are "NWC" (default) and
		    "NCW".  For N=2, the valid values are "NHWC" (default) and "NCHW".
		    For N=3, the valid values are "NDHWC" (default) and "NCDHW".
		  rate: A sequence of N positive integers specifying the dilation rate to use
		    for atrous convolution.  Can be a single integer to specify the same
		    value for all spatial dimensions.  Specifying any `rate` value != 1 is
		    incompatible with specifying any `stride` value != 1.
		  activation_fn: Activation function. The default value is a ReLU function.
		    Explicitly set it to None to skip it and maintain a linear activation.
		  normalizer_fn: Normalization function to use instead of `biases`. If
		    `normalizer_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		    default set to None for no normalizer function
		  normalizer_params: Normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional list of collections for all the variables or
		    a dictionary containing a different list of collection per variable.
		  outputs_collections: Collection to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for `variable_scope`.
		  conv_dims: Optional convolution dimensionality, when set it would use the
		    corresponding convolution (e.g. 2 for Conv 2D, 3 for Conv 3D, ..). When
		    leaved to None it would select the convolution dimensionality based on
		    the input rank (i.e. Conv ND, with N = input_rank - 2).
		
		Returns:
		  A tensor representing the output of the operation.
		
		Raises:
		  ValueError: If `data_format` is invalid.
		  ValueError: Both 'rate' and `stride` are not uniformly 1.
	**/
	static public function convolution(inputs:Dynamic, num_outputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?rate:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic, ?conv_dims:Dynamic):Dynamic;
	/**
		Adds an N-D convolution followed by an optional batch_norm layer.
		
		It is required that 1 <= N <= 3.
		
		`convolution` creates a variable called `weights`, representing the
		convolutional kernel, that is convolved (actually cross-correlated) with the
		`inputs` to produce a `Tensor` of activations. If a `normalizer_fn` is
		provided (such as `batch_norm`), it is then applied. Otherwise, if
		`normalizer_fn` is None and a `biases_initializer` is provided then a `biases`
		variable would be created and added the activations. Finally, if
		`activation_fn` is not `None`, it is applied to the activations as well.
		
		Performs atrous convolution with input stride/dilation rate equal to `rate`
		if a value > 1 for any dimension of `rate` is specified.  In this case
		`stride` values != 1 are not supported.
		
		Args:
		  inputs: A Tensor of rank N+2 of shape
		    `[batch_size] + input_spatial_shape + [in_channels]` if data_format does
		    not start with "NC" (default), or
		    `[batch_size, in_channels] + input_spatial_shape` if data_format starts
		    with "NC".
		  num_outputs: Integer, the number of output filters.
		  kernel_size: A sequence of N positive integers specifying the spatial
		    dimensions of the filters.  Can be a single integer to specify the same
		    value for all spatial dimensions.
		  stride: A sequence of N positive integers specifying the stride at which to
		    compute output.  Can be a single integer to specify the same value for all
		    spatial dimensions.  Specifying any `stride` value != 1 is incompatible
		    with specifying any `rate` value != 1.
		  padding: One of `"VALID"` or `"SAME"`.
		  data_format: A string or None.  Specifies whether the channel dimension of
		    the `input` and output is the last dimension (default, or if `data_format`
		    does not start with "NC"), or the second dimension (if `data_format`
		    starts with "NC").  For N=1, the valid values are "NWC" (default) and
		    "NCW".  For N=2, the valid values are "NHWC" (default) and "NCHW".
		    For N=3, the valid values are "NDHWC" (default) and "NCDHW".
		  rate: A sequence of N positive integers specifying the dilation rate to use
		    for atrous convolution.  Can be a single integer to specify the same
		    value for all spatial dimensions.  Specifying any `rate` value != 1 is
		    incompatible with specifying any `stride` value != 1.
		  activation_fn: Activation function. The default value is a ReLU function.
		    Explicitly set it to None to skip it and maintain a linear activation.
		  normalizer_fn: Normalization function to use instead of `biases`. If
		    `normalizer_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		    default set to None for no normalizer function
		  normalizer_params: Normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional list of collections for all the variables or
		    a dictionary containing a different list of collection per variable.
		  outputs_collections: Collection to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for `variable_scope`.
		  conv_dims: Optional convolution dimensionality, when set it would use the
		    corresponding convolution (e.g. 2 for Conv 2D, 3 for Conv 3D, ..). When
		    leaved to None it would select the convolution dimensionality based on
		    the input rank (i.e. Conv ND, with N = input_rank - 2).
		
		Returns:
		  A tensor representing the output of the operation.
		
		Raises:
		  ValueError: If `data_format` is invalid.
		  ValueError: Both 'rate' and `stride` are not uniformly 1.
	**/
	static public function convolution1d(inputs:Dynamic, num_outputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?rate:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds an N-D convolution followed by an optional batch_norm layer.
		
		It is required that 1 <= N <= 3.
		
		`convolution` creates a variable called `weights`, representing the
		convolutional kernel, that is convolved (actually cross-correlated) with the
		`inputs` to produce a `Tensor` of activations. If a `normalizer_fn` is
		provided (such as `batch_norm`), it is then applied. Otherwise, if
		`normalizer_fn` is None and a `biases_initializer` is provided then a `biases`
		variable would be created and added the activations. Finally, if
		`activation_fn` is not `None`, it is applied to the activations as well.
		
		Performs atrous convolution with input stride/dilation rate equal to `rate`
		if a value > 1 for any dimension of `rate` is specified.  In this case
		`stride` values != 1 are not supported.
		
		Args:
		  inputs: A Tensor of rank N+2 of shape
		    `[batch_size] + input_spatial_shape + [in_channels]` if data_format does
		    not start with "NC" (default), or
		    `[batch_size, in_channels] + input_spatial_shape` if data_format starts
		    with "NC".
		  num_outputs: Integer, the number of output filters.
		  kernel_size: A sequence of N positive integers specifying the spatial
		    dimensions of the filters.  Can be a single integer to specify the same
		    value for all spatial dimensions.
		  stride: A sequence of N positive integers specifying the stride at which to
		    compute output.  Can be a single integer to specify the same value for all
		    spatial dimensions.  Specifying any `stride` value != 1 is incompatible
		    with specifying any `rate` value != 1.
		  padding: One of `"VALID"` or `"SAME"`.
		  data_format: A string or None.  Specifies whether the channel dimension of
		    the `input` and output is the last dimension (default, or if `data_format`
		    does not start with "NC"), or the second dimension (if `data_format`
		    starts with "NC").  For N=1, the valid values are "NWC" (default) and
		    "NCW".  For N=2, the valid values are "NHWC" (default) and "NCHW".
		    For N=3, the valid values are "NDHWC" (default) and "NCDHW".
		  rate: A sequence of N positive integers specifying the dilation rate to use
		    for atrous convolution.  Can be a single integer to specify the same
		    value for all spatial dimensions.  Specifying any `rate` value != 1 is
		    incompatible with specifying any `stride` value != 1.
		  activation_fn: Activation function. The default value is a ReLU function.
		    Explicitly set it to None to skip it and maintain a linear activation.
		  normalizer_fn: Normalization function to use instead of `biases`. If
		    `normalizer_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		    default set to None for no normalizer function
		  normalizer_params: Normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional list of collections for all the variables or
		    a dictionary containing a different list of collection per variable.
		  outputs_collections: Collection to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for `variable_scope`.
		  conv_dims: Optional convolution dimensionality, when set it would use the
		    corresponding convolution (e.g. 2 for Conv 2D, 3 for Conv 3D, ..). When
		    leaved to None it would select the convolution dimensionality based on
		    the input rank (i.e. Conv ND, with N = input_rank - 2).
		
		Returns:
		  A tensor representing the output of the operation.
		
		Raises:
		  ValueError: If `data_format` is invalid.
		  ValueError: Both 'rate' and `stride` are not uniformly 1.
	**/
	static public function convolution2d(inputs:Dynamic, num_outputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?rate:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Performs the same in-plane convolution to each channel independently.
		
		This is useful for performing various simple channel-independent convolution
		operations such as image gradients:
		
		  image = tf.constant(..., shape=(16, 240, 320, 3))
		  vert_gradients = layers.conv2d_in_plane(image,
		                                          kernel=[1, -1],
		                                          kernel_size=[2, 1])
		  horz_gradients = layers.conv2d_in_plane(image,
		                                          kernel=[1, -1],
		                                          kernel_size=[1, 2])
		
		Args:
		  inputs: A 4-D tensor with dimensions [batch_size, height, width, channels].
		  kernel_size: A list of length 2 holding the [kernel_height, kernel_width] of
		    of the pooling. Can be an int if both values are the same.
		  stride: A list of length 2 `[stride_height, stride_width]`.
		    Can be an int if both strides are the same. Note that presently
		    both strides must have the same value.
		  padding: The padding type to use, either 'SAME' or 'VALID'.
		  activation_fn: Activation function. The default value is a ReLU function.
		    Explicitly set it to None to skip it and maintain a linear activation.
		  normalizer_fn: Normalization function to use instead of `biases`. If
		    `normalizer_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		    default set to None for no normalizer function
		  normalizer_params: Normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional list of collections for all the variables or
		    a dictionary containing a different list of collection per variable.
		  outputs_collections: Collection to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for `variable_scope`.
		
		Returns:
		  A `Tensor` representing the output of the operation.
	**/
	static public function convolution2d_in_plane(inputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a convolution2d_transpose with an optional batch normalization layer.
		
		The function creates a variable called `weights`, representing the
		kernel, that is convolved with the input. If `normalizer_fn` is `None`, a
		second variable called 'biases' is added to the result of the operation.
		
		Args:
		  inputs: A 4-D `Tensor` of type `float` and shape
		    `[batch, height, width, in_channels]` for `NHWC` data format or
		    `[batch, in_channels, height, width]` for `NCHW` data format.
		  num_outputs: Integer, the number of output filters.
		  kernel_size: A list of length 2 holding the [kernel_height, kernel_width] of
		    of the filters. Can be an int if both values are the same.
		  stride: A list of length 2: [stride_height, stride_width].
		    Can be an int if both strides are the same.  Note that presently
		    both strides must have the same value.
		  padding: One of 'VALID' or 'SAME'.
		  data_format: A string. `NHWC` (default) and `NCHW` are supported.
		  activation_fn: Activation function. The default value is a ReLU function.
		    Explicitly set it to None to skip it and maintain a linear activation.
		  normalizer_fn: Normalization function to use instead of `biases`. If
		    `normalizer_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		    default set to None for no normalizer function
		  normalizer_params: Normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional list of collections for all the variables or
		    a dictionary containing a different list of collection per variable.
		  outputs_collections: Collection to add the outputs.
		  trainable: Whether or not the variables should be trainable or not.
		  scope: Optional scope for variable_scope.
		
		Returns:
		  A tensor representing the output of the operation.
		
		Raises:
		  ValueError: If 'kernel_size' is not a list of length 2.
		  ValueError: If `data_format` is neither `NHWC` nor `NCHW`.
		  ValueError: If `C` dimension of `inputs` is None.
	**/
	static public function convolution2d_transpose(inputs:Dynamic, num_outputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds an N-D convolution followed by an optional batch_norm layer.
		
		It is required that 1 <= N <= 3.
		
		`convolution` creates a variable called `weights`, representing the
		convolutional kernel, that is convolved (actually cross-correlated) with the
		`inputs` to produce a `Tensor` of activations. If a `normalizer_fn` is
		provided (such as `batch_norm`), it is then applied. Otherwise, if
		`normalizer_fn` is None and a `biases_initializer` is provided then a `biases`
		variable would be created and added the activations. Finally, if
		`activation_fn` is not `None`, it is applied to the activations as well.
		
		Performs atrous convolution with input stride/dilation rate equal to `rate`
		if a value > 1 for any dimension of `rate` is specified.  In this case
		`stride` values != 1 are not supported.
		
		Args:
		  inputs: A Tensor of rank N+2 of shape
		    `[batch_size] + input_spatial_shape + [in_channels]` if data_format does
		    not start with "NC" (default), or
		    `[batch_size, in_channels] + input_spatial_shape` if data_format starts
		    with "NC".
		  num_outputs: Integer, the number of output filters.
		  kernel_size: A sequence of N positive integers specifying the spatial
		    dimensions of the filters.  Can be a single integer to specify the same
		    value for all spatial dimensions.
		  stride: A sequence of N positive integers specifying the stride at which to
		    compute output.  Can be a single integer to specify the same value for all
		    spatial dimensions.  Specifying any `stride` value != 1 is incompatible
		    with specifying any `rate` value != 1.
		  padding: One of `"VALID"` or `"SAME"`.
		  data_format: A string or None.  Specifies whether the channel dimension of
		    the `input` and output is the last dimension (default, or if `data_format`
		    does not start with "NC"), or the second dimension (if `data_format`
		    starts with "NC").  For N=1, the valid values are "NWC" (default) and
		    "NCW".  For N=2, the valid values are "NHWC" (default) and "NCHW".
		    For N=3, the valid values are "NDHWC" (default) and "NCDHW".
		  rate: A sequence of N positive integers specifying the dilation rate to use
		    for atrous convolution.  Can be a single integer to specify the same
		    value for all spatial dimensions.  Specifying any `rate` value != 1 is
		    incompatible with specifying any `stride` value != 1.
		  activation_fn: Activation function. The default value is a ReLU function.
		    Explicitly set it to None to skip it and maintain a linear activation.
		  normalizer_fn: Normalization function to use instead of `biases`. If
		    `normalizer_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		    default set to None for no normalizer function
		  normalizer_params: Normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional list of collections for all the variables or
		    a dictionary containing a different list of collection per variable.
		  outputs_collections: Collection to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for `variable_scope`.
		  conv_dims: Optional convolution dimensionality, when set it would use the
		    corresponding convolution (e.g. 2 for Conv 2D, 3 for Conv 3D, ..). When
		    leaved to None it would select the convolution dimensionality based on
		    the input rank (i.e. Conv ND, with N = input_rank - 2).
		
		Returns:
		  A tensor representing the output of the operation.
		
		Raises:
		  ValueError: If `data_format` is invalid.
		  ValueError: Both 'rate' and `stride` are not uniformly 1.
	**/
	static public function convolution3d(inputs:Dynamic, num_outputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?rate:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a convolution3d_transpose with an optional batch normalization layer.
		
		The function creates a variable called `weights`, representing the
		kernel, that is convolved with the input. If `batch_norm_params` is `None`, a
		second variable called 'biases' is added to the result of the operation.
		Args:
		  inputs: A 5-D `Tensor` of type `float` and shape
		    `[batch, depth, height, width, in_channels]` for `NDHWC` data format or
		    `[batch, in_channels, depth, height, width]` for `NCDHW` data format.
		  num_outputs: Integer, the number of output filters.
		  kernel_size: A list of length 3 holding the [kernel_depth, kernel_height,
		    kernel_width] of the filters. Can be an int if both values are the same.
		  stride: A list of length 3: [stride_depth, stride_height, stride_width].
		    Can be an int if both strides are the same.  Note that presently
		    both strides must have the same value.
		  padding: One of 'VALID' or 'SAME'.
		  data_format: A string. `NDHWC` (default) and `NCDHW` are supported.
		  activation_fn: Activation function. The default value is a ReLU function.
		    Explicitly set it to None to skip it and maintain a linear activation.
		  normalizer_fn: Normalization function to use instead of `biases`. If
		    `normalizer_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		    default set to None for no normalizer function
		  normalizer_params: Normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional list of collections for all the variables or
		    a dictionary containing a different list of collection per variable.
		  outputs_collections: Collection to add the outputs.
		  trainable: Whether or not the variables should be trainable or not.
		  scope: Optional scope for variable_scope.
		Returns:
		  A tensor representing the output of the operation.
		Raises:
		  ValueError: If 'kernel_size' is not a list of length 3.
		  ValueError: If `data_format` is neither `NDHWC` nor `NCDHW`.
		  ValueError: If `C` dimension of `inputs` is None.
	**/
	static public function convolution3d_transpose(inputs:Dynamic, num_outputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Helper that prepares features config from input feature_columns.
		
		The returned feature config can be used as arg 'features' in tf.parse_example.
		
		Typical usage example:
		
		```python
		# Define features and transformations
		feature_a = sparse_column_with_vocabulary_file(...)
		feature_b = real_valued_column(...)
		feature_c_bucketized = bucketized_column(real_valued_column("feature_c"), ...)
		feature_a_x_feature_c = crossed_column(
		  columns=[feature_a, feature_c_bucketized], ...)
		
		feature_columns = set(
		  [feature_b, feature_c_bucketized, feature_a_x_feature_c])
		batch_examples = tf.parse_example(
		    serialized=serialized_examples,
		    features=create_feature_spec_for_parsing(feature_columns))
		```
		
		For the above example, create_feature_spec_for_parsing would return the dict:
		{
		  "feature_a": parsing_ops.VarLenFeature(tf.string),
		  "feature_b": parsing_ops.FixedLenFeature([1], dtype=tf.float32),
		  "feature_c": parsing_ops.FixedLenFeature([1], dtype=tf.float32)
		}
		
		Args:
		  feature_columns: An iterable containing all the feature columns. All items
		    should be instances of classes derived from _FeatureColumn, unless
		    feature_columns is a dict -- in which case, this should be true of all
		    values in the dict.
		Returns:
		  A dict mapping feature keys to FixedLenFeature or VarLenFeature values.
	**/
	static public function create_feature_spec_for_parsing(feature_columns:Dynamic):Dynamic;
	/**
		Create global step tensor in graph. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.train.create_global_step
		
		This API is deprecated. Use core framework training version instead.
		
		Args:
		  graph: The graph in which to create the global step tensor. If missing,
		    use default graph.
		
		Returns:
		  Global step tensor.
		
		Raises:
		  ValueError: if global step tensor is already defined.
	**/
	static public function create_global_step(?graph:Dynamic):Dynamic;
	/**
		Creates a _CrossedColumn for performing feature crosses.
		
		Args:
		  columns: An iterable of _FeatureColumn. Items can be an instance of
		    _SparseColumn, _CrossedColumn, or _BucketizedColumn.
		  hash_bucket_size: An int that is > 1. The number of buckets.
		  combiner: A string specifying how to reduce if there are multiple entries
		    in a single row. Currently "mean", "sqrtn" and "sum" are supported, with
		    "sum" the default. "sqrtn" often achieves good accuracy, in particular
		    with bag-of-words columns. Each of this can be thought as example level
		    normalizations on the column::
		      * "sum": do not normalize
		      * "mean": do l1 normalization
		      * "sqrtn": do l2 normalization
		    For more information: `tf.embedding_lookup_sparse`.
		  ckpt_to_load_from: (Optional). String representing checkpoint name/pattern
		    to restore the column weights. Required if `tensor_name_in_ckpt` is not
		    None.
		  tensor_name_in_ckpt: (Optional). Name of the `Tensor` in the provided
		    checkpoint from which to restore the column weights. Required if
		    `ckpt_to_load_from` is not None.
		  hash_key: Specify the hash_key that will be used by the `FingerprintCat64`
		    function to combine the crosses fingerprints on SparseFeatureCrossOp
		    (optional).
		
		Returns:
		  A _CrossedColumn.
		
		Raises:
		  TypeError: if any item in columns is not an instance of _SparseColumn,
		    _CrossedColumn, or _BucketizedColumn, or
		    hash_bucket_size is not an int.
		  ValueError: if hash_bucket_size is not > 1 or
		    len(columns) is not > 1.
	**/
	static public function crossed_column(columns:Dynamic, hash_bucket_size:Dynamic, ?combiner:Dynamic, ?ckpt_to_load_from:Dynamic, ?tensor_name_in_ckpt:Dynamic, ?hash_key:Dynamic):Dynamic;
	static public function current_arg_scope():Dynamic;
	/**
		Converts a dense tensor into a sparse tensor.
		
		An example use would be to convert dense labels to sparse ones
		so that they can be fed to the ctc_loss.
		
		Args:
		   tensor: An `int` `Tensor` to be converted to a `Sparse`.
		   eos_token: An integer.
		     It is part of the target label that signifies the end of a sentence.
		   outputs_collections: Collection to add the outputs.
		   scope: Optional scope for name_scope.
	**/
	static public function dense_to_sparse(tensor:Dynamic, ?eos_token:Dynamic, ?outputs_collections:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Decorator for marking functions or methods deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called. It has the following format:
		
		  <function> (from <module>) is deprecated and will be removed after <date>.
		  Instructions for updating:
		  <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated)' is appended
		to the first line of the docstring and a deprecation notice is prepended
		to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None.
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  warn_once: Boolean. Set to `True` to warn only the first time the decorated
		    function is called. Otherwise, every call will log a warning.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, or instructions are
		    empty.
	**/
	static public function deprecated(date:Dynamic, instructions:Dynamic, ?warn_once:Dynamic):Dynamic;
	/**
		Decorator for marking specific function argument values as deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called with the deprecated argument values. It has the following format:
		
		  Calling <function> (from <module>) with <arg>=<value> is deprecated and
		  will be removed after <date>. Instructions for updating:
		    <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated arguments)' is
		appended to the first line of the docstring and a deprecation notice is
		prepended to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  warn_once: If `True`, warn only the first time this function is called with
		    deprecated argument values. Otherwise, every call (with a deprecated
		    argument value) will log a warning.
		  **deprecated_kwargs: The deprecated argument values.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, or instructions are
		    empty.
	**/
	static public function deprecated_arg_values(date:Dynamic, instructions:Dynamic, ?warn_once:Dynamic, ?deprecated_kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		Returns a dropout op applied to the input.
		
		With probability `keep_prob`, outputs the input element scaled up by
		`1 / keep_prob`, otherwise outputs `0`.  The scaling is so that the expected
		sum is unchanged.
		
		Args:
		  inputs: The tensor to pass to the nn.dropout op.
		  keep_prob: A scalar `Tensor` with the same type as x. The probability
		    that each element is kept.
		  noise_shape: A 1-D `Tensor` of type `int32`, representing the
		    shape for randomly generated keep/drop flags.
		  is_training: A bool `Tensor` indicating whether or not the model
		    is in training mode. If so, dropout is applied and values scaled.
		    Otherwise, inputs is returned.
		  outputs_collections: Collection to add the outputs.
		  scope: Optional scope for name_scope.
		  seed: A Python integer. Used to create random seeds. See
		    `tf.set_random_seed` for behavior.
		
		Returns:
		  A tensor representing the output of the operation.
	**/
	static public function dropout(inputs:Dynamic, ?keep_prob:Dynamic, ?noise_shape:Dynamic, ?is_training:Dynamic, ?outputs_collections:Dynamic, ?scope:Dynamic, ?seed:Dynamic):Dynamic;
	static public function elu(inputs:Dynamic, num_outputs:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Maps a sequence of symbols to a sequence of embeddings.
		
		Typical use case would be reusing embeddings between an encoder and decoder.
		
		Args:
		  ids: `[batch_size, doc_length]` `Tensor` of type `int32` or `int64`
		    with symbol ids.
		  vocab_size: Integer number of symbols in vocabulary.
		  embed_dim: Integer number of dimensions for embedding matrix.
		  unique: If `True`, will first compute the unique set of indices, and then
		       lookup each embedding once, repeating them in the output as needed.
		  initializer: An initializer for the embeddings, if `None` default for
		      current scope is used.
		  regularizer: Optional regularizer for the embeddings.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  scope: Optional string specifying the variable scope for the op, required
		      if `reuse=True`.
		  reuse: If `True`, variables inside the op will be reused.
		
		Returns:
		  `Tensor` of `[batch_size, doc_length, embed_dim]` with embedded sequences.
		
		Raises:
		  ValueError: if `embed_dim` or `vocab_size` are not specified when
		    `reuse` is `None` or `False`.
	**/
	static public function embed_sequence(ids:Dynamic, ?vocab_size:Dynamic, ?embed_dim:Dynamic, ?unique:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?trainable:Dynamic, ?scope:Dynamic, ?reuse:Dynamic):Dynamic;
	/**
		Creates an `_EmbeddingColumn` for feeding sparse data into a DNN.
		
		Args:
		  sparse_id_column: A `_SparseColumn` which is created by for example
		    `sparse_column_with_*` or crossed_column functions. Note that `combiner`
		    defined in `sparse_id_column` is ignored.
		  dimension: An integer specifying dimension of the embedding.
		  combiner: A string specifying how to reduce if there are multiple entries
		    in a single row. Currently "mean", "sqrtn" and "sum" are supported, with
		    "mean" the default. "sqrtn" often achieves good accuracy, in particular
		    with bag-of-words columns. Each of this can be thought as example level
		    normalizations on the column:
		      * "sum": do not normalize
		      * "mean": do l1 normalization
		      * "sqrtn": do l2 normalization
		    For more information: `tf.embedding_lookup_sparse`.
		  initializer: A variable initializer function to be used in embedding
		    variable initialization. If not specified, defaults to
		    `tf.truncated_normal_initializer` with mean 0.0 and standard deviation
		    1/sqrt(sparse_id_column.length).
		  ckpt_to_load_from: (Optional). String representing checkpoint name/pattern
		    to restore the column weights. Required if `tensor_name_in_ckpt` is not
		    None.
		  tensor_name_in_ckpt: (Optional). Name of the `Tensor` in the provided
		    checkpoint from which to restore the column weights. Required if
		    `ckpt_to_load_from` is not None.
		  max_norm: (Optional). If not None, embedding values are l2-normalized to
		    the value of max_norm.
		  trainable: (Optional). Should the embedding be trainable. Default is True
		
		Returns:
		  An `_EmbeddingColumn`.
	**/
	static public function embedding_column(sparse_id_column:Dynamic, dimension:Dynamic, ?combiner:Dynamic, ?initializer:Dynamic, ?ckpt_to_load_from:Dynamic, ?tensor_name_in_ckpt:Dynamic, ?max_norm:Dynamic, ?trainable:Dynamic):Dynamic;
	/**
		Computes embeddings for the given ids and weights.
		
		Embeddings belonging to same param are aggregated on that device first. This
		op is intended to decrease data transmission and improve parallelism. See
		`tf.nn.embedding_lookup_sparse` for the functionality and example of this op.
		
		Args:
		  params: A single tensor representing the complete embedding tensor,
		    or a list of P tensors all of same shape except for the first dimension,
		    representing sharded embedding tensors.  Alternatively, a
		    `PartitionedVariable`, created by partitioning along dimension 0. Each
		    element must be appropriately sized for the given `partition_strategy`.
		  sp_ids: N x M SparseTensor of int64 ids (typically from FeatureValueToId),
		    where N is typically batch size and M is arbitrary.
		  sp_weights: either a SparseTensor of float / double weights, or None to
		    indicate all weights should be taken to be 1. If specified, sp_weights
		    must have exactly the same shape and indices as sp_ids.
		  partition_strategy: A string specifying the partitioning strategy, relevant
		    if `len(params) > 1`. Currently `"div"` and `"mod"` are supported. Default
		    is `"mod"`. See `tf.nn.embedding_lookup` for more details.
		  name: Optional name for the op.
		  combiner: A string specifying the reduction op. Currently "mean", "sqrtn"
		    and "sum" are supported.
		    "sum" computes the weighted sum of the embedding results for each row.
		    "mean" is the weighted sum divided by the total weight.
		    "sqrtn" is the weighted sum divided by the square root of the sum of the
		    squares of the weights.
		  max_norm: If not None, each embedding is normalized to have l2 norm equal
		    to max_norm before combining.
		
		Returns:
		  A dense tensor representing the combined embeddings for the
		  sparse ids. For each row in the dense tensor represented by sp_ids, the op
		  looks up the embeddings for all ids in that row, multiplies them by the
		  corresponding weight, and combines these embeddings as specified.
		
		Raises:
		  TypeError: If sp_ids is not a SparseTensor, or if sp_weights is neither
		    None nor SparseTensor.
		  ValueError: If combiner is not one of {"mean", "sqrtn", "sum"}.
	**/
	static public function embedding_lookup_sparse_with_distributed_aggregation(params:Dynamic, sp_ids:Dynamic, sp_weights:Dynamic, ?partition_strategy:Dynamic, ?name:Dynamic, ?combiner:Dynamic, ?max_norm:Dynamic):Dynamic;
	/**
		Version of embedding_lookup that avoids duplicate lookups.
		
		This can save communication in the case of repeated ids.
		Same interface as embedding_lookup. Except it supports multi-dimensional `ids`
		which allows to not reshape input/output to fit gather.
		
		Args:
		  params: A list of tensors with the same shape and type, or a
		    `PartitionedVariable`. Shape `[index, d1, d2, ...]`.
		  ids: A one-dimensional `Tensor` with type `int32` or `int64` containing
		    the ids to be looked up in `params`. Shape `[ids1, ids2, ...]`.
		  partition_strategy: A string specifying the partitioning strategy, relevant
		    if `len(params) > 1`. Currently `"div"` and `"mod"` are supported. Default
		    is `"mod"`.
		  name: A name for this operation (optional).
		
		Returns:
		  A `Tensor` with the same type as the tensors in `params` and dimension of
		  `[ids1, ids2, d1, d2, ...]`.
		
		Raises:
		  ValueError: If `params` is empty.
	**/
	static public function embedding_lookup_unique(params:Dynamic, ids:Dynamic, ?partition_strategy:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Decorator for marking functions or methods experimental.
		
		This decorator logs an experimental warning whenever the decorated function is
		called. It has the following format:
		
		  <function> (from <module>) is experimental and may change or be removed at
		  any time, and without warning.
		
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (experimental)' is appended
		to the first line of the docstring and a notice is prepended to the rest of
		the docstring.
		
		Args:
		  func: A function or method to mark experimental.
		
		Returns:
		  Decorated function or method.
	**/
	static public function experimental(func:Dynamic):Dynamic;
	/**
		Filter a list of variables using regular expressions.
		
		First includes variables according to the list of include_patterns.
		Afterwards, eliminates variables according to the list of exclude_patterns.
		
		For example, one can obtain a list of variables with the weights of all
		convolutional layers (depending on the network definition) by:
		
		```python
		variables = tf.contrib.framework.get_model_variables()
		conv_weight_variables = tf.contrib.framework.filter_variables(
		    variables,
		    include_patterns=['Conv'],
		    exclude_patterns=['biases', 'Logits'])
		```
		
		Args:
		  var_list: list of variables.
		  include_patterns: list of regular expressions to include. Defaults to None,
		      which means all variables are selected according to the include rules.
		      A variable is included if it matches any of the include_patterns.
		  exclude_patterns: list of regular expressions to exclude. Defaults to None,
		      which means all variables are selected according to the exclude rules.
		      A variable is excluded if it matches any of the exclude_patterns.
		  reg_search: boolean. If True (default), performs re.search to find matches
		      (i.e. pattern can match any substring of the variable name). If False,
		      performs re.match (i.e. regexp should match from the beginning of the
		      variable name).
		
		Returns:
		  filtered list of variables.
	**/
	static public function filter_variables(var_list:Dynamic, ?include_patterns:Dynamic, ?exclude_patterns:Dynamic, ?reg_search:Dynamic):Dynamic;
	/**
		Flattens the input while maintaining the batch_size.
		
		  Assumes that the first dimension represents the batch.
		
		Args:
		  inputs: A tensor of size [batch_size, ...].
		  outputs_collections: Collection to add the outputs.
		  scope: Optional scope for name_scope.
		
		Returns:
		  A flattened tensor with shape [batch_size, k].
		Raises:
		  ValueError: If inputs rank is unknown or less than 2.
	**/
	static public function flatten(inputs:Dynamic, ?outputs_collections:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a fully connected layer.
		
		`fully_connected` creates a variable called `weights`, representing a fully
		connected weight matrix, which is multiplied by the `inputs` to produce a
		`Tensor` of hidden units. If a `normalizer_fn` is provided (such as
		`batch_norm`), it is then applied. Otherwise, if `normalizer_fn` is
		None and a `biases_initializer` is provided then a `biases` variable would be
		created and added the hidden units. Finally, if `activation_fn` is not `None`,
		it is applied to the hidden units as well.
		
		Note: that if `inputs` have a rank greater than 2, then `inputs` is flattened
		prior to the initial matrix multiply by `weights`.
		
		Args:
		  inputs: A tensor of at least rank 2 and static value for the last dimension;
		    i.e. `[batch_size, depth]`, `[None, None, None, channels]`.
		  num_outputs: Integer or long, the number of output units in the layer.
		  activation_fn: Activation function. The default value is a ReLU function.
		    Explicitly set it to None to skip it and maintain a linear activation.
		  normalizer_fn: Normalization function to use instead of `biases`. If
		    `normalizer_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		    default set to None for no normalizer function
		  normalizer_params: Normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional list of collections for all the variables or
		    a dictionary containing a different list of collections per variable.
		  outputs_collections: Collection to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for variable_scope.
		
		Returns:
		   The tensor variable representing the result of the series of operations.
		
		Raises:
		  ValueError: If x has rank less than 2 or if its last dimension is not set.
	**/
	static public function fully_connected(inputs:Dynamic, num_outputs:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Functional interface for GDN layer.
		
		Based on the papers:
		
		  "Density Modeling of Images using a Generalized Normalization
		  Transformation"
		  Johannes Ballé, Valero Laparra, Eero P. Simoncelli
		  https://arxiv.org/abs/1511.06281
		
		  "End-to-end Optimized Image Compression"
		  Johannes Ballé, Valero Laparra, Eero P. Simoncelli
		  https://arxiv.org/abs/1611.01704
		
		Implements an activation function that is essentially a multivariate
		generalization of a particular sigmoid-type function:
		
		```
		y[i] = x[i] / sqrt(beta[i] + sum_j(gamma[j, i] * x[j]))
		```
		
		where `i` and `j` run over channels. This implementation never sums across
		spatial dimensions. It is similar to local response normalization, but much
		more flexible, as `beta` and `gamma` are trainable parameters.
		
		Args:
		  inputs: Tensor input.
		  inverse: If `False` (default), compute GDN response. If `True`, compute IGDN
		    response (one step of fixed point iteration to invert GDN; the division
		    is replaced by multiplication).
		  beta_min: Lower bound for beta, to prevent numerical error from causing
		    square root of zero or negative values.
		  gamma_init: The gamma matrix will be initialized as the identity matrix
		    multiplied with this value. If set to zero, the layer is effectively
		    initialized to the identity operation, since beta is initialized as one.
		    A good default setting is somewhere between 0 and 0.5.
		  reparam_offset: Offset added to the reparameterization of beta and gamma.
		    The reparameterization of beta and gamma as their square roots lets the
		    training slow down when their values are close to zero, which is desirable
		    as small values in the denominator can lead to a situation where gradient
		    noise on beta/gamma leads to extreme amounts of noise in the GDN
		    activations. However, without the offset, we would get zero gradients if
		    any elements of beta or gamma were exactly zero, and thus the training
		    could get stuck. To prevent this, we add this small constant. The default
		    value was empirically determined as a good starting point. Making it
		    bigger potentially leads to more gradient noise on the activations, making
		    it too small may lead to numerical precision issues.
		  data_format: Format of input tensor. Currently supports `'channels_first'`
		    and `'channels_last'`.
		  activity_regularizer: Regularizer function for the output.
		  trainable: Boolean, if `True`, also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  name: String, the name of the layer. Layers with the same name will
		    share weights, but to avoid mistakes we require `reuse=True` in such
		    cases.
		  reuse: Boolean, whether to reuse the weights of a previous layer by the same
		    name.
		
		Returns:
		  Output tensor.
	**/
	static public function gdn(inputs:Dynamic, ?inverse:Dynamic, ?beta_min:Dynamic, ?gamma_init:Dynamic, ?reparam_offset:Dynamic, ?data_format:Dynamic, ?activity_regularizer:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?reuse:Dynamic):Dynamic;
	/**
		Returns a dictionary of basic metrics for logistic regression. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-11-12.
		Instructions for updating:
		This file will be removed after the deprecation date.Please switch to third_party/tensorflow/contrib/learn/python/learn/estimators/head.py
		
		Args:
		  thresholds: List of floating point thresholds to use for accuracy,
		    precision, and recall metrics. If None, defaults to [0.5].
		
		Returns:
		  Dictionary mapping metrics string names to metrics functions.
	**/
	static public function get_default_binary_metrics_for_eval(thresholds:Dynamic):Dynamic;
	/**
		DEPRECATED FUNCTION
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.train.get_global_step
	**/
	static public function get_global_step(?graph:Dynamic):Dynamic;
	/**
		Gets the list of local variables, filtered by scope and/or suffix.
		
		Args:
		  scope: an optional scope for filtering the variables to return.
		  suffix: an optional suffix for filtering the variables to return.
		
		Returns:
		  a list of variables in collection with scope and suffix.
	**/
	static public function get_local_variables(?scope:Dynamic, ?suffix:Dynamic):Dynamic;
	/**
		Gets the list of model variables, filtered by scope and/or suffix.
		
		Args:
		  scope: an optional scope for filtering the variables to return.
		  suffix: an optional suffix for filtering the variables to return.
		
		Returns:
		  a list of variables in collection with scope and suffix.
	**/
	static public function get_model_variables(?scope:Dynamic, ?suffix:Dynamic):Dynamic;
	/**
		Returns and create (if necessary) the global step tensor. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.train.get_or_create_global_step
		
		Args:
		  graph: The graph in which to create the global step tensor. If missing, use
		    default graph.
		
		Returns:
		  The global step tensor.
	**/
	static public function get_or_create_global_step(?graph:Dynamic):Dynamic;
	/**
		Gets the list of trainable variables, filtered by scope and/or suffix.
		
		Args:
		  scope: an optional scope for filtering the variables to return.
		  suffix: an optional suffix for filtering the variables to return.
		
		Returns:
		  a list of variables in the trainable collection with scope and suffix.
	**/
	static public function get_trainable_variables(?scope:Dynamic, ?suffix:Dynamic):Dynamic;
	/**
		Gets the variable uniquely identified by that var_op_name.
		
		Args:
		  var_op_name: the full name of the variable op, including the scope.
		
		Returns:
		  a tensorflow variable.
		
		Raises:
		  ValueError: if no variable uniquely identified by the name exists.
	**/
	static public function get_unique_variable(var_op_name:Dynamic):Dynamic;
	/**
		Returns the full name of a variable.
		
		For normal Variables, this is the same as the var.op.name.  For
		sliced or PartitionedVariables, this name is the same for all the
		slices/partitions. In both cases, this is normally the name used in
		a checkpoint file.
		
		Args:
		  var: A `Variable` object.
		
		Returns:
		  A string that is the full name.
	**/
	static public function get_variable_full_name(_var:Dynamic):Dynamic;
	/**
		Gets the list of variables, filtered by scope and/or suffix.
		
		Args:
		  scope: an optional scope for filtering the variables to return. Can be a
		    variable scope or a string.
		  suffix: an optional suffix for filtering the variables to return.
		  collection: in which collection search for. Defaults to
		    `GraphKeys.GLOBAL_VARIABLES`.
		
		Returns:
		  a list of variables in collection with scope and suffix.
	**/
	static public function get_variables(?scope:Dynamic, ?suffix:Dynamic, ?collection:Dynamic):Dynamic;
	/**
		Gets the list of variables that were given that name.
		
		Args:
		  given_name: name given to the variable without any scope.
		  scope: an optional scope for filtering the variables to return.
		
		Returns:
		  a copied list of variables with the given name and scope.
	**/
	static public function get_variables_by_name(given_name:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Gets the list of variables that end with the given suffix.
		
		Args:
		  suffix: suffix for filtering the variables to return.
		  scope: an optional scope for filtering the variables to return.
		
		Returns:
		  a copied list of variables with the given name and prefix.
	**/
	static public function get_variables_by_suffix(suffix:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Gets the list of the variables to restore.
		
		Args:
		  include: an optional list/tuple of scope strings for filtering which
		    variables from the VARIABLES collection to include. None would include all
		    the variables.
		  exclude: an optional list/tuple of scope strings for filtering which
		    variables from the VARIABLES collection to exclude. None it would not
		    exclude any.
		
		Returns:
		  a list of variables to restore.
		
		Raises:
		  TypeError: include or exclude is provided but is not a list or a tuple.
	**/
	static public function get_variables_to_restore(?include:Dynamic, ?exclude:Dynamic):Dynamic;
	/**
		Create a variable with a value and add it to `GraphKeys.GLOBAL_VARIABLES`.
		
		Args:
		  initial_value: See variables.Variable.__init__.
		  validate_shape: See variables.Variable.__init__.
		  name: See variables.Variable.__init__.
		  use_resource: If `True` use a ResourceVariable instead of a Variable.
		Returns:
		  New variable.
	**/
	static public function global_variable(initial_value:Dynamic, ?validate_shape:Dynamic, ?name:Dynamic, ?use_resource:Dynamic):Dynamic;
	/**
		Functional interface for the group normalization layer.
		
		Reference: https://arxiv.org/abs/1803.08494.
		
		  "Group Normalization", Yuxin Wu, Kaiming He
		
		Args:
		  inputs: A Tensor with at least 2 dimensions one which is channels. All
		   shape dimensions must be fully defined.
		  groups: Integer. Divide the channels into this number of groups over which
		    normalization statistics are computed. This number must be commensurate
		    with the number of channels in `inputs`.
		  channels_axis: An integer. Specifies index of channels axis which will be
		    broken into `groups`, each of which whose statistics will be computed
		    across. Must be mutually exclusive with `reduction_axes`. Preferred usage
		    is to specify negative integers to be agnostic as to whether a batch
		    dimension is included.
		  reduction_axes: Tuple of integers. Specifies dimensions over which
		     statistics will be accumulated. Must be mutually exclusive with
		     `channels_axis`. Statistics will not be accumulated across axes not
		     specified in `reduction_axes` nor `channel_axis`. Preferred usage is to
		     specify negative integers to be agnostic to whether a batch dimension is
		     included.
		
		    Some sample usage cases:
		      NHWC format: channels_axis=-1, reduction_axes=[-3, -2]
		      NCHW format: channels_axis=-3, reduction_axes=[-2, -1]
		
		  center: If True, add offset of `beta` to normalized tensor. If False, `beta`
		    is ignored.
		  scale: If True, multiply by `gamma`. If False, `gamma` is
		    not used. When the next layer is linear (also e.g. `nn.relu`), this can be
		    disabled since the scaling can be done by the next layer.
		  epsilon: Small float added to variance to avoid dividing by zero.
		  activation_fn: Activation function, default set to None to skip it and
		    maintain a linear activation.
		  param_initializers: Optional initializers for beta, gamma, moving mean and
		    moving variance.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional collections for the variables.
		  outputs_collections: Collections to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  scope: Optional scope for `variable_scope`.
		  mean_close_to_zero: The mean of `input` before ReLU will be close to zero
		    when batch size >= 4k for Resnet-50 on TPU. If `True`, use
		    `nn.sufficient_statistics` and `nn.normalize_moments` to calculate the
		    variance. This is the same behavior as `fused` equals `True` in batch
		    normalization. If `False`, use `nn.moments` to calculate the variance.
		    When `mean` is close to zero, like 1e-4, use `mean` to calculate the
		    variance may have poor result due to repeated roundoff error and
		    denormalization in `mean`.  When `mean` is large, like 1e2,
		    sum(`input`^2) is so large that only the high-order digits of the elements
		    are being accumulated. Thus, use sum(`input` - `mean`)^2/n to calculate
		    the variance has better accuracy compared to (sum(`input`^2)/n - `mean`^2)
		    when `mean` is large.
		
		
		Returns:
		  A `Tensor` representing the output of the operation.
		
		Raises:
		  ValueError: If the rank of `inputs` is undefined.
		  ValueError: If rank or channels dimension of `inputs` is undefined.
		  ValueError: If number of groups is not commensurate with number of channels.
		  ValueError: If reduction_axes or channels_axis are out of bounds.
		  ValueError: If reduction_axes are not mutually exclusive with channels_axis.
	**/
	static public function group_norm(inputs:Dynamic, ?groups:Dynamic, ?channels_axis:Dynamic, ?reduction_axes:Dynamic, ?center:Dynamic, ?scale:Dynamic, ?epsilon:Dynamic, ?activation_fn:Dynamic, ?param_initializers:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic, ?mean_close_to_zero:Dynamic):Dynamic;
	/**
		Checks whether a func has been decorated with @add_arg_scope or not.
		
		Args:
		  func: function to check.
		
		Returns:
		  a boolean.
	**/
	static public function has_arg_scope(func:Dynamic):Dynamic;
	/**
		Convert a batch of images into a batch of sequences.
		
		Args:
		  inputs: a (num_images, height, width, depth) tensor
		  data_format: A string. `NHWC` (default) and `NCHW` are supported.
		  outputs_collections: The collections to which the outputs are added.
		  scope: Optional scope for name_scope.
		
		Raises:
		   ValueError: If `data_format` is not either NCHW or NHWC.
		
		Returns:
		  (width, num_images*height, depth) sequence tensor
	**/
	static public function images_to_sequence(inputs:Dynamic, ?data_format:Dynamic, ?outputs_collections:Dynamic, ?scope:Dynamic):Dynamic;
	static public function infer_real_valued_columns(features:Dynamic):Dynamic;
	/**
		A tf.contrib.layers style input layer builder based on FeatureColumns.
		
		Generally a single example in training data is described with feature columns.
		At the first layer of the model, this column oriented data should be converted
		to a single tensor. Each feature column needs a different kind of operation
		during this conversion. For example sparse features need a totally different
		handling than continuous features.
		
		Example:
		
		```python
		  # Building model for training
		  columns_to_tensor = tf.parse_example(...)
		  first_layer = input_from_feature_columns(
		      columns_to_tensors=columns_to_tensor,
		      feature_columns=feature_columns)
		  second_layer = fully_connected(inputs=first_layer, ...)
		  ...
		```
		
		where feature_columns can be defined as follows:
		
		```python
		  sparse_feature = sparse_column_with_hash_bucket(
		      column_name="sparse_col", ...)
		  sparse_feature_emb = embedding_column(sparse_id_column=sparse_feature, ...)
		  real_valued_feature = real_valued_column(...)
		  real_valued_buckets = bucketized_column(
		      source_column=real_valued_feature, ...)
		
		  feature_columns=[sparse_feature_emb, real_valued_buckets]
		```
		
		Args:
		  columns_to_tensors: A mapping from feature column to tensors. 'string' key
		    means a base feature (not-transformed). It can have FeatureColumn as a
		    key too. That means that FeatureColumn is already transformed by input
		    pipeline.
		  feature_columns: A set containing all the feature columns. All items in the
		    set should be instances of classes derived by FeatureColumn.
		  weight_collections: List of graph collections to which weights are added.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for variable_scope.
		  cols_to_outs: Optional dict from feature column to output tensor,
		    which is concatenated into the returned tensor.
		
		Returns:
		  A Tensor which can be consumed by hidden layers in the neural network.
		
		Raises:
		  ValueError: if FeatureColumn cannot be consumed by a neural network.
	**/
	static public function input_from_feature_columns(columns_to_tensors:Dynamic, feature_columns:Dynamic, ?weight_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic, ?cols_to_outs:Dynamic):Dynamic;
	/**
		Functional interface for the instance normalization layer.
		
		Reference: https://arxiv.org/abs/1607.08022.
		
		  "Instance Normalization: The Missing Ingredient for Fast Stylization"
		  Dmitry Ulyanov, Andrea Vedaldi, Victor Lempitsky
		
		Args:
		  inputs: A tensor with 2 or more dimensions, where the first dimension has
		    `batch_size`. The normalization is over all but the last dimension if
		    `data_format` is `NHWC` and the second dimension if `data_format` is
		    `NCHW`.
		  center: If True, add offset of `beta` to normalized tensor. If False, `beta`
		    is ignored.
		  scale: If True, multiply by `gamma`. If False, `gamma` is
		    not used. When the next layer is linear (also e.g. `nn.relu`), this can be
		    disabled since the scaling can be done by the next layer.
		  epsilon: Small float added to variance to avoid dividing by zero.
		  activation_fn: Activation function, default set to None to skip it and
		    maintain a linear activation.
		  param_initializers: Optional initializers for beta, gamma, moving mean and
		    moving variance.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional collections for the variables.
		  outputs_collections: Collections to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  data_format: A string. `NHWC` (default) and `NCHW` are supported.
		  scope: Optional scope for `variable_scope`.
		
		Returns:
		  A `Tensor` representing the output of the operation.
		
		Raises:
		  ValueError: If `data_format` is neither `NHWC` nor `NCHW`.
		  ValueError: If the rank of `inputs` is undefined.
		  ValueError: If rank or channels dimension of `inputs` is undefined.
	**/
	static public function instance_norm(inputs:Dynamic, ?center:Dynamic, ?scale:Dynamic, ?epsilon:Dynamic, ?activation_fn:Dynamic, ?param_initializers:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?data_format:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		A restricted linear prediction builder based on FeatureColumns.
		
		As long as all feature columns are unweighted sparse columns this computes the
		prediction of a linear model which stores all weights in a single variable.
		
		Args:
		  columns_to_tensors: A mapping from feature column to tensors. 'string' key
		    means a base feature (not-transformed). It can have FeatureColumn as a
		    key too. That means that FeatureColumn is already transformed by input
		    pipeline. For example, `inflow` may have handled transformations.
		  feature_columns: A set containing all the feature columns. All items in the
		    set should be instances of classes derived from FeatureColumn.
		  num_outputs: An integer specifying number of outputs. Default value is 1.
		  weight_collections: List of graph collections to which weights are added.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for variable_scope.
		
		Returns:
		  A tuple containing:
		
		  * A Tensor which represents predictions of a linear model.
		  * A list of Variables storing the weights.
		  * A Variable which is used for bias.
		
		Raises:
		  ValueError: if FeatureColumn cannot be used for linear predictions.
	**/
	static public function joint_weighted_sum_from_feature_columns(columns_to_tensors:Dynamic, feature_columns:Dynamic, num_outputs:Dynamic, ?weight_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Returns a function that can be used to apply L1 L2 regularizations.
		
		Args:
		  scale_l1: A scalar multiplier `Tensor` for L1 regularization.
		  scale_l2: A scalar multiplier `Tensor` for L2 regularization.
		  scope: An optional scope name.
		
		Returns:
		  A function with signature `l1_l2(weights)` that applies a weighted sum of
		  L1 L2 regularization.
		
		Raises:
		  ValueError: If scale is negative or if scale is not a float.
	**/
	static public function l1_l2_regularizer(?scale_l1:Dynamic, ?scale_l2:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Returns a function that can be used to apply L1 regularization to weights.
		
		L1 regularization encourages sparsity.
		
		Args:
		  scale: A scalar multiplier `Tensor`. 0.0 disables the regularizer.
		  scope: An optional scope name.
		
		Returns:
		  A function with signature `l1(weights)` that apply L1 regularization.
		
		Raises:
		  ValueError: If scale is negative or if scale is not a float.
	**/
	static public function l1_regularizer(scale:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Returns a function that can be used to apply L2 regularization to weights.
		
		Small values of L2 can help prevent overfitting the training data.
		
		Args:
		  scale: A scalar multiplier `Tensor`. 0.0 disables the regularizer.
		  scope: An optional scope name.
		
		Returns:
		  A function with signature `l2(weights)` that applies L2 regularization.
		
		Raises:
		  ValueError: If scale is negative or if scale is not a float.
	**/
	static public function l2_regularizer(scale:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a Layer Normalization layer.
		
		Based on the paper:
		
		  "Layer Normalization"
		
		  Jimmy Lei Ba, Jamie Ryan Kiros, Geoffrey E. Hinton
		
		  https://arxiv.org/abs/1607.06450.
		
		Can be used as a normalizer function for conv2d and fully_connected.
		
		Given a tensor `inputs` of rank `R`, moments are calculated and normalization
		is performed over axes `begin_norm_axis ... R - 1`.  Scaling and centering,
		if requested, is performed over axes `begin_params_axis .. R - 1`.
		
		By default, `begin_norm_axis = 1` and `begin_params_axis = -1`,
		meaning that normalization is performed over all but the first axis
		(the `HWC` if `inputs` is `NHWC`), while the `beta` and `gamma` trainable
		parameters are calculated for the rightmost axis (the `C` if `inputs` is
		`NHWC`).  Scaling and recentering is performed via broadcast of the
		`beta` and `gamma` parameters with the normalized tensor.
		
		The shapes of `beta` and `gamma` are `inputs.shape[begin_params_axis:]`,
		and this part of the inputs' shape must be fully defined.
		
		Args:
		  inputs: A tensor having rank `R`. The normalization is performed over
		    axes `begin_norm_axis ... R - 1` and centering and scaling parameters
		    are calculated over `begin_params_axis ... R - 1`.
		  center: If True, add offset of `beta` to normalized tensor. If False, `beta`
		    is ignored.
		  scale: If True, multiply by `gamma`. If False, `gamma` is
		    not used. When the next layer is linear (also e.g. `nn.relu`), this can be
		    disabled since the scaling can be done by the next layer.
		  activation_fn: Activation function, default set to None to skip it and
		    maintain a linear activation.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional collections for the variables.
		  outputs_collections: Collections to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  begin_norm_axis: The first normalization dimension: normalization will be
		    performed along dimensions `begin_norm_axis : rank(inputs)`
		  begin_params_axis: The first parameter (beta, gamma) dimension: scale
		    and centering parameters will have dimensions
		    `begin_params_axis : rank(inputs)` and will be broadcast with the
		    normalized inputs accordingly.
		  scope: Optional scope for `variable_scope`.
		
		Returns:
		  A `Tensor` representing the output of the operation, having the same
		  shape and dtype as `inputs`.
		
		Raises:
		  ValueError: If the rank of `inputs` is not known at graph build time,
		    or if `inputs.shape[begin_params_axis:]` is not fully defined at
		    graph build time.
	**/
	static public function layer_norm(inputs:Dynamic, ?center:Dynamic, ?scale:Dynamic, ?activation_fn:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?begin_norm_axis:Dynamic, ?begin_params_axis:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds the parameters for a fully connected layer and returns the output.
		
		A fully connected layer is generally defined as a matrix multiply:
		`y = f(w * x + b)` where `f` is given by `activation_fn`. If
		`activation_fn` is `None`, the result of `y = w * x + b` is
		returned.
		
		If `x` has shape [\\(\text{dim}_0, \text{dim}_1, ..., \text{dim}_n\\)]
		with more than 2 dimensions (\\(n > 1\\)), then we repeat the matrix
		multiply along the first dimensions. The result r is a tensor of shape
		[\\(\text{dim}_0, ..., \text{dim}_{n-1},\\) `num_output_units`],
		where \\( r_{i_0, ..., i_{n-1}, k} =
		\sum_{0 \leq j < \text{dim}_n} x_{i_0, ... i_{n-1}, j} \cdot w_{j, k}\\).
		This is accomplished by reshaping `x` to 2-D
		[\\(\text{dim}_0 \cdot ... \cdot \text{dim}_{n-1}, \text{dim}_n\\)]
		before the matrix multiply and afterwards reshaping it to
		[\\(\text{dim}_0, ..., \text{dim}_{n-1},\\) `num_output_units`].
		
		This op creates `w` and optionally `b`. Bias (`b`) can be disabled by setting
		`bias_init` to `None`.
		
		The variable creation is compatible with `tf.variable_scope` and so can be
		reused with `tf.variable_scope` or `tf.make_template`.
		
		Most of the details of variable creation can be controlled by specifying the
		initializers (`weight_init` and `bias_init`) and in which collections to place
		the created variables (`weight_collections` and `bias_collections`; note that
		the variables are always added to the `VARIABLES` collection). The output of
		the layer can be placed in custom collections using `output_collections`.
		The collections arguments default to `WEIGHTS`, `BIASES` and `ACTIVATIONS`,
		respectively.
		
		A per layer regularization can be specified by setting `weight_regularizer`
		and `bias_regularizer`, which are applied to the weights and biases
		respectively, and whose output is added to the `REGULARIZATION_LOSSES`
		collection.
		
		Args:
		  x: The input `Tensor`.
		  num_output_units: The size of the output.
		  activation_fn: Activation function, default set to None to skip it and
		    maintain a linear activation.
		  weight_init: An optional weight initialization, defaults to
		    `xavier_initializer`.
		  bias_init: An initializer for the bias, defaults to 0. Set to `None` in
		    order to disable bias.
		  name: The name for this operation is used to name operations and to find
		    variables. If specified it must be unique for this scope, otherwise a
		    unique name starting with "fully_connected" will be created.  See
		    `tf.variable_scope` for details.
		  weight_collections: List of graph collections to which weights are added.
		  bias_collections: List of graph collections to which biases are added.
		  output_collections: List of graph collections to which outputs are added.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  weight_regularizer: A regularizer like the result of
		    `l1_regularizer` or `l2_regularizer`. Used for weights.
		  bias_regularizer: A regularizer like the result of
		    `l1_regularizer` or `l2_regularizer`. Used for biases.
		
		Returns:
		  The output of the fully connected layer.
		
		Raises:
		  ValueError: If x has rank less than 2 or if its last dimension is not set.
	**/
	static public function legacy_fully_connected(x:Dynamic, num_output_units:Dynamic, ?activation_fn:Dynamic, ?weight_init:Dynamic, ?bias_init:Dynamic, ?name:Dynamic, ?weight_collections:Dynamic, ?bias_collections:Dynamic, ?output_collections:Dynamic, ?trainable:Dynamic, ?weight_regularizer:Dynamic, ?bias_regularizer:Dynamic):Dynamic;
	static public function legacy_linear(x:Dynamic, num_output_units:Dynamic, ?activation_fn:Dynamic, ?weight_init:Dynamic, ?bias_init:Dynamic, ?name:Dynamic, ?weight_collections:Dynamic, ?bias_collections:Dynamic, ?output_collections:Dynamic, ?trainable:Dynamic, ?weight_regularizer:Dynamic, ?bias_regularizer:Dynamic):Dynamic;
	static public function legacy_relu(x:Dynamic, num_output_units:Dynamic, ?activation_fn:Dynamic, ?weight_init:Dynamic, ?bias_init:Dynamic, ?name:Dynamic, ?weight_collections:Dynamic, ?bias_collections:Dynamic, ?output_collections:Dynamic, ?trainable:Dynamic, ?weight_regularizer:Dynamic, ?bias_regularizer:Dynamic):Dynamic;
	static public function linear(inputs:Dynamic, num_outputs:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Create a variable with a value and add it to `GraphKeys.LOCAL_VARIABLES`.
		
		Args:
		  initial_value: See variables.Variable.__init__.
		  validate_shape: See variables.Variable.__init__.
		  name: See variables.Variable.__init__.
		  use_resource: If `True` use a ResourceVariable instead of a Variable.
		Returns:
		  New variable.
	**/
	static public function local_variable(initial_value:Dynamic, ?validate_shape:Dynamic, ?name:Dynamic, ?use_resource:Dynamic):Dynamic;
	/**
		Generates `__all__` from the docstring of one or more modules.
		
		Usage: `make_all(__name__)` or
		`make_all(__name__, [sys.modules(__name__), other_module])`. The doc string
		modules must each a docstring, and `__all__` will contain all symbols with
		`@@` references, where that symbol currently exists in the module named
		`module_name`.
		
		Args:
		  module_name: The name of the module (usually `__name__`).
		  doc_string_modules: a list of modules from which to take docstring.
		  If None, then a list containing only the module named `module_name` is used.
		
		Returns:
		  A list suitable for use as `__all__`.
	**/
	static public function make_all(module_name:Dynamic, ?doc_string_modules:Dynamic):Dynamic;
	/**
		Returns placeholder tensors for inference.
		
		Args:
		  feature_columns: An iterable containing all the feature columns. All items
		    should be instances of classes derived from _FeatureColumn.
		Returns:
		  A dict mapping feature keys to SparseTensors (sparse columns) or
		  placeholder Tensors (dense columns).
	**/
	static public function make_place_holder_tensors_for_base_features(feature_columns:Dynamic):Dynamic;
	/**
		Adds a 2D Max Pooling op.
		
		It is assumed that the pooling is done per image but not in batch or channels.
		
		Args:
		  inputs: A 4-D tensor of shape `[batch_size, height, width, channels]` if
		    `data_format` is `NHWC`, and `[batch_size, channels, height, width]` if
		    `data_format` is `NCHW`.
		  kernel_size: A list of length 2: [kernel_height, kernel_width] of the
		    pooling kernel over which the op is computed. Can be an int if both
		    values are the same.
		  stride: A list of length 2: [stride_height, stride_width].
		    Can be an int if both strides are the same. Note that presently
		    both strides must have the same value.
		  padding: The padding method, either 'VALID' or 'SAME'.
		  data_format: A string. `NHWC` (default) and `NCHW` are supported.
		  outputs_collections: The collections to which the outputs are added.
		  scope: Optional scope for name_scope.
		
		Returns:
		  A `Tensor` representing the results of the pooling operation.
		
		Raises:
		  ValueError: If `data_format` is neither `NHWC` nor `NCHW`.
		  ValueError: If 'kernel_size' is not a 2-D list
	**/
	static public function max_pool2d(inputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?outputs_collections:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a 3D Max Pooling op.
		
		It is assumed that the pooling is done per image but not in batch or channels.
		
		Args:
		  inputs: A 5-D tensor of shape `[batch_size, depth, height, width, channels]`
		    if `data_format` is `NDHWC`, and `[batch_size, channels, depth, height,
		    width]` if `data_format` is `NCDHW`.
		  kernel_size: A list of length 3: [kernel_depth, kernel_height, kernel_width]
		    of the pooling kernel over which the op is computed. Can be an int if both
		    values are the same.
		  stride: A list of length 3: [stride_depth, stride_height, stride_width].
		    Can be an int if both strides are the same. Note that presently
		    both strides must have the same value.
		  padding: The padding method, either 'VALID' or 'SAME'.
		  data_format: A string. `NDHWC` (default) and `NCDHW` are supported.
		  outputs_collections: The collections to which the outputs are added.
		  scope: Optional scope for name_scope.
		
		Returns:
		  A `Tensor` representing the results of the pooling operation.
		
		Raises:
		  ValueError: If `data_format` is neither `NDHWC` nor `NCDHW`.
		  ValueError: If 'kernel_size' is not a 3-D list
	**/
	static public function max_pool3d(inputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?outputs_collections:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a maxout op from https://arxiv.org/abs/1302.4389
		
		"Maxout Networks" Ian J. Goodfellow, David Warde-Farley, Mehdi Mirza, Aaron
		Courville,
		 Yoshua Bengio
		
		Usually the operation is performed in the filter/channel dimension. This can
		also be
		used after fully-connected layers to reduce number of features.
		
		Arguments:
		  inputs: Tensor input
		  num_units: Specifies how many features will remain after maxout
		    in the `axis` dimension (usually channel).
		    This must be a factor of number of features.
		  axis: The dimension where max pooling will be performed. Default is the
		  last dimension.
		  scope: Optional scope for variable_scope.
		
		Returns:
		  A `Tensor` representing the results of the pooling operation.
		
		Raises:
		  ValueError: if num_units is not multiple of number of features.
	**/
	static public function maxout(inputs:Dynamic, num_units:Dynamic, ?axis:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Gets an existing model variable with these parameters or creates a new one.
		
		Args:
		  name: the name of the new or existing variable.
		  shape: shape of the new or existing variable.
		  dtype: type of the new or existing variable (defaults to `DT_FLOAT`).
		  initializer: initializer for the variable if one is created.
		  regularizer: a (Tensor -> Tensor or None) function; the result of
		      applying it on a newly created variable will be added to the collection
		      GraphKeys.REGULARIZATION_LOSSES and can be used for regularization.
		  trainable: If `True` also add the variable to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  collections: A list of collection names to which the Variable will be added.
		    Note that the variable is always also added to the
		    `GraphKeys.GLOBAL_VARIABLES` and `GraphKeys.MODEL_VARIABLES` collections.
		  caching_device: Optional device string or function describing where the
		      Variable should be cached for reading.  Defaults to the Variable's
		      device.
		  device: Optional device to place the variable. It can be an string or a
		    function that is called to get the device for the variable.
		  partitioner: Optional callable that accepts a fully defined `TensorShape`
		    and dtype of the `Variable` to be created, and returns a list of
		    partitions for each axis (currently only one axis can be partitioned).
		  custom_getter: Callable that allows overwriting the internal
		    get_variable method and has to have the same signature.
		  use_resource: If `True` use a ResourceVariable instead of a Variable.
		  synchronization: Indicates when a distributed a variable will be
		    aggregated. Accepted values are constants defined in the class
		    `tf.VariableSynchronization`. By default the synchronization is set to
		    `AUTO` and the current `DistributionStrategy` chooses
		    when to synchronize. If `synchronization` is set to `ON_READ`,
		    `trainable` must not be set to `True`.
		  aggregation: Indicates how a distributed variable will be aggregated.
		    Accepted values are constants defined in the class
		    `tf.VariableAggregation`.
		
		Returns:
		  The created or existing variable.
	**/
	static public function model_variable(name:Dynamic, ?shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?trainable:Dynamic, ?collections:Dynamic, ?caching_device:Dynamic, ?device:Dynamic, ?partitioner:Dynamic, ?custom_getter:Dynamic, ?use_resource:Dynamic, ?synchronization:Dynamic, ?aggregation:Dynamic):Dynamic;
	/**
		Creates a _TargetColumn for multi class single label classification. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-11-12.
		Instructions for updating:
		This file will be removed after the deprecation date.Please switch to third_party/tensorflow/contrib/learn/python/learn/estimators/head.py
		
		The target column uses softmax cross entropy loss.
		
		Args:
		  n_classes: Integer, number of classes, must be >= 2
		  label_name: String, name of the key in label dict. Can be null if label
		      is a tensor (single headed models).
		  weight_column_name: A string defining feature column name representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example.
		
		Returns:
		  An instance of _MultiClassTargetColumn.
		
		Raises:
		  ValueError: if n_classes is < 2
	**/
	static public function multi_class_target(n_classes:Dynamic, ?label_name:Dynamic, ?weight_column_name:Dynamic):Dynamic;
	/**
		Creates an `_OneHotColumn` for a one-hot or multi-hot repr in a DNN.
		
		Args:
		    sparse_id_column: A _SparseColumn which is created by
		      `sparse_column_with_*`
		      or crossed_column functions. Note that `combiner` defined in
		      `sparse_id_column` is ignored.
		
		Returns:
		  An _OneHotColumn.
	**/
	static public function one_hot_column(sparse_id_column:Dynamic):Dynamic;
	/**
		Transform numeric labels into onehot_labels using `tf.one_hot`.
		
		Args:
		  labels: [batch_size] target labels.
		  num_classes: Total number of classes.
		  on_value: A scalar defining the on-value.
		  off_value: A scalar defining the off-value.
		  outputs_collections: Collection to add the outputs.
		  scope: Optional scope for name_scope.
		
		Returns:
		  One-hot encoding of the labels.
	**/
	static public function one_hot_encoding(labels:Dynamic, num_classes:Dynamic, ?on_value:Dynamic, ?off_value:Dynamic, ?outputs_collections:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Given loss and parameters for optimizer, returns a training op.
		
		Various ways of passing optimizers include:
		
		- by string specifying the name of the optimizer. See OPTIMIZER_CLS_NAMES
		    for full list. E.g. `optimize_loss(..., optimizer='Adam')`.
		- by function taking learning rate `Tensor` as argument and returning an
		    `Optimizer` instance. E.g. `optimize_loss(...,
		    optimizer=lambda lr: tf.train.MomentumOptimizer(lr, momentum=0.5))`.
		  Alternatively, if `learning_rate` is `None`, the function takes no
		  arguments. E.g. `optimize_loss(..., learning_rate=None,
		    optimizer=lambda: tf.train.MomentumOptimizer(0.5, momentum=0.5))`.
		- by a subclass of `Optimizer` having a single-argument constructor
		    (the argument is the learning rate), such as AdamOptimizer or
		    AdagradOptimizer. E.g. `optimize_loss(...,
		    optimizer=tf.train.AdagradOptimizer)`.
		- by an instance of a subclass of `Optimizer`.
		    E.g., `optimize_loss(..., optimizer=tf.train.AdagradOptimizer(0.5))`.
		
		Args:
		  loss: Scalar `Tensor`.
		  global_step: Scalar int `Tensor`, step counter to update on each step
		               unless `increment_global_step` is `False`. If not supplied,
		               it will be fetched from the default graph (see
		               `tf.train.get_global_step` for details). If it has
		               not been created, no step will be incremented with each weight
		               update. `learning_rate_decay_fn` requires `global_step`.
		  learning_rate: float or `Tensor`, magnitude of update per each training
		                 step. Can be `None`.
		  optimizer: string, class or optimizer instance, used as trainer.
		             string should be name of optimizer, like 'SGD',
		               'Adam', 'Adagrad'. Full list in OPTIMIZER_CLS_NAMES constant.
		             class should be sub-class of `tf.Optimizer` that implements
		               `compute_gradients` and `apply_gradients` functions.
		             optimizer instance should be instantiation of `tf.Optimizer`
		               sub-class and have `compute_gradients` and `apply_gradients`
		               functions.
		  gradient_noise_scale: float or None, adds 0-mean normal noise scaled by this
		                        value.
		  gradient_multipliers: dict of variables or variable names to floats.
		                        If present, gradients for specified
		                        variables will be multiplied by given constant.
		  clip_gradients: float, callable or `None`. If float, is provided, a global
		    clipping is applied to prevent the norm of the gradient to exceed this
		    value. Alternatively, a callable can be provided e.g.: adaptive_clipping.
		    This callable takes a `list` of `(gradients, variables)` `tuple`s and
		    returns the same thing with the gradients modified.
		  learning_rate_decay_fn: function, takes `learning_rate` and `global_step`
		                          `Tensor`s, returns `Tensor`.
		                          Can be used to implement any learning rate decay
		                          functions.
		                          For example: `tf.train.exponential_decay`.
		                          Ignored if `learning_rate` is not supplied.
		  update_ops: list of update `Operation`s to execute at each step. If `None`,
		              uses elements of UPDATE_OPS collection. The order of execution
		              between `update_ops` and `loss` is non-deterministic.
		  variables: list of variables to optimize or
		             `None` to use all trainable variables.
		  name: The name for this operation is used to scope operations and summaries.
		  summaries: List of internal quantities to visualize on tensorboard. If not
		             set, the loss, the learning rate, and the global norm of the
		             gradients will be reported. The complete list of possible values
		             is in OPTIMIZER_SUMMARIES.
		  colocate_gradients_with_ops: If True, try colocating gradients with the
		                               corresponding op.
		  increment_global_step: Whether to increment `global_step`. If your model
		    calls `optimize_loss` multiple times per training step (e.g. to optimize
		    different parts of the model), use this arg to avoid incrementing
		    `global_step` more times than necessary.
		
		Returns:
		  Training op.
		
		Raises:
		  ValueError: if:
		      * `loss` is an invalid type or shape.
		      * `global_step` is an invalid type or shape.
		      * `learning_rate` is an invalid type or value.
		      * `optimizer` has the wrong type.
		      * `clip_gradients` is neither float nor callable.
		      * `learning_rate` and `learning_rate_decay_fn` are supplied, but no
		        `global_step` is available.
		      * `gradients` is empty.
	**/
	static public function optimize_loss(loss:Dynamic, global_step:Dynamic, learning_rate:Dynamic, optimizer:Dynamic, ?gradient_noise_scale:Dynamic, ?gradient_multipliers:Dynamic, ?clip_gradients:Dynamic, ?learning_rate_decay_fn:Dynamic, ?update_ops:Dynamic, ?variables:Dynamic, ?name:Dynamic, ?summaries:Dynamic, ?colocate_gradients_with_ops:Dynamic, ?increment_global_step:Dynamic):Dynamic;
	/**
		Parses tf.Examples to extract tensors for given feature_columns.
		
		This is a wrapper of 'tf.parse_example'.
		
		Example:
		
		```python
		columns_to_tensor = parse_feature_columns_from_examples(
		    serialized=my_data,
		    feature_columns=my_features)
		
		# Where my_features are:
		# Define features and transformations
		sparse_feature_a = sparse_column_with_keys(
		    column_name="sparse_feature_a", keys=["AB", "CD", ...])
		
		embedding_feature_a = embedding_column(
		    sparse_id_column=sparse_feature_a, dimension=3, combiner="sum")
		
		sparse_feature_b = sparse_column_with_hash_bucket(
		    column_name="sparse_feature_b", hash_bucket_size=1000)
		
		embedding_feature_b = embedding_column(
		    sparse_id_column=sparse_feature_b, dimension=16, combiner="sum")
		
		crossed_feature_a_x_b = crossed_column(
		    columns=[sparse_feature_a, sparse_feature_b], hash_bucket_size=10000)
		
		real_feature = real_valued_column("real_feature")
		real_feature_buckets = bucketized_column(
		    source_column=real_feature, boundaries=[...])
		
		my_features = [embedding_feature_b, real_feature_buckets, embedding_feature_a]
		```
		
		Args:
		  serialized: A vector (1-D Tensor) of strings, a batch of binary
		    serialized `Example` protos.
		  feature_columns: An iterable containing all the feature columns. All items
		    should be instances of classes derived from _FeatureColumn.
		  name: A name for this operation (optional).
		  example_names: A vector (1-D Tensor) of strings (optional), the names of
		    the serialized protos in the batch.
		
		Returns:
		  A `dict` mapping FeatureColumn to `Tensor` and `SparseTensor` values.
	**/
	static public function parse_feature_columns_from_examples(serialized:Dynamic, feature_columns:Dynamic, ?name:Dynamic, ?example_names:Dynamic):Dynamic;
	/**
		Parses tf.SequenceExamples to extract tensors for given `FeatureColumn`s.
		
		Args:
		  serialized: A scalar (0-D Tensor) of type string, a single serialized
		    `SequenceExample` proto.
		  context_feature_columns: An iterable containing the feature columns for
		    context features. All items should be instances of classes derived from
		    `_FeatureColumn`. Can be `None`.
		  sequence_feature_columns: An iterable containing the feature columns for
		    sequence features. All items should be instances of classes derived from
		    `_FeatureColumn`. Can be `None`.
		  name: A name for this operation (optional).
		  example_name: A scalar (0-D Tensor) of type string (optional), the names of
		    the serialized proto.
		
		Returns:
		  A tuple consisting of (context_features, sequence_features)
		
		  *  context_features: a dict mapping `FeatureColumns` from
		      `context_feature_columns` to their parsed `Tensors`/`SparseTensor`s.
		  *  sequence_features: a dict mapping `FeatureColumns` from
		      `sequence_feature_columns` to their parsed `Tensors`/`SparseTensor`s.
	**/
	static public function parse_feature_columns_from_sequence_examples(serialized:Dynamic, context_feature_columns:Dynamic, sequence_feature_columns:Dynamic, ?name:Dynamic, ?example_name:Dynamic):Dynamic;
	/**
		Adds a pooling op.
		
		
		Args:
		  inputs: Tensor of rank N+2, of shape
		    `[batch_size] + input_spatial_shape + [num_channels]` if data_format does
		    not start with "NC" (default), or
		    `[batch_size, num_channels] + input_spatial_shape` if data_format starts
		    with "NC".  Pooling happens over the spatial dimensions only.
		  kernel_size: Sequence of N ints >= 1.  Can also be a single integer to
		    specify the same value for all spatial dimensions.
		  pooling_type: Specifies pooling operation, must be "AVG" or "MAX".
		  padding: The padding algorithm, must be "SAME" or "VALID".
		  data_format: A string or None.  Specifies whether the channel dimension of
		    the `input` and output is the last dimension (default, or if `data_format`
		    does not start with "NC"), or the second dimension (if `data_format`
		    starts with "NC").  For N=1, the valid values are "NWC" (default) and
		    "NCW".  For N=2, the valid values are "NHWC" (default) and "NCHW".
		    For N=3, the valid values are "NDHWC" (default) and "NCDHW".
		  dilation_rate: Optional.  Dilation rate.  Sequence of N ints >= 1.  Defaults
		    to [1]*N.  Can also be a single integer to specify the same value for all
		    spatial dimensions.  If any value of dilation_rate is > 1, then all values
		    of stride must be 1.
		  stride: Optional.  Sequence of N ints >= 1.  Defaults to [1]*N.  Can also be
		    a single integer to specify the same value for all spatial dimensions.  If
		    any value of stride is > 1, then all values of dilation_rate must be 1.
		  outputs_collections: The collections to which the outputs are added.
		  scope: Optional scope for name_scope.
		
		Returns:
		  A `Tensor` representing the results of the pooling operation.
		
		Raises:
		  ValueError: If arguments are invalid.
	**/
	static public function pool(inputs:Dynamic, kernel_size:Dynamic, pooling_type:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilation_rate:Dynamic, ?stride:Dynamic, ?outputs_collections:Dynamic, ?scope:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Creates a `_RealValuedColumn` for dense numeric data.
		
		Args:
		  column_name: A string defining real valued column name.
		  dimension: An integer specifying dimension of the real valued column.
		    The default is 1.
		  default_value: A single value compatible with dtype or a list of values
		    compatible with dtype which the column takes on during tf.Example parsing
		    if data is missing. When dimension is not None, a default value of None
		    will cause tf.parse_example to fail if an example does not contain this
		    column. If a single value is provided, the same value will be applied as
		    the default value for every dimension. If a list of values is provided,
		    the length of the list should be equal to the value of `dimension`.
		    Only scalar default value is supported in case dimension is not specified.
		  dtype: defines the type of values. Default value is tf.float32. Must be a
		    non-quantized, real integer or floating point type.
		  normalizer: If not None, a function that can be used to normalize the value
		    of the real valued column after default_value is applied for parsing.
		    Normalizer function takes the input tensor as its argument, and returns
		    the output tensor. (e.g. lambda x: (x - 3.0) / 4.2). Note that for
		    variable length columns, the normalizer should expect an input_tensor of
		    type `SparseTensor`.
		Returns:
		  A _RealValuedColumn.
		Raises:
		  TypeError: if dimension is not an int
		  ValueError: if dimension is not a positive integer
		  TypeError: if default_value is a list but its length is not equal to the
		    value of `dimension`.
		  TypeError: if default_value is not compatible with dtype.
		  ValueError: if dtype is not convertible to tf.float32.
	**/
	static public function real_valued_column(column_name:Dynamic, ?dimension:Dynamic, ?default_value:Dynamic, ?dtype:Dynamic, ?normalizer:Dynamic):Dynamic;
	/**
		Decorator that recomputes the function on the backwards pass.
		
		To use this function, you must use `ResourceVariable`s (i.e.
		`variable_scope(name, use_resource=True), which are the default in Eager mode
		and when running on TPU.
		
		Warning: Because the function will be called again on the backwards pass, the
		user should be careful to not use ops in their function that mutate state or
		have randomness (for example, batch normalization or dropout). If the function
		does have such operations, it is recommended that the function take the
		`is_recomputing` keyword argument which will be `False` on the forward pass
		and `True` on the backwards pass so that it can disable state changes when
		`is_recomputing=True` (for example, not updating the moving averages in batch
		normalization).
		
		Args:
		  fn: a function that takes Tensors (all as positional arguments) and returns
		    a tuple of Tensors. Note that `fn` should not close over any other
		    Tensors or Variables.
		  use_data_dep: `bool`, if `True` will use a dummy data dependency to force
		    the recompute to happen. If `False` will use a control dependency. By
		    default will be `True` if in an XLA context and `False` otherwise. XLA
		    ignores control dependencies and so this data dependency is necessary.
		  tupleize_grads: `bool`, if `True` will use control dependencies to ensure
		    that all gradients are produced before any are consumed by downstream ops.
		    If `use_data_dep` is also `True`, will use a data dependency instead of
		    a control dependency.
		
		Returns:
		  A wrapped fn that is identical to fn when called, but its activations will
		  be discarded and recomputed on the backwards pass (i.e. on a call to
		  tf.gradients).
		
		Raises:
		  ValueError: if `fn` closes over any Tensors or Variables.
	**/
	static public function recompute_grad(fn:Dynamic, ?use_data_dep:Dynamic, ?tupleize_grads:Dynamic):Dynamic;
	/**
		Creates a _TargetColumn for linear regression. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-11-12.
		Instructions for updating:
		This file will be removed after the deprecation date.Please switch to third_party/tensorflow/contrib/learn/python/learn/estimators/head.py
		
		Args:
		  label_name: String, name of the key in label dict. Can be null if label
		      is a tensor (single headed models).
		  weight_column_name: A string defining feature column name representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example.
		  label_dimension: dimension of the target for multilabels.
		
		Returns:
		  An instance of _TargetColumn
	**/
	static public function regression_target(?label_name:Dynamic, ?weight_column_name:Dynamic, ?label_dimension:Dynamic):Dynamic;
	static public function relu(inputs:Dynamic, num_outputs:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	static public function relu6(inputs:Dynamic, num_outputs:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Applies the same layer with the same arguments repeatedly.
		
		```python
		  y = repeat(x, 3, conv2d, 64, [3, 3], scope='conv1')
		  # It is equivalent to:
		
		  x = conv2d(x, 64, [3, 3], scope='conv1/conv1_1')
		  x = conv2d(x, 64, [3, 3], scope='conv1/conv1_2')
		  y = conv2d(x, 64, [3, 3], scope='conv1/conv1_3')
		```
		
		If the `scope` argument is not given in `kwargs`, it is set to
		`layer.__name__`, or `layer.func.__name__` (for `functools.partial`
		objects). If neither `__name__` nor `func.__name__` is available, the
		layers are called with `scope='stack'`.
		
		Args:
		  inputs: A `Tensor` suitable for layer.
		  repetitions: Int, number of repetitions.
		  layer: A layer with arguments `(inputs, *args, **kwargs)`
		  *args: Extra args for the layer.
		  **kwargs: Extra kwargs for the layer.
		
		Returns:
		  A tensor result of applying the layer, repetitions times.
		Raises:
		  ValueError: If the op is unknown or wrong.
	**/
	static public function repeat(inputs:Dynamic, repetitions:Dynamic, layer:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		A block of reversible residual layers.
		
		A reversible residual layer is defined as:
		
		```
		y1 = x1 + f(x2, f_side_input)
		y2 = x2 + g(y1, g_side_input)
		```
		
		A reversible residual block, defined here, is a series of reversible residual
		layers.
		
		Limitations:
		* f and g must not close over any Tensors; all side inputs to f and g should
		  be passed in with f_side_input and g_side_input which will be forwarded to
		  f and g.
		* f and g must not change the dimensionality of their inputs in order for the
		  addition in the equations above to work.
		
		Args:
		  x1: a float Tensor.
		  x2: a float Tensor.
		  f: a function, (Tensor) -> (Tensor) (or list of such of length num_layers).
		    Should not change the shape of the Tensor. Can make calls to get_variable.
		    See f_side_input if there are side inputs.
		  g: a function, (Tensor) -> (Tensor) (or list of such of length num_layers).
		    Should not change the shape of the Tensor. Can make calls to get_variable.
		    See g_side_input if there are side inputs.
		  num_layers: int, number of reversible residual layers. Each layer will
		    apply f and g according to the equations above, with new variables in each
		    layer.
		  f_side_input: list of Tensors, side input to f. If not None, signature of f
		    should be (Tensor, list<Tensor>) -> (Tensor).
		  g_side_input: list of Tensors, side input to g. If not None, signature of g
		    should be (Tensor, list<Tensor>) -> (Tensor).
		  is_training: bool, whether to actually use the efficient backprop codepath.
		
		Returns:
		  y1, y2: tuple of float Tensors.
	**/
	static public function rev_block(x1:Dynamic, x2:Dynamic, f:Dynamic, g:Dynamic, ?num_layers:Dynamic, ?f_side_input:Dynamic, ?g_side_input:Dynamic, ?is_training:Dynamic):Dynamic;
	/**
		Lookup embedding results, accounting for invalid IDs and empty features.
		
		The partitioned embedding in `embedding_weights` must all be the same shape
		except for the first dimension. The first dimension is allowed to vary as the
		vocabulary size is not necessarily a multiple of `P`.  `embedding_weights`
		may be a `PartitionedVariable` as returned by using `tf.get_variable()` with a
		partitioner.
		
		Invalid IDs (< 0) are pruned from input IDs and weights, as well as any IDs
		with non-positive weight. For an entry with no features, the embedding vector
		for `default_id` is returned, or the 0-vector if `default_id` is not supplied.
		
		The ids and weights may be multi-dimensional. Embeddings are always aggregated
		along the last dimension.
		
		Args:
		  embedding_weights:  A list of `P` float tensors or values representing
		      partitioned embedding tensors.  Alternatively, a `PartitionedVariable`,
		      created by partitioning along dimension 0.  The total unpartitioned
		      shape should be `[e_0, e_1, ..., e_m]`, where `e_0` represents the
		      vocab size and `e_1, ..., e_m` are the embedding dimensions.
		  sparse_ids: `SparseTensor` of shape `[d_0, d_1, ..., d_n]` containing the
		      ids. `d_0` is typically batch size.
		  sparse_weights: `SparseTensor` of same shape as `sparse_ids`, containing
		      float weights corresponding to `sparse_ids`, or `None` if all weights
		      are be assumed to be 1.0.
		  combiner: A string specifying how to combine embedding results for each
		      entry. Currently "mean", "sqrtn" and "sum" are supported, with "mean"
		      the default.
		  default_id: The id to use for an entry with no features.
		  name: A name for this operation (optional).
		  partition_strategy: A string specifying the partitioning strategy.
		      Currently `"div"` and `"mod"` are supported. Default is `"div"`.
		  max_norm: If not None, all embeddings are l2-normalized to max_norm before
		      combining.
		
		
		Returns:
		  Dense tensor of shape `[d_0, d_1, ..., d_{n-1}, e_1, ..., e_m]`.
		
		Raises:
		  ValueError: if `embedding_weights` is empty.
	**/
	static public function safe_embedding_lookup_sparse(embedding_weights:Dynamic, sparse_ids:Dynamic, ?sparse_weights:Dynamic, ?combiner:Dynamic, ?default_id:Dynamic, ?name:Dynamic, ?partition_strategy:Dynamic, ?max_norm:Dynamic):Dynamic;
	static public function scale_gradient(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Creates an embedding column of a sparse feature using parameter hashing.
		
		This is a useful shorthand when you have a sparse feature you want to use an
		embedding for, but also want to hash the embedding's values in each dimension
		to a variable based on a different hash.
		
		Specifically, the i-th embedding component of a value v is found by retrieving
		an embedding weight whose index is a fingerprint of the pair (v,i).
		
		An embedding column with sparse_column_with_hash_bucket such as
		
		    embedding_column(
		      sparse_column_with_hash_bucket(column_name, bucket_size),
		      dimension)
		
		could be replaced by
		
		    scattered_embedding_column(
		      column_name,
		      size=bucket_size * dimension,
		      dimension=dimension,
		      hash_key=tf.contrib.layers.SPARSE_FEATURE_CROSS_DEFAULT_HASH_KEY)
		
		for the same number of embedding parameters. This should hopefully reduce the
		impact of collisions, but adds the cost of slowing down training.
		
		Args:
		  column_name: A string defining sparse column name.
		  size: An integer specifying the number of parameters in the embedding layer.
		  dimension: An integer specifying dimension of the embedding.
		  hash_key: Specify the hash_key that will be used by the `FingerprintCat64`
		    function to combine the crosses fingerprints on SparseFeatureCrossOp.
		  combiner: A string specifying how to reduce if there are multiple entries
		    in a single row. Currently "mean", "sqrtn" and "sum" are supported, with
		    "mean" the default. "sqrtn" often achieves good accuracy, in particular
		    with bag-of-words columns. Each of this can be thought as example level
		    normalizations on the column:
		      * "sum": do not normalize features in the column
		      * "mean": do l1 normalization on features in the column
		      * "sqrtn": do l2 normalization on features in the column
		    For more information: `tf.embedding_lookup_sparse`.
		  initializer: A variable initializer function to be used in embedding
		    variable initialization. If not specified, defaults to
		    `tf.truncated_normal_initializer` with mean 0 and standard deviation 0.1.
		
		Returns:
		  A _ScatteredEmbeddingColumn.
		
		Raises:
		  ValueError: if dimension or size is not a positive integer; or if combiner
		    is not supported.
	**/
	static public function scattered_embedding_column(column_name:Dynamic, size:Dynamic, dimension:Dynamic, hash_key:Dynamic, ?combiner:Dynamic, ?initializer:Dynamic):Dynamic;
	/**
		Looks up embeddings using parameter hashing for each value in `values`.
		
		The i-th embedding component of a value v in `values` is found by retrieving
		the weight whose index is a fingerprint of the pair (v,i).
		The concept is explored as "feature hashing" for model compression in this
		paper: http://arxiv.org/pdf/1504.04788.pdf
		
		Feature hashing has the pleasant effect of allowing us to compute an embedding
		without needing a pre-determined vocabulary, relieving some amount of process
		complexity. It also allows for us to maintain embeddings for possibly
		trillions of features with a fixed amount of memory.
		
		Note that this is superior to out-of-vocabulary shared "hash buckets" in that
		the embedding is extremely likely to be unique for each token as opposed to
		being shared across probably-colliding tokens. The price is that we must
		compute a hash once for each scalar in the token's embedding as opposed to
		once per token.
		
		If `params` is a list, it represents a partition of the embedding parameters.
		Each tensor in the list should have the same length, except for the first ones
		which may have an additional element. For instance 10 parameters can be
		partitioned in 4 tensors with length `[3, 3, 2, 2]`.
		
		Args:
		  params: A `Tensor`, `list` of `Tensors`, or `PartitionedVariable`.
		    Each tensor must be of rank 1 with fully-defined shape.
		  values: `Tensor` of values to be embedded with shape `[d0, ..., dn]`.
		  dimension: Embedding dimension.
		  name: An optional name for this op.
		  hash_key: Specify the hash_key that will be used by the `FingerprintCat64`
		    function to combine the crosses fingerprints on SparseFeatureCrossOp
		    (optional).
		
		Returns:
		  A `Tensor` with shape `[d0, ..., dn, dimension]`.
		
		Raises:
		  ValueError: if dimension is not positive or the partition size is invalid.
	**/
	static public function scattered_embedding_lookup(params:Dynamic, values:Dynamic, dimension:Dynamic, ?name:Dynamic, ?hash_key:Dynamic):Dynamic;
	/**
		Looks up embeddings of a sparse feature using parameter hashing.
		
		See `tf.contrib.layers.scattered_embedding_lookup` for embedding with hashing.
		
		Args:
		  params: A `Tensor`, `list` of `Tensors`, or `PartitionedVariable`.
		    Each tensor must be of rank 1 with fully-defined shape.
		  sparse_values: A 2-D `SparseTensor` containing the values to be embedded.
		    Some rows may be empty.
		  dimension: Embedding dimension
		  combiner: A string specifying how to combine embedding results for each
		      entry. Currently "mean", "sqrtn" and "sum" are supported, with "mean"
		      the default.
		  default_value: The value to use for an entry with no features.
		  name: An optional name for this op.
		  hash_key: Specify the hash_key that will be used by the `FingerprintCat64`
		    function to combine the crosses fingerprints on SparseFeatureCrossOp
		    (optional).
		
		Returns:
		   Dense tensor with shape [N, dimension] with N the number of rows in
		     sparse_values.
		
		Raises:
		  TypeError: If sparse_values is not a SparseTensor.
		  ValueError: If combiner is not one of {"mean", "sqrtn", "sum"}.
	**/
	static public function scattered_embedding_lookup_sparse(params:Dynamic, sparse_values:Dynamic, dimension:Dynamic, ?combiner:Dynamic, ?default_value:Dynamic, ?name:Dynamic, ?hash_key:Dynamic):Dynamic;
	/**
		Adds a depth-separable 2D convolution with optional batch_norm layer.
		
		This op first performs a depthwise convolution that acts separately on
		channels, creating a variable called `depthwise_weights`. If `num_outputs`
		is not None, it adds a pointwise convolution that mixes channels, creating a
		variable called `pointwise_weights`. Then, if `normalizer_fn` is None,
		it adds bias to the result, creating a variable called 'biases', otherwise,
		the `normalizer_fn` is applied. It finally applies an activation function
		to produce the end result.
		
		Args:
		  inputs: A tensor of size [batch_size, height, width, channels].
		  num_outputs: The number of pointwise convolution output filters. If is
		    None, then we skip the pointwise convolution stage.
		  kernel_size: A list of length 2: [kernel_height, kernel_width] of
		    of the filters. Can be an int if both values are the same.
		  depth_multiplier: The number of depthwise convolution output channels for
		    each input channel. The total number of depthwise convolution output
		    channels will be equal to `num_filters_in * depth_multiplier`.
		  stride: A list of length 2: [stride_height, stride_width], specifying the
		    depthwise convolution stride. Can be an int if both strides are the same.
		  padding: One of 'VALID' or 'SAME'.
		  data_format: A string. `NHWC` (default) and `NCHW` are supported.
		  rate: A list of length 2: [rate_height, rate_width], specifying the dilation
		    rates for atrous convolution. Can be an int if both rates are the same.
		    If any value is larger than one, then both stride values need to be one.
		  activation_fn: Activation function. The default value is a ReLU function.
		    Explicitly set it to None to skip it and maintain a linear activation.
		  normalizer_fn: Normalization function to use instead of `biases`. If
		    `normalizer_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		    default set to None for no normalizer function
		  normalizer_params: Normalization function parameters.
		  weights_initializer: An initializer for the depthwise weights.
		  pointwise_initializer: An initializer for the pointwise weights.
		    default set to None, means use weights_initializer.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional list of collections for all the variables or
		    a dictionary containing a different list of collection per variable.
		  outputs_collections: Collection to add the outputs.
		  trainable: Whether or not the variables should be trainable or not.
		  scope: Optional scope for variable_scope.
		
		Returns:
		  A `Tensor` representing the output of the operation.
		Raises:
		  ValueError: If `data_format` is invalid.
	**/
	static public function separable_conv2d(inputs:Dynamic, num_outputs:Dynamic, kernel_size:Dynamic, ?depth_multiplier:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?rate:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?pointwise_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a depth-separable 2D convolution with optional batch_norm layer.
		
		This op first performs a depthwise convolution that acts separately on
		channels, creating a variable called `depthwise_weights`. If `num_outputs`
		is not None, it adds a pointwise convolution that mixes channels, creating a
		variable called `pointwise_weights`. Then, if `normalizer_fn` is None,
		it adds bias to the result, creating a variable called 'biases', otherwise,
		the `normalizer_fn` is applied. It finally applies an activation function
		to produce the end result.
		
		Args:
		  inputs: A tensor of size [batch_size, height, width, channels].
		  num_outputs: The number of pointwise convolution output filters. If is
		    None, then we skip the pointwise convolution stage.
		  kernel_size: A list of length 2: [kernel_height, kernel_width] of
		    of the filters. Can be an int if both values are the same.
		  depth_multiplier: The number of depthwise convolution output channels for
		    each input channel. The total number of depthwise convolution output
		    channels will be equal to `num_filters_in * depth_multiplier`.
		  stride: A list of length 2: [stride_height, stride_width], specifying the
		    depthwise convolution stride. Can be an int if both strides are the same.
		  padding: One of 'VALID' or 'SAME'.
		  data_format: A string. `NHWC` (default) and `NCHW` are supported.
		  rate: A list of length 2: [rate_height, rate_width], specifying the dilation
		    rates for atrous convolution. Can be an int if both rates are the same.
		    If any value is larger than one, then both stride values need to be one.
		  activation_fn: Activation function. The default value is a ReLU function.
		    Explicitly set it to None to skip it and maintain a linear activation.
		  normalizer_fn: Normalization function to use instead of `biases`. If
		    `normalizer_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		    default set to None for no normalizer function
		  normalizer_params: Normalization function parameters.
		  weights_initializer: An initializer for the depthwise weights.
		  pointwise_initializer: An initializer for the pointwise weights.
		    default set to None, means use weights_initializer.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: Whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional list of collections for all the variables or
		    a dictionary containing a different list of collection per variable.
		  outputs_collections: Collection to add the outputs.
		  trainable: Whether or not the variables should be trainable or not.
		  scope: Optional scope for variable_scope.
		
		Returns:
		  A `Tensor` representing the output of the operation.
		Raises:
		  ValueError: If `data_format` is invalid.
	**/
	static public function separable_convolution2d(inputs:Dynamic, num_outputs:Dynamic, kernel_size:Dynamic, ?depth_multiplier:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?rate:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?pointwise_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Builds inputs for sequence models from `FeatureColumn`s. (experimental)
		
		THIS FUNCTION IS EXPERIMENTAL. It may change or be removed at any time, and without warning.
		
		See documentation for `input_from_feature_columns`. The following types of
		`FeatureColumn` are permitted in `feature_columns`: `_OneHotColumn`,
		`_EmbeddingColumn`, `_ScatteredEmbeddingColumn`, `_RealValuedColumn`,
		`_DataFrameColumn`. In addition, columns in `feature_columns` may not be
		constructed using any of the following: `ScatteredEmbeddingColumn`,
		`BucketizedColumn`, `CrossedColumn`.
		
		Args:
		  columns_to_tensors: A mapping from feature column to tensors. 'string' key
		    means a base feature (not-transformed). It can have FeatureColumn as a
		    key too. That means that FeatureColumn is already transformed by input
		    pipeline.
		  feature_columns: A set containing all the feature columns. All items in the
		    set should be instances of classes derived by FeatureColumn.
		  weight_collections: List of graph collections to which weights are added.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for variable_scope.
		
		Returns:
		  A Tensor which can be consumed by hidden layers in the neural network.
		
		Raises:
		  ValueError: if FeatureColumn cannot be consumed by a neural network.
	**/
	static public function sequence_input_from_feature_columns(columns_to_tensors:Dynamic, feature_columns:Dynamic, ?weight_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Convert a batch of sequences into a batch of images.
		
		Args:
		  inputs: (num_steps, num_batches, depth) sequence tensor
		  height: the height of the images
		  output_data_format: Format of output tensor.
		    Currently supports `'channels_first'` and `'channels_last'`.
		  outputs_collections: The collections to which the outputs are added.
		  scope: Optional scope for name_scope.
		
		Returns:
		  A tensor representing the output of the operation.
	**/
	static public function sequence_to_images(inputs:Dynamic, height:Dynamic, ?output_data_format:Dynamic, ?outputs_collections:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Creates a list of `_EmbeddingColumn` sharing the same embedding.
		
		Args:
		  sparse_id_columns: An iterable of `_SparseColumn`, such as those created by
		    `sparse_column_with_*` or crossed_column functions. Note that `combiner`
		    defined in each sparse_id_column is ignored.
		  dimension: An integer specifying dimension of the embedding.
		  combiner: A string specifying how to reduce if there are multiple entries
		    in a single row. Currently "mean", "sqrtn" and "sum" are supported, with
		    "mean" the default. "sqrtn" often achieves good accuracy, in particular
		    with bag-of-words columns. Each of this can be thought as example level
		    normalizations on the column:
		      * "sum": do not normalize
		      * "mean": do l1 normalization
		      * "sqrtn": do l2 normalization
		    For more information: `tf.embedding_lookup_sparse`.
		  shared_embedding_name: (Optional). A string specifying the name of shared
		    embedding weights. This will be needed if you want to reference the shared
		    embedding separately from the generated `_EmbeddingColumn`.
		  initializer: A variable initializer function to be used in embedding
		    variable initialization. If not specified, defaults to
		    `tf.truncated_normal_initializer` with mean 0.0 and standard deviation
		    1/sqrt(sparse_id_columns[0].length).
		  ckpt_to_load_from: (Optional). String representing checkpoint name/pattern
		    to restore the column weights. Required if `tensor_name_in_ckpt` is not
		    None.
		  tensor_name_in_ckpt: (Optional). Name of the `Tensor` in the provided
		    checkpoint from which to restore the column weights. Required if
		    `ckpt_to_load_from` is not None.
		  max_norm: (Optional). If not None, embedding values are l2-normalized to
		    the value of max_norm.
		  trainable: (Optional). Should the embedding be trainable. Default is True
		
		Returns:
		  A tuple of `_EmbeddingColumn` with shared embedding space.
		
		Raises:
		  ValueError: if sparse_id_columns is empty, or its elements are not
		    compatible with each other.
		  TypeError: if `sparse_id_columns` is not a sequence or is a string. If at
		    least one element of `sparse_id_columns` is not a `SparseColumn` or a
		    `WeightedSparseColumn`.
	**/
	static public function shared_embedding_columns(sparse_id_columns:Dynamic, dimension:Dynamic, ?combiner:Dynamic, ?shared_embedding_name:Dynamic, ?initializer:Dynamic, ?ckpt_to_load_from:Dynamic, ?tensor_name_in_ckpt:Dynamic, ?max_norm:Dynamic, ?trainable:Dynamic):Dynamic;
	/**
		Performs softmax on Nth dimension of N-dimensional logit tensor.
		
		For two-dimensional logits this reduces to tf.nn.softmax. The N-th dimension
		needs to have a specified number of elements (number of classes).
		
		Args:
		  logits: N-dimensional `Tensor` with logits, where N > 1.
		  scope: Optional scope for variable_scope.
		
		Returns:
		  A `Tensor` with same shape and type as logits.
	**/
	static public function softmax(logits:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Creates a _SparseColumn with hashed bucket configuration.
		
		Use this when your sparse features are in string or integer format, but you
		don't have a vocab file that maps each value to an integer ID.
		output_id = Hash(input_feature_string) % bucket_size
		
		When hash_keys is set, multiple integer IDs would be created with each key
		pair in the `hash_keys`. This is useful to reduce the collision of hashed ids.
		
		Args:
		  column_name: A string defining sparse column name.
		  hash_bucket_size: An int that is > 1. The number of buckets.
		  combiner: A string specifying how to reduce if the sparse column is
		    multivalent. Currently "mean", "sqrtn" and "sum" are supported, with "sum"
		    the default. "sqrtn" often achieves good accuracy, in particular with
		    bag-of-words columns.
		      * "sum": do not normalize features in the column
		      * "mean": do l1 normalization on features in the column
		      * "sqrtn": do l2 normalization on features in the column
		    For more information: `tf.embedding_lookup_sparse`.
		  dtype: The type of features. Only string and integer types are supported.
		  hash_keys: The hash keys to use. It is a list of lists of two uint64s. If
		    None, simple and fast hashing algorithm is used. Otherwise, multiple
		    strong hash ids would be produced with each two unit64s in this argument.
		
		Returns:
		  A _SparseColumn with hashed bucket configuration
		
		Raises:
		  ValueError: hash_bucket_size is not greater than 2.
		  ValueError: dtype is neither string nor integer.
	**/
	static public function sparse_column_with_hash_bucket(column_name:Dynamic, hash_bucket_size:Dynamic, ?combiner:Dynamic, ?dtype:Dynamic, ?hash_keys:Dynamic):Dynamic;
	/**
		Creates an integerized _SparseColumn.
		
		Use this when your features are already pre-integerized into int64 IDs, that
		is, when the set of values to output is already coming in as what's desired in
		the output. Integerized means we can use the feature value itself as id.
		
		Typically this is used for reading contiguous ranges of integers indexes, but
		it doesn't have to be. The output value is simply copied from the
		input_feature, whatever it is. Just be aware, however, that if you have large
		gaps of unused integers it might affect what you feed those in (for instance,
		if you make up a one-hot tensor from these, the unused integers will appear as
		values in the tensor which are always zero.)
		
		Args:
		  column_name: A string defining sparse column name.
		  bucket_size: An int that is >= 1. The number of buckets. It should be bigger
		    than maximum feature. In other words features in this column should be an
		    int64 in range [0, bucket_size)
		  combiner: A string specifying how to reduce if the sparse column is
		    multivalent. Currently "mean", "sqrtn" and "sum" are supported, with "sum"
		    the default. "sqrtn" often achieves good accuracy, in particular with
		    bag-of-words columns.
		      * "sum": do not normalize features in the column
		      * "mean": do l1 normalization on features in the column
		      * "sqrtn": do l2 normalization on features in the column
		    For more information: `tf.embedding_lookup_sparse`.
		  dtype: Type of features. It should be an integer type. Default value is
		    dtypes.int64.
		
		Returns:
		  An integerized _SparseColumn definition.
		
		Raises:
		  ValueError: bucket_size is less than 1.
		  ValueError: dtype is not integer.
	**/
	static public function sparse_column_with_integerized_feature(column_name:Dynamic, bucket_size:Dynamic, ?combiner:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Creates a _SparseColumn with keys.
		
		Look up logic is as follows:
		lookup_id = index_of_feature_in_keys if feature in keys else default_value
		
		Args:
		  column_name: A string defining sparse column name.
		  keys: A list or tuple defining vocabulary. Must be castable to `dtype`.
		  default_value: The value to use for out-of-vocabulary feature values.
		    Default is -1.
		  combiner: A string specifying how to reduce if the sparse column is
		    multivalent. Currently "mean", "sqrtn" and "sum" are supported, with "sum"
		    the default. "sqrtn" often achieves good accuracy, in particular with
		    bag-of-words columns.
		      * "sum": do not normalize features in the column
		      * "mean": do l1 normalization on features in the column
		      * "sqrtn": do l2 normalization on features in the column
		    For more information: `tf.embedding_lookup_sparse`.
		  dtype: Type of features. Only integer and string are supported.
		
		Returns:
		  A _SparseColumnKeys with keys configuration.
	**/
	static public function sparse_column_with_keys(column_name:Dynamic, keys:Dynamic, ?default_value:Dynamic, ?combiner:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Creates a _SparseColumn with vocabulary file configuration.
		
		Use this when your sparse features are in string or integer format, and you
		have a vocab file that maps each value to an integer ID.
		output_id = LookupIdFromVocab(input_feature_string)
		
		Args:
		  column_name: A string defining sparse column name.
		  vocabulary_file: The vocabulary filename.
		  num_oov_buckets: The number of out-of-vocabulary buckets. If zero all out of
		    vocabulary features will be ignored.
		  vocab_size: Number of the elements in the vocabulary.
		  default_value: The value to use for out-of-vocabulary feature values.
		    Defaults to -1.
		  combiner: A string specifying how to reduce if the sparse column is
		    multivalent. Currently "mean", "sqrtn" and "sum" are supported, with "sum"
		    the default. "sqrtn" often achieves good accuracy, in particular with
		    bag-of-words columns.
		      * "sum": do not normalize features in the column
		      * "mean": do l1 normalization on features in the column
		      * "sqrtn": do l2 normalization on features in the column
		    For more information: `tf.embedding_lookup_sparse`.
		  dtype: The type of features. Only string and integer types are supported.
		
		Returns:
		  A _SparseColumn with vocabulary file configuration.
		
		Raises:
		  ValueError: vocab_size is not defined.
		  ValueError: dtype is neither string nor integer.
	**/
	static public function sparse_column_with_vocabulary_file(column_name:Dynamic, vocabulary_file:Dynamic, ?num_oov_buckets:Dynamic, ?vocab_size:Dynamic, ?default_value:Dynamic, ?combiner:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Crosses a list of Tensor or SparseTensor objects. (deprecated arguments)
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed after 2016-11-20.
		Instructions for updating:
		The default behavior of sparse_feature_cross is changing, the default
		value for hash_key will change to SPARSE_FEATURE_CROSS_DEFAULT_HASH_KEY.
		From that point on sparse_feature_cross will always use FingerprintCat64
		to concatenate the feature fingerprints. And the underlying
		_sparse_feature_cross_op.sparse_feature_cross operation will be marked
		as deprecated.
		
		See sparse_feature_cross_kernel.cc for more details.
		
		Args:
		  inputs: List of `SparseTensor` or `Tensor` to be crossed.
		  hashed_output: If true, returns the hash of the cross instead of the string.
		    This will allow us avoiding string manipulations.
		  num_buckets: It is used if hashed_output is true.
		    output = hashed_value%num_buckets if num_buckets > 0 else hashed_value.
		  name: A name prefix for the returned tensors (optional).
		  hash_key: Specify the hash_key that will be used by the `FingerprintCat64`
		    function to combine the crosses fingerprints on SparseFeatureCrossOp.
		    The default value is None, but will become
		    SPARSE_FEATURE_CROSS_DEFAULT_HASH_KEY after 2016-11-20 (optional).
		
		Returns:
		  A `SparseTensor` with the crossed features.
		  Return type is string if hashed_output=False, int64 otherwise.
		
		Raises:
		  TypeError: If the inputs aren't either SparseTensor or Tensor.
	**/
	static public function sparse_feature_cross(inputs:Dynamic, ?hashed_output:Dynamic, ?num_buckets:Dynamic, ?name:Dynamic, ?hash_key:Dynamic):Dynamic;
	/**
		Computes the spatial softmax of a convolutional feature map.
		
		First computes the softmax over the spatial extent of each channel of a
		convolutional feature map. Then computes the expected 2D position of the
		points of maximal activation for each channel, resulting in a set of
		feature keypoints [x1, y1, ... xN, yN] for all N channels.
		
		Read more here:
		"Learning visual feature spaces for robotic manipulation with
		deep spatial autoencoders." Finn et al., http://arxiv.org/abs/1509.06113.
		
		Args:
		  features: A `Tensor` of size [batch_size, W, H, num_channels]; the
		    convolutional feature map.
		  temperature: Softmax temperature (optional). If None, a learnable
		    temperature is created.
		  name: A name for this operation (optional).
		  variables_collections: Collections for the temperature variable.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  data_format: A string. `NHWC` (default) and `NCHW` are supported.
		Returns:
		  feature_keypoints: A `Tensor` with size [batch_size, num_channels * 2];
		    the expected 2D locations of each channel's feature keypoint (normalized
		    to the range (-1,1)). The inner dimension is arranged as
		    [x1, y1, ... xN, yN].
		Raises:
		  ValueError: If unexpected data_format specified.
		  ValueError: If num_channels dimension is unspecified.
	**/
	static public function spatial_softmax(features:Dynamic, ?temperature:Dynamic, ?name:Dynamic, ?variables_collections:Dynamic, ?trainable:Dynamic, ?data_format:Dynamic):Dynamic;
	/**
		Builds a stack of layers by applying layer repeatedly using stack_args.
		
		`stack` allows you to repeatedly apply the same operation with different
		arguments `stack_args[i]`. For each application of the layer, `stack` creates
		a new scope appended with an increasing number. For example:
		
		```python
		  y = stack(x, fully_connected, [32, 64, 128], scope='fc')
		  # It is equivalent to:
		
		  x = fully_connected(x, 32, scope='fc/fc_1')
		  x = fully_connected(x, 64, scope='fc/fc_2')
		  y = fully_connected(x, 128, scope='fc/fc_3')
		```
		
		If the `scope` argument is not given in `kwargs`, it is set to
		`layer.__name__`, or `layer.func.__name__` (for `functools.partial`
		objects). If neither `__name__` nor `func.__name__` is available, the
		layers are called with `scope='stack'`.
		
		Args:
		  inputs: A `Tensor` suitable for layer.
		  layer: A layer with arguments `(inputs, *args, **kwargs)`
		  stack_args: A list/tuple of parameters for each call of layer.
		  **kwargs: Extra kwargs for the layer.
		
		Returns:
		  A `Tensor` result of applying the stacked layers.
		
		Raises:
		  ValueError: If the op is unknown or wrong.
	**/
	static public function stack(inputs:Dynamic, layer:Dynamic, stack_args:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns a function that applies the sum of multiple regularizers.
		
		Args:
		  regularizer_list: A list of regularizers to apply.
		  scope: An optional scope name
		
		Returns:
		  A function with signature `sum_reg(weights)` that applies the
		  sum of all the input regularizers.
	**/
	static public function sum_regularizer(regularizer_list:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Summarize an activation.
		
		This applies the given activation and adds useful summaries specific to the
		activation.
		
		Args:
		  op: The tensor to summarize (assumed to be a layer activation).
		Returns:
		  The summary op created to summarize `op`.
	**/
	static public function summarize_activation(op:Dynamic):Dynamic;
	/**
		Summarize activations, using `summarize_activation` to summarize.
	**/
	static public function summarize_activations(?name_filter:Dynamic, ?summarizer:Dynamic):Dynamic;
	static public function summarize_biases(?name_filter:Dynamic, ?summarizer:Dynamic):Dynamic;
	/**
		Summarize a graph collection of tensors, possibly filtered by name.
	**/
	static public function summarize_collection(collection:Dynamic, ?name_filter:Dynamic, ?summarizer:Dynamic):Dynamic;
	/**
		Summarize a tensor using a suitable summary type.
		
		This function adds a summary op for `tensor`. The type of summary depends on
		the shape of `tensor`. For scalars, a `scalar_summary` is created, for all
		other tensors, `histogram_summary` is used.
		
		Args:
		  tensor: The tensor to summarize
		  tag: The tag to use, if None then use tensor's op's name.
		
		Returns:
		  The summary op created or None for string tensors.
	**/
	static public function summarize_tensor(tensor:Dynamic, ?tag:Dynamic):Dynamic;
	/**
		Summarize a set of tensors.
	**/
	static public function summarize_tensors(tensors:Dynamic, ?summarizer:Dynamic):Dynamic;
	static public function summarize_variables(?name_filter:Dynamic, ?summarizer:Dynamic):Dynamic;
	static public function summarize_weights(?name_filter:Dynamic, ?summarizer:Dynamic):Dynamic;
	/**
		Returns transformed features based on features columns passed in.
		
		Example:
		
		```python
		columns_to_tensor = transform_features(features=features,
		                                       feature_columns=feature_columns)
		
		# Where my_features are:
		# Define features and transformations
		sparse_feature_a = sparse_column_with_keys(
		    column_name="sparse_feature_a", keys=["AB", "CD", ...])
		
		embedding_feature_a = embedding_column(
		    sparse_id_column=sparse_feature_a, dimension=3, combiner="sum")
		
		sparse_feature_b = sparse_column_with_hash_bucket(
		    column_name="sparse_feature_b", hash_bucket_size=1000)
		
		embedding_feature_b = embedding_column(
		    sparse_id_column=sparse_feature_b, dimension=16, combiner="sum")
		
		crossed_feature_a_x_b = crossed_column(
		    columns=[sparse_feature_a, sparse_feature_b], hash_bucket_size=10000)
		
		real_feature = real_valued_column("real_feature")
		real_feature_buckets = bucketized_column(
		    source_column=real_feature, boundaries=[...])
		
		feature_columns = [embedding_feature_b,
		                   real_feature_buckets,
		                   embedding_feature_a]
		```
		
		Args:
		  features: A dictionary of features.
		  feature_columns: An iterable containing all the feature columns. All items
		    should be instances of classes derived from _FeatureColumn.
		
		Returns:
		  A `dict` mapping FeatureColumn to `Tensor` and `SparseTensor` values.
	**/
	static public function transform_features(features:Dynamic, feature_columns:Dynamic):Dynamic;
	/**
		Normalizes the given input across the specified dimension to unit length.
		
		Note that the rank of `input` must be known.
		
		Args:
		  inputs: A `Tensor` of arbitrary size.
		  dim: The dimension along which the input is normalized.
		  epsilon: A small value to add to the inputs to avoid dividing by zero.
		  scope: Optional scope for variable_scope.
		
		Returns:
		  The normalized `Tensor`.
		
		Raises:
		  ValueError: If dim is smaller than the number of dimensions in 'inputs'.
	**/
	static public function unit_norm(inputs:Dynamic, dim:Dynamic, ?epsilon:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Gets an existing variable with these parameters or creates a new one.
		
		Args:
		  name: the name of the new or existing variable.
		  shape: shape of the new or existing variable.
		  dtype: type of the new or existing variable (defaults to `DT_FLOAT`).
		  initializer: initializer for the variable if one is created.
		  regularizer: a (Tensor -> Tensor or None) function; the result of
		      applying it on a newly created variable will be added to the collection
		      GraphKeys.REGULARIZATION_LOSSES and can be used for regularization.
		  trainable: If `True` also add the variable to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  collections: A list of collection names to which the Variable will be added.
		    If None it would default to `tf.GraphKeys.GLOBAL_VARIABLES`.
		  caching_device: Optional device string or function describing where the
		      Variable should be cached for reading.  Defaults to the Variable's
		      device.
		  device: Optional device to place the variable. It can be an string or a
		    function that is called to get the device for the variable.
		  partitioner: Optional callable that accepts a fully defined `TensorShape`
		    and dtype of the `Variable` to be created, and returns a list of
		    partitions for each axis (currently only one axis can be partitioned).
		  custom_getter: Callable that allows overwriting the internal
		    get_variable method and has to have the same signature.
		  use_resource: If `True` use a ResourceVariable instead of a Variable.
		  synchronization: Indicates when a distributed a variable will be
		    aggregated. Accepted values are constants defined in the class
		    `tf.VariableSynchronization`. By default the synchronization is set to
		    `AUTO` and the current `DistributionStrategy` chooses
		    when to synchronize. If `synchronization` is set to `ON_READ`,
		    `trainable` must not be set to `True`.
		  aggregation: Indicates how a distributed variable will be aggregated.
		    Accepted values are constants defined in the class
		    `tf.VariableAggregation`.
		
		Returns:
		  The created or existing variable.
	**/
	static public function variable(name:Dynamic, ?shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?trainable:Dynamic, ?collections:Dynamic, ?caching_device:Dynamic, ?device:Dynamic, ?partitioner:Dynamic, ?custom_getter:Dynamic, ?use_resource:Dynamic, ?synchronization:Dynamic, ?aggregation:Dynamic):Dynamic;
	/**
		Returns an initializer that generates tensors without scaling variance.
		
		When initializing a deep network, it is in principle advantageous to keep
		the scale of the input variance constant, so it does not explode or diminish
		by reaching the final layer. This initializer use the following formula:
		
		```python
		  if mode='FAN_IN': # Count only number of input connections.
		    n = fan_in
		  elif mode='FAN_OUT': # Count only number of output connections.
		    n = fan_out
		  elif mode='FAN_AVG': # Average number of inputs and output connections.
		    n = (fan_in + fan_out)/2.0
		
		    truncated_normal(shape, 0.0, stddev=sqrt(factor / n))
		```
		
		* To get [Delving Deep into Rectifiers](
		   http://arxiv.org/pdf/1502.01852v1.pdf) (also know as the "MSRA 
		   initialization"), use (Default):<br/>
		  `factor=2.0 mode='FAN_IN' uniform=False`
		* To get [Convolutional Architecture for Fast Feature Embedding](
		   http://arxiv.org/abs/1408.5093), use:<br/>
		  `factor=1.0 mode='FAN_IN' uniform=True`
		* To get [Understanding the difficulty of training deep feedforward neural
		  networks](http://jmlr.org/proceedings/papers/v9/glorot10a/glorot10a.pdf),
		  use:<br/>
		  `factor=1.0 mode='FAN_AVG' uniform=True.`
		* To get `xavier_initializer` use either:<br/>
		  `factor=1.0 mode='FAN_AVG' uniform=True`, or<br/>
		  `factor=1.0 mode='FAN_AVG' uniform=False`.
		
		Args:
		  factor: Float.  A multiplicative factor.
		  mode: String.  'FAN_IN', 'FAN_OUT', 'FAN_AVG'.
		  uniform: Whether to use uniform or normal distributed random initialization.
		  seed: A Python integer. Used to create random seeds. See
		        `tf.set_random_seed` for behavior.
		  dtype: The data type. Only floating point types are supported.
		
		Returns:
		  An initializer that generates tensors with unit variance.
		
		Raises:
		  ValueError: if `dtype` is not a floating point type.
		  TypeError: if `mode` is not in ['FAN_IN', 'FAN_OUT', 'FAN_AVG'].
	**/
	static public function variance_scaling_initializer(?factor:Dynamic, ?mode:Dynamic, ?uniform:Dynamic, ?seed:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Creates a _SparseColumn by combining sparse_id_column with a weight column.
		
		Example:
		
		  ```python
		  sparse_feature = sparse_column_with_hash_bucket(column_name="sparse_col",
		                                                  hash_bucket_size=1000)
		  weighted_feature = weighted_sparse_column(sparse_id_column=sparse_feature,
		                                            weight_column_name="weights_col")
		  ```
		
		  This configuration assumes that input dictionary of model contains the
		  following two items:
		    * (key="sparse_col", value=sparse_tensor) where sparse_tensor is
		      a SparseTensor.
		    * (key="weights_col", value=weights_tensor) where weights_tensor
		      is a SparseTensor.
		   Following are assumed to be true:
		     * sparse_tensor.indices = weights_tensor.indices
		     * sparse_tensor.dense_shape = weights_tensor.dense_shape
		
		Args:
		  sparse_id_column: A `_SparseColumn` which is created by
		    `sparse_column_with_*` functions.
		  weight_column_name: A string defining a sparse column name which represents
		    weight or value of the corresponding sparse id feature.
		  dtype: Type of weights, such as `tf.float32`. Only floating and integer
		    weights are supported.
		
		Returns:
		  A _WeightedSparseColumn composed of two sparse features: one represents id,
		  the other represents weight (value) of the id feature in that example.
		
		Raises:
		  ValueError: if dtype is not convertible to float.
	**/
	static public function weighted_sparse_column(sparse_id_column:Dynamic, weight_column_name:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		A tf.contrib.layers style linear prediction builder based on FeatureColumn.
		
		Generally a single example in training data is described with feature columns.
		This function generates weighted sum for each num_outputs. Weighted sum refers
		to logits in classification problems. It refers to prediction itself for
		linear regression problems.
		
		Example:
		
		  ```
		  # Building model for training
		  feature_columns = (
		      real_valued_column("my_feature1"),
		      ...
		  )
		  columns_to_tensor = tf.parse_example(...)
		  logits = weighted_sum_from_feature_columns(
		      columns_to_tensors=columns_to_tensor,
		      feature_columns=feature_columns,
		      num_outputs=1)
		  loss = tf.nn.sigmoid_cross_entropy_with_logits(labels=labels,
		                                                 logits=logits)
		  ```
		
		Args:
		  columns_to_tensors: A mapping from feature column to tensors. 'string' key
		    means a base feature (not-transformed). It can have FeatureColumn as a
		    key too. That means that FeatureColumn is already transformed by input
		    pipeline. For example, `inflow` may have handled transformations.
		  feature_columns: A set containing all the feature columns. All items in the
		    set should be instances of classes derived from FeatureColumn.
		  num_outputs: An integer specifying number of outputs. Default value is 1.
		  weight_collections: List of graph collections to which weights are added.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for variable_scope.
		
		Returns:
		  A tuple containing:
		
		    * A Tensor which represents predictions of a linear model.
		    * A dictionary which maps feature_column to corresponding Variable.
		    * A Variable which is used for bias.
		
		Raises:
		  ValueError: if FeatureColumn cannot be used for linear predictions.
	**/
	static public function weighted_sum_from_feature_columns(columns_to_tensors:Dynamic, feature_columns:Dynamic, num_outputs:Dynamic, ?weight_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Returns an initializer performing "Xavier" initialization for weights.
		
		This function implements the weight initialization from:
		
		Xavier Glorot and Yoshua Bengio (2010):
		         [Understanding the difficulty of training deep feedforward neural
		         networks. International conference on artificial intelligence and
		         statistics.](
		         http://www.jmlr.org/proceedings/papers/v9/glorot10a/glorot10a.pdf)
		
		This initializer is designed to keep the scale of the gradients roughly the
		same in all layers. In uniform distribution this ends up being the range:
		`x = sqrt(6. / (in + out)); [-x, x]` and for normal distribution a standard
		deviation of `sqrt(2. / (in + out))` is used.
		
		Args:
		  uniform: Whether to use uniform or normal distributed random initialization.
		  seed: A Python integer. Used to create random seeds. See
		        `tf.set_random_seed` for behavior.
		  dtype: The data type. Only floating point types are supported.
		
		Returns:
		  An initializer for a weight matrix.
	**/
	static public function xavier_initializer(?uniform:Dynamic, ?seed:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Returns an initializer performing "Xavier" initialization for weights.
		
		This function implements the weight initialization from:
		
		Xavier Glorot and Yoshua Bengio (2010):
		         [Understanding the difficulty of training deep feedforward neural
		         networks. International conference on artificial intelligence and
		         statistics.](
		         http://www.jmlr.org/proceedings/papers/v9/glorot10a/glorot10a.pdf)
		
		This initializer is designed to keep the scale of the gradients roughly the
		same in all layers. In uniform distribution this ends up being the range:
		`x = sqrt(6. / (in + out)); [-x, x]` and for normal distribution a standard
		deviation of `sqrt(2. / (in + out))` is used.
		
		Args:
		  uniform: Whether to use uniform or normal distributed random initialization.
		  seed: A Python integer. Used to create random seeds. See
		        `tf.set_random_seed` for behavior.
		  dtype: The data type. Only floating point types are supported.
		
		Returns:
		  An initializer for a weight matrix.
	**/
	static public function xavier_initializer_conv2d(?uniform:Dynamic, ?seed:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Initialize 'ref' with all zeros, ref tensor should be uninitialized.
		If already initialized, you will get ValueError. This op is intended to
		save memory during initialization.
		Args:
		  ref: ref of the tensor need to be zero initialized.
		  name: optional name for this operation.
		Returns:
		  ref that initialized.
		Raises:
		  ValueError: If ref tensor is initialized.
	**/
	static public function zero_initializer(ref:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
}