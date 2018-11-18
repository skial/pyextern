/* This file is generated, do not edit! */
package tensorflow.contrib.estimator.python.estimator.multi_head;
@:pythonImport("tensorflow.contrib.estimator.python.estimator.multi_head") extern class Multi_head_Module {
	static public var _DEFAULT_SERVING_KEY : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Extracts the default export output from the given export_outputs dict.
	**/
	static public function _default_export_output(export_outputs:Dynamic, head_name:Dynamic):Dynamic;
	/**
		Merges the given losses into one tensor.
	**/
	static public function _merge_losses(losses:Dynamic, ?head_weights:Dynamic):Dynamic;
	static public function _no_op_train_fn(loss:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Creates a `_Head` for multi-objective learning.
		
		This class merges the output of multiple `_Head` objects.
		Specifically:
		* For training, sums losses of each head, calls `train_op_fn` with this
		  final loss.
		* For eval, merges metrics by adding `head.name` suffix to the keys in eval
		  metrics, such as `precision/head1`, `precision/head2`.
		* For prediction, merges predictions and updates keys in prediction dict to a
		  2-tuple, `(head.name, prediction_key)`. Merges `export_outputs` such that
		  by default the first head is served.
		
		Usage:
		
		```python
		# In `input_fn` specify labels as a dict keyed by head name:
		def input_fn():
		  features = ...
		  labels1 = ...
		  labels2 = ...
		  return features, {'head1': labels1, 'head2': labels2}
		
		# In `model_fn`, specify logits as a dict keyed by head name:
		def model_fn(features, labels, mode):
		  # Create simple heads and specify head name.
		  head1 = multi_class_head(n_classes=3, name='head1')
		  head2 = binary_classification_head(name='head2')
		  # Create multi-head from two simple heads.
		  head = multi_head([head1, head2])
		  # Create logits for each head, and combine them into a dict.
		  logits1, logits2 = logit_fn()
		  logits = {'head1': logits1, 'head2': logits2}
		  # Return the merged EstimatorSpec
		  return head.create_estimator_spec(..., logits=logits, ...)
		
		# Create an estimator with this model_fn.
		estimator = tf.estimator.Estimator(model_fn=model_fn)
		estimator.train(input_fn=input_fn, steps=100)
		```
		
		Also supports `logits` as a `Tensor` of shape
		`[D0, D1, ... DN, logits_dimension]`. It will split the `Tensor` along the
		last dimension and distribute it appropriately among the heads. E.g.:
		
		```python
		def model_fn(features, labels, mode):
		  # Create simple heads and specify head name.
		  head1 = multi_class_head(n_classes=3, name='head1')
		  head2 = binary_classification_head(name='head2')
		  # Create multi-head from two simple heads.
		  head = multi_head([head1, head2])
		  # Create logits for the multihead.
		  logits = logit_fn(logits_dimension=head.logits_dimension)
		  # Return the merged EstimatorSpec
		  return head.create_estimator_spec(..., logits=logits, ...)
		```
		
		Args:
		  heads: List or tuple of `_Head` instances. All heads must have `name`
		    specified. The first head in the list is the default used at serving time.
		  head_weights: Optional list of weights, same length as `heads`. Used when
		    merging losses to calculate the weighted sum of losses from each head. If
		    `None`, all losses are weighted equally.
		
		Returns:
		  A instance of `_Head` that merges multiple heads.
		
		Raises:
		  ValueError: If `heads` is empty.
		  ValueError: If any of the `heads` does not have `name` specified.
		  ValueError: If `heads` and `head_weights` have different size.
	**/
	static public function multi_head(heads:Dynamic, ?head_weights:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}