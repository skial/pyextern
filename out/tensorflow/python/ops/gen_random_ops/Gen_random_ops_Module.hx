/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_random_ops;
@:pythonImport("tensorflow.python.ops.gen_random_ops") extern class Gen_random_ops_Module {
	static public function _InitOpDefLibrary():Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _op_def_lib : Dynamic;
	/**
		Outputs random values from a normal distribution. The parameters may each be a
		
		scalar which applies to the entire output, or a vector of length shape[0] which
		stores the parameters for each batch.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor. Batches are indexed by the 0th dimension.
		  means: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
		    The mean parameter of each batch.
		  stdevs: A `Tensor`. Must have the same type as `means`.
		    The standard deviation parameter of each batch. Must be greater than 0.
		  minvals: A `Tensor`. Must have the same type as `means`.
		    The minimum cutoff. May be -infinity.
		  maxvals: A `Tensor`. Must have the same type as `means`.
		    The maximum cutoff. May be +infinity, and must be more than the minval
		    for each batch.
		  seed: An optional `int`. Defaults to `0`.
		    If either `seed` or `seed2` are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    A second seed to avoid seed collision.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `means`.
		  A matrix of shape num_batches x samples_per_batch, filled with random
		  truncated normal values using the parameters for each row.
	**/
	static public function _parameterized_truncated_normal(shape:Dynamic, means:Dynamic, stdevs:Dynamic, minvals:Dynamic, maxvals:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs random values from the Gamma distribution(s) described by alpha.
		
		This op uses the algorithm by Marsaglia et al. to acquire samples via
		transformation-rejection from pairs of uniform and normal random variables.
		See http://dl.acm.org/citation.cfm?id=358414
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    1-D integer tensor. Shape of independent samples to draw from each
		    distribution described by the shape parameters given in alpha.
		  alpha: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
		    A tensor in which each scalar is a "shape" parameter describing the
		    associated gamma distribution.
		  seed: An optional `int`. Defaults to `0`.
		    If either `seed` or `seed2` are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    A second seed to avoid seed collision.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `alpha`.
		  A tensor with shape `shape + shape(alpha)`. Each slice
		  `[:, ..., :, i0, i1, ...iN]` contains the samples drawn for
		  `alpha[i0, i1, ...iN]`. The dtype of the output matches the dtype of alpha.
	**/
	static public function _random_gamma(shape:Dynamic, alpha:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs random values from the Poisson distribution(s) described by rate.
		
		This op uses two algorithms, depending on rate. If rate >= 10, then
		the algorithm by Hormann is used to acquire samples via
		transformation-rejection.
		See http://www.sciencedirect.com/science/article/pii/0167668793909974.
		
		Otherwise, Knuth's algorithm is used to acquire samples via multiplying uniform
		random variables.
		See Donald E. Knuth (1969). Seminumerical Algorithms. The Art of Computer
		Programming, Volume 2. Addison Wesley
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    1-D integer tensor. Shape of independent samples to draw from each
		    distribution described by the shape parameters given in rate.
		  rate: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
		    A tensor in which each scalar is a "rate" parameter describing the
		    associated poisson distribution.
		  seed: An optional `int`. Defaults to `0`.
		    If either `seed` or `seed2` are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    A second seed to avoid seed collision.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `rate`.
		  A tensor with shape `shape + shape(rate)`. Each slice
		  `[:, ..., :, i0, i1, ...iN]` contains the samples drawn for
		  `rate[i0, i1, ...iN]`. The dtype of the output matches the dtype of
		  rate.
	**/
	static public function _random_poisson(shape:Dynamic, rate:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Randomly shuffles a tensor along its first dimension.
		
		  The tensor is shuffled along dimension 0, such that each `value[j]` is mapped
		  to one and only one `output[i]`. For example, a mapping that might occur for a
		  3x2 tensor is:
		
		```prettyprint
		[[1, 2],       [[5, 6],
		 [3, 4],  ==>   [1, 2],
		 [5, 6]]        [3, 4]]
		```
		
		Args:
		  value: A `Tensor`. The tensor to be shuffled.
		  seed: An optional `int`. Defaults to `0`.
		    If either `seed` or `seed2` are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    A second seed to avoid seed collision.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `value`.
		  A tensor of same shape and type as `value`, shuffled along its first
		  dimension.
	**/
	static public function _random_shuffle(value:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs random values from a normal distribution.
		
		The generated values will have mean 0 and standard deviation 1.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  dtype: A `tf.DType` from: `tf.half, tf.float32, tf.float64`.
		    The type of the output.
		  seed: An optional `int`. Defaults to `0`.
		    If either `seed` or `seed2` are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    A second seed to avoid seed collision.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
		  A tensor of the specified shape filled with random normal values.
	**/
	static public function _random_standard_normal(shape:Dynamic, dtype:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs random values from a uniform distribution.
		
		The generated values follow a uniform distribution in the range `[0, 1)`. The
		lower bound 0 is included in the range, while the upper bound 1 is excluded.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  dtype: A `tf.DType` from: `tf.half, tf.float32, tf.float64`.
		    The type of the output.
		  seed: An optional `int`. Defaults to `0`.
		    If either `seed` or `seed2` are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    A second seed to avoid seed collision.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
		  A tensor of the specified shape filled with uniform random values.
	**/
	static public function _random_uniform(shape:Dynamic, dtype:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs random integers from a uniform distribution.
		
		The generated values are uniform integers in the range `[minval, maxval)`.
		The lower bound `minval` is included in the range, while the upper bound
		`maxval` is excluded.
		
		The random integers are slightly biased unless `maxval - minval` is an exact
		power of two.  The bias is small for values of `maxval - minval` significantly
		smaller than the range of the output (either `2^32` or `2^64`).
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  minval: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    0-D.  Inclusive lower bound on the generated integers.
		  maxval: A `Tensor`. Must have the same type as `minval`.
		    0-D.  Exclusive upper bound on the generated integers.
		  seed: An optional `int`. Defaults to `0`.
		    If either `seed` or `seed2` are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    A second seed to avoid seed collision.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `minval`.
		  A tensor of the specified shape filled with uniform random integers.
	**/
	static public function _random_uniform_int(shape:Dynamic, minval:Dynamic, maxval:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs random values from a truncated normal distribution.
		
		The generated values follow a normal distribution with mean 0 and standard
		deviation 1, except that values whose magnitude is more than 2 standard
		deviations from the mean are dropped and re-picked.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  dtype: A `tf.DType` from: `tf.half, tf.float32, tf.float64`.
		    The type of the output.
		  seed: An optional `int`. Defaults to `0`.
		    If either `seed` or `seed2` are set to be non-zero, the random number
		    generator is seeded by the given seed.  Otherwise, it is seeded by a
		    random seed.
		  seed2: An optional `int`. Defaults to `0`.
		    A second seed to avoid seed collision.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`.
		  A tensor of the specified shape filled with random truncated normal
		  values.
	**/
	static public function _truncated_normal(shape:Dynamic, dtype:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Draws samples from a multinomial distribution.
		
		Args:
		  logits: A `Tensor`. Must be one of the following types: `float32`, `float64`, `int32`, `int64`, `uint8`, `int16`, `int8`, `uint16`, `half`.
		    2-D Tensor with shape `[batch_size, num_classes]`.  Each slice `[i, :]`
		    represents the unnormalized log probabilities for all classes.
		  num_samples: A `Tensor` of type `int32`.
		    0-D.  Number of independent samples to draw for each row slice.
		  seed: An optional `int`. Defaults to `0`.
		    If either seed or seed2 is set to be non-zero, the internal random number
		    generator is seeded by the given seed.  Otherwise, a random seed is used.
		  seed2: An optional `int`. Defaults to `0`.
		    A second seed to avoid seed collision.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
		  2-D Tensor with shape `[batch_size, num_samples]`.  Each slice `[i, :]`
		  contains the drawn class labels with range `[0, num_classes)`.
	**/
	static public function multinomial(logits:Dynamic, num_samples:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
}