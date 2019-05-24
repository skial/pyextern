/* This file is generated, do not edit! */
package tensorflow.python.ops.losses.losses_impl;
@:pythonImport("tensorflow.python.ops.losses.losses_impl") extern class Losses_impl_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Computes the number of elements in `losses` tensor.
	**/
	static public function _num_elements(losses:Dynamic):Dynamic;
	/**
		Computes the number of elements in the loss function induced by `weights`.
		
		A given weights tensor induces different numbers of usable elements in the
		`losses` tensor. The `weights` tensor is broadcast across `losses` for all
		possible dimensions. For example, if `losses` is a tensor of dimension
		`[4, 5, 6, 3]` and `weights` is a tensor of shape `[4, 5]`, then `weights` is,
		in effect, tiled to match the shape of `losses`. Following this effective
		tile, the total number of present elements is the number of non-zero weights.
		
		Args:
		  losses: `Tensor` of shape `[batch_size, d1, ... dN]`.
		  weights: `Tensor` of shape `[]`, `[batch_size]` or
		    `[batch_size, d1, ... dK]`, where K < N.
		  per_batch: Whether to return the number of elements per batch or as a sum
		    total.
		
		Returns:
		  The number of present (non-zero) elements in the losses tensor. If
		    `per_batch` is `True`, the value is returned as a tensor of size
		    `[batch_size]`. Otherwise, a single scalar tensor is returned.
	**/
	static public function _num_present(losses:Dynamic, weights:Dynamic, ?per_batch:Dynamic):Dynamic;
	/**
		Internal version of _remove_squeezable_dimensions which handles weights.
		
		Squeezes `predictions` and `labels` if their ranks differ from expected by
		exactly 1.
		Squeezes `weights` if its rank is 1 more than the new rank of `predictions`
		
		This will use static shape if available. Otherwise, it will add graph
		operations, which could result in a performance hit.
		
		Args:
		  labels: Label values, a `Tensor` whose dimensions match `predictions`.
		  predictions: Predicted values, a `Tensor` of arbitrary dimensions.
		  weights: Optional weight `Tensor`. It will be squeezed if it's not scalar,
		    and its rank is 1 more than the new rank of `labels`.
		  expected_rank_diff: Expected result of `rank(predictions) - rank(labels)`.
		
		Returns:
		  Tuple of `predictions`, `labels` and `weights`, possibly with the last
		  dimension squeezed.
	**/
	static public function _remove_squeezable_dimensions(labels:Dynamic, predictions:Dynamic, ?weights:Dynamic, ?expected_rank_diff:Dynamic):Dynamic;
	/**
		Computes a safe mean of the losses.
		
		Args:
		  losses: `Tensor` whose elements contain individual loss measurements.
		  num_present: The number of measurable elements in `losses`.
		
		Returns:
		  A scalar representing the mean of `losses`. If `num_present` is zero,
		    then zero is returned.
	**/
	static public function _safe_mean(losses:Dynamic, num_present:Dynamic):Dynamic;
	/**
		Adds an Absolute Difference loss to the training procedure.
		
		`weights` acts as a coefficient for the loss. If a scalar is provided, then
		the loss is simply scaled by the given value. If `weights` is a `Tensor` of
		shape `[batch_size]`, then the total loss for each sample of the batch is
		rescaled by the corresponding element in the `weights` vector. If the shape of
		`weights` matches the shape of `predictions`, then the loss of each
		measurable element of `predictions` is scaled by the corresponding value of
		`weights`.
		
		Args:
		  labels: The ground truth output tensor, same dimensions as 'predictions'.
		  predictions: The predicted outputs.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `losses` dimension).
		  scope: The scope for the operations performed in computing the loss.
		  loss_collection: collection to which this loss will be added.
		  reduction: Type of reduction to apply to loss.
		
		Returns:
		  Weighted loss float `Tensor`. If `reduction` is `NONE`, this has the same
		  shape as `labels`; otherwise, it is scalar.
		
		Raises:
		  ValueError: If the shape of `predictions` doesn't match that of
		    `labels` or if the shape of `weights` is invalid or if `labels`
		    or `predictions` is None.
		
		@compatibility(eager)
		The `loss_collection` argument is ignored when executing eagerly. Consider
		holding on to the return value or collecting losses via a `tf.keras.Model`.
		@end_compatibility
	**/
	static public function absolute_difference(labels:Dynamic, predictions:Dynamic, ?weights:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic, ?reduction:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Computes the weighted loss.
		
		Args:
		  losses: `Tensor` of shape `[batch_size, d1, ... dN]`.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `losses`, and must be broadcastable to `losses` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `losses` dimension).
		  scope: the scope for the operations performed in computing the loss.
		  loss_collection: the loss will be added to these collections.
		  reduction: Type of reduction to apply to loss.
		
		Returns:
		  Weighted loss `Tensor` of the same type as `losses`. If `reduction` is
		  `NONE`, this has the same shape as `losses`; otherwise, it is scalar.
		
		Raises:
		  ValueError: If `weights` is `None` or the shape is not compatible with
		    `losses`, or if the number of dimensions (rank) of either `losses` or
		    `weights` is missing.
		
		Note:
		  When calculating the gradient of a weighted loss contributions from
		  both `losses` and `weights` are considered. If your `weights` depend
		  on some model parameters but you do not want this to affect the loss
		  gradient, you need to apply `tf.stop_gradient` to `weights` before
		  passing them to `compute_weighted_loss`.
		
		@compatibility(eager)
		The `loss_collection` argument is ignored when executing eagerly. Consider
		holding on to the return value or collecting losses via a `tf.keras.Model`.
		@end_compatibility
	**/
	static public function compute_weighted_loss(losses:Dynamic, ?weights:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		Adds a cosine-distance loss to the training procedure. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(dim)`. They will be removed in a future version.
		Instructions for updating:
		dim is deprecated, use axis instead
		
		Note that the function assumes that `predictions` and `labels` are already
		unit-normalized.
		
		Args:
		  labels: `Tensor` whose shape matches 'predictions'
		  predictions: An arbitrary matrix.
		  axis: The dimension along which the cosine distance is computed.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `losses` dimension).
		  scope: The scope for the operations performed in computing the loss.
		  loss_collection: collection to which this loss will be added.
		  reduction: Type of reduction to apply to loss.
		  dim: The old (deprecated) name for `axis`.
		
		Returns:
		  Weighted loss float `Tensor`. If `reduction` is `NONE`, this has the same
		  shape as `labels`; otherwise, it is scalar.
		
		Raises:
		  ValueError: If `predictions` shape doesn't match `labels` shape, or
		    `axis`, `labels`, `predictions` or `weights` is `None`.
		
		@compatibility(eager)
		The `loss_collection` argument is ignored when executing eagerly. Consider
		holding on to the return value or collecting losses via a `tf.keras.Model`.
		@end_compatibility
	**/
	static public function cosine_distance(labels:Dynamic, predictions:Dynamic, ?axis:Dynamic, ?weights:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic, ?reduction:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Decorator for marking specific function arguments as deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called with the deprecated argument. It has the following format:
		
		  Calling <function> (from <module>) with <arg> is deprecated and will be
		  removed after <date>. Instructions for updating:
		    <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> includes the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated arguments)' is
		appended to the first line of the docstring and a deprecation notice is
		prepended to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None.
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  *deprecated_arg_names_or_tuples: String or 2-Tuple(String,
		    [ok_vals]).  The string is the deprecated argument name.
		    Optionally, an ok-value may be provided.  If the user provided
		    argument equals this value, the warning is suppressed.
		  **kwargs: If `warn_once=False` is passed, every call with a deprecated
		    argument will log a warning. The default behavior is to only warn the
		    first time the function is called with any given deprecated argument.
		    All other kwargs raise `ValueError`.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, instructions are
		    empty, the deprecated arguments are not present in the function
		    signature, the second element of a deprecated_tuple is not a
		    list, or if a kwarg other than `warn_once` is passed.
	**/
	static public function deprecated_args(date:Dynamic, instructions:Dynamic, ?deprecated_arg_names_or_tuples:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Looks up deprecated argument name and ensures both are not used.
		
		Args:
		  new_name: new name of argument
		  new_value: value of new argument (or None if not used)
		  old_name: old name of argument
		  old_value: value of old argument (or None if not used)
		Returns:
		  The effective argument that should be used.
		Raises:
		  ValueError: if new_value and old_value are both non-null
	**/
	static public function deprecated_argument_lookup(new_name:Dynamic, new_value:Dynamic, old_name:Dynamic, old_value:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Adds a hinge loss to the training procedure.
		
		Args:
		  labels: The ground truth output tensor. Its shape should match the shape of
		    logits. The values of the tensor are expected to be 0.0 or 1.0. Internally
		    the {0,1} labels are converted to {-1,1} when calculating the hinge loss.
		  logits: The logits, a float tensor. Note that logits are assumed to be
		    unbounded and 0-centered. A value > 0 (resp. < 0) is considered a positive
		    (resp. negative) binary prediction.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `losses` dimension).
		  scope: The scope for the operations performed in computing the loss.
		  loss_collection: collection to which the loss will be added.
		  reduction: Type of reduction to apply to loss.
		
		Returns:
		  Weighted loss float `Tensor`. If `reduction` is `NONE`, this has the same
		  shape as `labels`; otherwise, it is scalar.
		
		Raises:
		  ValueError: If the shapes of `logits` and `labels` don't match or
		    if `labels` or `logits` is None.
		
		@compatibility(eager)
		The `loss_collection` argument is ignored when executing eagerly. Consider
		holding on to the return value or collecting losses via a `tf.keras.Model`.
		@end_compatibility
	**/
	static public function hinge_loss(labels:Dynamic, logits:Dynamic, ?weights:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		Adds a Huber Loss term to the training procedure.
		
		For each value x in `error=labels-predictions`, the following is calculated:
		
		```
		  0.5 * x^2                  if |x| <= d
		  0.5 * d^2 + d * (|x| - d)  if |x| > d
		```
		
		where d is `delta`.
		
		See: https://en.wikipedia.org/wiki/Huber_loss
		
		`weights` acts as a coefficient for the loss. If a scalar is provided, then
		the loss is simply scaled by the given value. If `weights` is a tensor of size
		`[batch_size]`, then the total loss for each sample of the batch is rescaled
		by the corresponding element in the `weights` vector. If the shape of
		`weights` matches the shape of `predictions`, then the loss of each
		measurable element of `predictions` is scaled by the corresponding value of
		`weights`.
		
		Args:
		  labels: The ground truth output tensor, same dimensions as 'predictions'.
		  predictions: The predicted outputs.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `losses` dimension).
		  delta: `float`, the point where the huber loss function
		    changes from a quadratic to linear.
		  scope: The scope for the operations performed in computing the loss.
		  loss_collection: collection to which the loss will be added.
		  reduction: Type of reduction to apply to loss.
		
		Returns:
		  Weighted loss float `Tensor`. If `reduction` is `NONE`, this has the same
		  shape as `labels`; otherwise, it is scalar.
		
		Raises:
		  ValueError: If the shape of `predictions` doesn't match that of `labels` or
		    if the shape of `weights` is invalid.  Also if `labels` or
		   `predictions` is None.
		
		@compatibility(eager)
		The `loss_collection` argument is ignored when executing eagerly. Consider
		holding on to the return value or collecting losses via a `tf.keras.Model`.
		@end_compatibility
	**/
	static public function huber_loss(labels:Dynamic, predictions:Dynamic, ?weights:Dynamic, ?delta:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		Adds a Log Loss term to the training procedure.
		
		`weights` acts as a coefficient for the loss. If a scalar is provided, then
		the loss is simply scaled by the given value. If `weights` is a tensor of size
		`[batch_size]`, then the total loss for each sample of the batch is rescaled
		by the corresponding element in the `weights` vector. If the shape of
		`weights` matches the shape of `predictions`, then the loss of each
		measurable element of `predictions` is scaled by the corresponding value of
		`weights`.
		
		Args:
		  labels: The ground truth output tensor, same dimensions as 'predictions'.
		  predictions: The predicted outputs.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `losses` dimension).
		  epsilon: A small increment to add to avoid taking a log of zero.
		  scope: The scope for the operations performed in computing the loss.
		  loss_collection: collection to which the loss will be added.
		  reduction: Type of reduction to apply to loss.
		
		Returns:
		  Weighted loss float `Tensor`. If `reduction` is `NONE`, this has the same
		  shape as `labels`; otherwise, it is scalar.
		
		Raises:
		  ValueError: If the shape of `predictions` doesn't match that of `labels` or
		    if the shape of `weights` is invalid.  Also if `labels` or `predictions`
		    is None.
		
		@compatibility(eager)
		The `loss_collection` argument is ignored when executing eagerly. Consider
		holding on to the return value or collecting losses via a `tf.keras.Model`.
		@end_compatibility
	**/
	static public function log_loss(labels:Dynamic, predictions:Dynamic, ?weights:Dynamic, ?epsilon:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		Adds a pairwise-errors-squared loss to the training procedure.
		
		Unlike `mean_squared_error`, which is a measure of the differences between
		corresponding elements of `predictions` and `labels`,
		`mean_pairwise_squared_error` is a measure of the differences between pairs of
		corresponding elements of `predictions` and `labels`.
		
		For example, if `labels`=[a, b, c] and `predictions`=[x, y, z], there are
		three pairs of differences are summed to compute the loss:
		  loss = [ ((a-b) - (x-y)).^2 + ((a-c) - (x-z)).^2 + ((b-c) - (y-z)).^2 ] / 3
		
		Note that since the inputs are of shape `[batch_size, d0, ... dN]`, the
		corresponding pairs are computed within each batch sample but not across
		samples within a batch. For example, if `predictions` represents a batch of
		16 grayscale images of dimension [batch_size, 100, 200], then the set of pairs
		is drawn from each image, but not across images.
		
		`weights` acts as a coefficient for the loss. If a scalar is provided, then
		the loss is simply scaled by the given value. If `weights` is a tensor of size
		`[batch_size]`, then the total loss for each sample of the batch is rescaled
		by the corresponding element in the `weights` vector.
		
		Args:
		  labels: The ground truth output tensor, whose shape must match the shape of
		    `predictions`.
		  predictions: The predicted outputs, a tensor of size
		    `[batch_size, d0, .. dN]` where N+1 is the total number of dimensions in
		    `predictions`.
		  weights: Coefficients for the loss a scalar, a tensor of shape
		    `[batch_size]` or a tensor whose shape matches `predictions`.
		  scope: The scope for the operations performed in computing the loss.
		  loss_collection: collection to which the loss will be added.
		
		Returns:
		  A scalar `Tensor` that returns the weighted loss.
		
		Raises:
		  ValueError: If the shape of `predictions` doesn't match that of `labels` or
		    if the shape of `weights` is invalid.  Also if `labels` or `predictions`
		    is None.
		
		@compatibility(eager)
		The `loss_collection` argument is ignored when executing eagerly. Consider
		holding on to the return value or collecting losses via a `tf.keras.Model`.
		@end_compatibility
	**/
	static public function mean_pairwise_squared_error(labels:Dynamic, predictions:Dynamic, ?weights:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic):Dynamic;
	/**
		Adds a Sum-of-Squares loss to the training procedure.
		
		`weights` acts as a coefficient for the loss. If a scalar is provided, then
		the loss is simply scaled by the given value. If `weights` is a tensor of size
		`[batch_size]`, then the total loss for each sample of the batch is rescaled
		by the corresponding element in the `weights` vector. If the shape of
		`weights` matches the shape of `predictions`, then the loss of each
		measurable element of `predictions` is scaled by the corresponding value of
		`weights`.
		
		Args:
		  labels: The ground truth output tensor, same dimensions as 'predictions'.
		  predictions: The predicted outputs.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `losses` dimension).
		  scope: The scope for the operations performed in computing the loss.
		  loss_collection: collection to which the loss will be added.
		  reduction: Type of reduction to apply to loss.
		
		Returns:
		  Weighted loss float `Tensor`. If `reduction` is `NONE`, this has the same
		  shape as `labels`; otherwise, it is scalar.
		
		Raises:
		  ValueError: If the shape of `predictions` doesn't match that of `labels` or
		    if the shape of `weights` is invalid.  Also if `labels` or `predictions`
		    is None.
		
		@compatibility(eager)
		The `loss_collection` argument is ignored when executing eagerly. Consider
		holding on to the return value or collecting losses via a `tf.keras.Model`.
		@end_compatibility
	**/
	static public function mean_squared_error(labels:Dynamic, predictions:Dynamic, ?weights:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic, ?reduction:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Creates a cross-entropy loss using tf.nn.sigmoid_cross_entropy_with_logits.
		
		`weights` acts as a coefficient for the loss. If a scalar is provided,
		then the loss is simply scaled by the given value. If `weights` is a
		tensor of shape `[batch_size]`, then the loss weights apply to each
		corresponding sample.
		
		If `label_smoothing` is nonzero, smooth the labels towards 1/2:
		
		    new_multiclass_labels = multiclass_labels * (1 - label_smoothing)
		                            + 0.5 * label_smoothing
		
		Args:
		  multi_class_labels: `[batch_size, num_classes]` target integer labels in
		    `{0, 1}`.
		  logits: Float `[batch_size, num_classes]` logits outputs of the network.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `losses` dimension).
		  label_smoothing: If greater than `0` then smooth the labels.
		  scope: The scope for the operations performed in computing the loss.
		  loss_collection: collection to which the loss will be added.
		  reduction: Type of reduction to apply to loss.
		
		Returns:
		  Weighted loss `Tensor` of the same type as `logits`. If `reduction` is
		  `NONE`, this has the same shape as `logits`; otherwise, it is scalar.
		
		Raises:
		  ValueError: If the shape of `logits` doesn't match that of
		    `multi_class_labels` or if the shape of `weights` is invalid, or if
		    `weights` is None.  Also if `multi_class_labels` or `logits` is None.
		
		@compatibility(eager)
		The `loss_collection` argument is ignored when executing eagerly. Consider
		holding on to the return value or collecting losses via a `tf.keras.Model`.
		@end_compatibility
	**/
	static public function sigmoid_cross_entropy(multi_class_labels:Dynamic, logits:Dynamic, ?weights:Dynamic, ?label_smoothing:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		Creates a cross-entropy loss using tf.nn.softmax_cross_entropy_with_logits_v2.
		
		`weights` acts as a coefficient for the loss. If a scalar is provided,
		then the loss is simply scaled by the given value. If `weights` is a
		tensor of shape `[batch_size]`, then the loss weights apply to each
		corresponding sample.
		
		If `label_smoothing` is nonzero, smooth the labels towards 1/num_classes:
		    new_onehot_labels = onehot_labels * (1 - label_smoothing)
		                        + label_smoothing / num_classes
		
		Note that `onehot_labels` and `logits` must have the same shape,
		e.g. `[batch_size, num_classes]`. The shape of `weights` must be
		broadcastable to loss, whose shape is decided by the shape of `logits`.
		In case the shape of `logits` is `[batch_size, num_classes]`, loss is
		a `Tensor` of shape `[batch_size]`.
		
		Args:
		  onehot_labels: One-hot-encoded labels.
		  logits: Logits outputs of the network.
		  weights: Optional `Tensor` that is broadcastable to loss.
		  label_smoothing: If greater than 0 then smooth the labels.
		  scope: the scope for the operations performed in computing the loss.
		  loss_collection: collection to which the loss will be added.
		  reduction: Type of reduction to apply to loss.
		
		Returns:
		  Weighted loss `Tensor` of the same type as `logits`. If `reduction` is
		  `NONE`, this has shape `[batch_size]`; otherwise, it is scalar.
		
		Raises:
		  ValueError: If the shape of `logits` doesn't match that of `onehot_labels`
		    or if the shape of `weights` is invalid or if `weights` is None.  Also if
		    `onehot_labels` or `logits` is None.
		
		@compatibility(eager)
		The `loss_collection` argument is ignored when executing eagerly. Consider
		holding on to the return value or collecting losses via a `tf.keras.Model`.
		@end_compatibility
	**/
	static public function softmax_cross_entropy(onehot_labels:Dynamic, logits:Dynamic, ?weights:Dynamic, ?label_smoothing:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		Cross-entropy loss using `tf.nn.sparse_softmax_cross_entropy_with_logits`.
		
		`weights` acts as a coefficient for the loss. If a scalar is provided,
		then the loss is simply scaled by the given value. If `weights` is a
		tensor of shape `[batch_size]`, then the loss weights apply to each
		corresponding sample.
		
		Args:
		  labels: `Tensor` of shape `[d_0, d_1, ..., d_{r-1}]` (where `r` is rank of
		    `labels` and result) and dtype `int32` or `int64`. Each entry in `labels`
		    must be an index in `[0, num_classes)`. Other values will raise an
		    exception when this op is run on CPU, and return `NaN` for corresponding
		    loss and gradient rows on GPU.
		  logits: Unscaled log probabilities of shape
		    `[d_0, d_1, ..., d_{r-1}, num_classes]` and dtype `float16`, `float32` or
		    `float64`.
		  weights: Coefficients for the loss. This must be scalar or broadcastable to
		    `labels` (i.e. same rank and each dimension is either 1 or the same).
		  scope: the scope for the operations performed in computing the loss.
		  loss_collection: collection to which the loss will be added.
		  reduction: Type of reduction to apply to loss.
		
		Returns:
		  Weighted loss `Tensor` of the same type as `logits`. If `reduction` is
		  `NONE`, this has the same shape as `labels`; otherwise, it is scalar.
		
		Raises:
		  ValueError: If the shapes of `logits`, `labels`, and `weights` are
		    incompatible, or if any of them are None.
		
		@compatibility(eager)
		The `loss_collection` argument is ignored when executing eagerly. Consider
		holding on to the return value or collecting losses via a `tf.keras.Model`.
		@end_compatibility
	**/
	static public function sparse_softmax_cross_entropy(labels:Dynamic, logits:Dynamic, ?weights:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic, ?reduction:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}