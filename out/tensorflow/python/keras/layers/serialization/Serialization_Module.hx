/* This file is generated, do not edit! */
package tensorflow.python.keras.layers.serialization;
@:pythonImport("tensorflow.python.keras.layers.serialization") extern class Serialization_Module {
	/**
		`Input()` is used to instantiate a Keras tensor.
		
		A Keras tensor is a tensor object from the underlying backend
		(Theano or TensorFlow), which we augment with certain
		attributes that allow us to build a Keras model
		just by knowing the inputs and outputs of the model.
		
		For instance, if a, b and c are Keras tensors,
		it becomes possible to do:
		`model = Model(input=[a, b], output=c)`
		
		The added Keras attribute is:
		    `_keras_history`: Last layer applied to the tensor.
		        the entire layer graph is retrievable from that layer,
		        recursively.
		
		Arguments:
		    shape: A shape tuple (integers), not including the batch size.
		        For instance, `shape=(32,)` indicates that the expected input
		        will be batches of 32-dimensional vectors.
		    batch_size: optional static batch size (integer).
		    name: An optional name string for the layer.
		        Should be unique in a model (do not reuse the same name twice).
		        It will be autogenerated if it isn't provided.
		    dtype: The data type expected by the input, as a string
		        (`float32`, `float64`, `int32`...)
		    sparse: A boolean specifying whether the placeholder
		        to be created is sparse.
		    tensor: Optional existing tensor to wrap into the `Input` layer.
		        If set, the layer will not create a placeholder tensor.
		    **kwargs: deprecated arguments support.
		
		Returns:
		    A tensor.
		
		Example:
		
		    ```python
		    # this is a logistic regression in Keras
		    x = Input(shape=(32,))
		    y = Dense(16, activation='softmax')(x)
		    model = Model(x, y)
		    ```
		
		Raises:
		  ValueError: in case of invalid arguments.
	**/
	static public function Input(?shape:Dynamic, ?batch_size:Dynamic, ?name:Dynamic, ?dtype:Dynamic, ?sparse:Dynamic, ?tensor:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Functional interface to the `Add` layer.
		
		Arguments:
		    inputs: A list of input tensors (at least 2).
		    **kwargs: Standard layer keyword arguments.
		
		Returns:
		    A tensor, the sum of the inputs.
		
		Examples:
		
		```python
		    import keras
		
		    input1 = keras.layers.Input(shape=(16,))
		    x1 = keras.layers.Dense(8, activation='relu')(input1)
		    input2 = keras.layers.Input(shape=(32,))
		    x2 = keras.layers.Dense(8, activation='relu')(input2)
		    added = keras.layers.add([x1, x2])
		
		    out = keras.layers.Dense(4)(added)
		    model = keras.models.Model(inputs=[input1, input2], outputs=out)
		```
	**/
	static public function add(inputs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Functional interface to the `Average` layer.
		
		Arguments:
		    inputs: A list of input tensors (at least 2).
		    **kwargs: Standard layer keyword arguments.
		
		Returns:
		    A tensor, the average of the inputs.
	**/
	static public function average(inputs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Functional interface to the `Concatenate` layer.
		
		Arguments:
		    inputs: A list of input tensors (at least 2).
		    axis: Concatenation axis.
		    **kwargs: Standard layer keyword arguments.
		
		Returns:
		    A tensor, the concatenation of the inputs alongside axis `axis`.
	**/
	static public function concatenate(inputs:Dynamic, ?axis:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Instantiates a layer from a config dictionary.
		
		Arguments:
		    config: dict of the form {'class_name': str, 'config': dict}
		    custom_objects: dict mapping class names (or function names)
		        of custom (non-Keras) objects to class/functions
		
		Returns:
		    Layer instance (may be Model, Sequential, Layer...)
	**/
	static public function deserialize(config:Dynamic, ?custom_objects:Dynamic):Dynamic;
	static public function deserialize_keras_object(identifier:Dynamic, ?module_objects:Dynamic, ?custom_objects:Dynamic, ?printable_module_name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Functional interface to the `Dot` layer.
		
		Arguments:
		    inputs: A list of input tensors (at least 2).
		    axes: Integer or tuple of integers,
		        axis or axes along which to take the dot product.
		    normalize: Whether to L2-normalize samples along the
		        dot product axis before taking the dot product.
		        If set to True, then the output of the dot product
		        is the cosine proximity between the two samples.
		    **kwargs: Standard layer keyword arguments.
		
		Returns:
		    A tensor, the dot product of the samples from the inputs.
	**/
	static public function dot(inputs:Dynamic, axes:Dynamic, ?normalize:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a mask representing connectivity of a locally-connected operation.
		
		This method returns a masking tensor of 0s and 1s (of type `dtype`) that,
		when element-wise multiplied with a fully-connected weight tensor, masks out
		the weights between disconnected input-output pairs and thus implements local
		connectivity through a sparse fully-connected weight tensor.
		
		Assume an unshared convolution with given parameters is applied to an input
		having N spatial dimensions with `input_shape = (d_in1, ..., d_inN)`
		to produce an output with spatial shape `(d_out1, ..., d_outN)` (determined
		by layer parameters such as `strides`).
		
		This method returns a mask which can be broadcast-multiplied (element-wise)
		with a 2*(N+1)-D weight matrix (equivalent to a fully-connected layer between
		(N+1)-D activations (N spatial + 1 channel dimensions for input and output)
		to make it perform an unshared convolution with given `kernel_shape`,
		`strides`, `padding` and `data_format`.
		
		Arguments:
		  input_shape: tuple of size N: `(d_in1, ..., d_inN)`
		               spatial shape of the input.
		  kernel_shape: tuple of size N, spatial shape of the convolutional kernel
		                / receptive field.
		  strides: tuple of size N, strides along each spatial dimension.
		  padding: type of padding, string `"same"` or `"valid"`.
		  data_format: a string, `"channels_first"` or `"channels_last"`.
		  dtype: type of the layer operation, e.g. `tf.float64`.
		
		Returns:
		  a `dtype`-tensor of shape
		  `(1, d_in1, ..., d_inN, 1, d_out1, ..., d_outN)`
		  if `data_format == `"channels_first"`, or
		  `(d_in1, ..., d_inN, 1, d_out1, ..., d_outN, 1)`
		  if `data_format == "channels_last"`.
		
		Raises:
		  ValueError: if `data_format` is neither `"channels_first"` nor
		              `"channels_last"`.
	**/
	static public function get_locallyconnected_mask(input_shape:Dynamic, kernel_shape:Dynamic, strides:Dynamic, padding:Dynamic, data_format:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Apply N-D convolution with un-shared weights using a single matmul call.
		
		This method outputs `inputs . (kernel * kernel_mask)`
		(with `.` standing for matrix-multiply and `*` for element-wise multiply)
		and requires a precomputed `kernel_mask` to zero-out weights in `kernel` and
		hence perform the same operation as a convolution with un-shared
		(the remaining entries in `kernel`) weights. It also does the necessary
		reshapes to make `inputs` and `kernel` 2-D and `output` (N+2)-D.
		
		Arguments:
		    inputs: (N+2)-D tensor with shape
		        `(batch_size, channels_in, d_in1, ..., d_inN)`
		        or
		        `(batch_size, d_in1, ..., d_inN, channels_in)`.
		    kernel: the unshared weights for N-D convolution,
		        an (N+2)-D tensor of shape:
		        `(d_in1, ..., d_inN, channels_in, d_out2, ..., d_outN, channels_out)`
		        or
		        `(channels_in, d_in1, ..., d_inN, channels_out, d_out2, ..., d_outN)`,
		        with the ordering of channels and spatial dimensions matching
		        that of the input.
		        Each entry is the weight between a particular input and
		        output location, similarly to a fully-connected weight matrix.
		    kernel_mask: a float 0/1 mask tensor of shape:
		         `(d_in1, ..., d_inN, 1, d_out2, ..., d_outN, 1)`
		         or
		         `(1, d_in1, ..., d_inN, 1, d_out2, ..., d_outN)`,
		         with the ordering of singleton and spatial dimensions
		         matching that of the input.
		         Mask represents the connectivity pattern of the layer and is
		         precomputed elsewhere based on layer parameters: stride,
		         padding, and the receptive field shape.
		    output_shape: a tuple of (N+2) elements representing the output shape:
		        `(batch_size, channels_out, d_out1, ..., d_outN)`
		        or
		        `(batch_size, d_out1, ..., d_outN, channels_out)`,
		        with the ordering of channels and spatial dimensions matching that of
		        the input.
		
		Returns:
		    Output (N+2)-D tensor with shape `output_shape`.
	**/
	static public function local_conv_matmul(inputs:Dynamic, kernel:Dynamic, kernel_mask:Dynamic, output_shape:Dynamic):Dynamic;
	/**
		Reshapes an N-dimensional tensor into a 2D tensor.
		
		Dimensions before (excluding) and after (including) `split_dim` are grouped
		together.
		
		Arguments:
		  tensor: a tensor of shape `(d0, ..., d(N-1))`.
		  split_dim: an integer from 1 to N-1, index of the dimension to group
		      dimensions before (excluding) and after (including).
		
		Returns:
		  Tensor of shape
		  `(d0 * ... * d(split_dim-1), d(split_dim) * ... * d(N-1))`.
	**/
	static public function make_2d(tensor:Dynamic, split_dim:Dynamic):Dynamic;
	/**
		Functional interface to the `Maximum` layer.
		
		Arguments:
		    inputs: A list of input tensors (at least 2).
		    **kwargs: Standard layer keyword arguments.
		
		Returns:
		    A tensor, the element-wise maximum of the inputs.
	**/
	static public function maximum(inputs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Functional interface to the `Minimum` layer.
		
		Arguments:
		    inputs: A list of input tensors (at least 2).
		    **kwargs: Standard layer keyword arguments.
		
		Returns:
		    A tensor, the element-wise minimum of the inputs.
	**/
	static public function minimum(inputs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Functional interface to the `Multiply` layer.
		
		Arguments:
		    inputs: A list of input tensors (at least 2).
		    **kwargs: Standard layer keyword arguments.
		
		Returns:
		    A tensor, the element-wise product of the inputs.
	**/
	static public function multiply(inputs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	static public function serialize(layer:Dynamic):Dynamic;
	/**
		Functional interface to the `Subtract` layer.
		
		Arguments:
		    inputs: A list of input tensors (exactly 2).
		    **kwargs: Standard layer keyword arguments.
		
		Returns:
		    A tensor, the difference of the inputs.
		
		Examples:
		
		```python
		    import keras
		
		    input1 = keras.layers.Input(shape=(16,))
		    x1 = keras.layers.Dense(8, activation='relu')(input1)
		    input2 = keras.layers.Input(shape=(32,))
		    x2 = keras.layers.Dense(8, activation='relu')(input2)
		    subtracted = keras.layers.subtract([x1, x2])
		
		    out = keras.layers.Dense(4)(subtracted)
		    model = keras.models.Model(inputs=[input1, input2], outputs=out)
		```
	**/
	static public function subtract(inputs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}