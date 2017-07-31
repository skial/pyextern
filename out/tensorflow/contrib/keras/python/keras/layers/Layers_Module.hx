/* This file is generated, do not edit! */
package tensorflow.contrib.keras.python.keras.layers;
@:pythonImport("tensorflow.contrib.keras.python.keras.layers") extern class Layers_Module {
	/**
		`Input()` is used to instantiate a Keras tensor.
		
		A Keras tensor is a tensor object from the underlying backend
		(Theano or TensorFlow), which we augment with certain
		attributes that allow us to build a Keras model
		just by knowing the inputs and outputs of the model.
		
		For instance, if a, b and c and Keras tensors,
		it becomes possible to do:
		`model = Model(input=[a, b], output=c)`
		
		The added Keras attribute is:
		    `_keras_history`: Last layer applied to the tensor.
		        the entire layer graph is retrievable from that layer,
		        recursively.
		
		Arguments:
		    shape: A shape tuple (integer), not including the batch size.
		        For instance, `shape=(32,)` indicates that the expected input
		        will be batches of 32-dimensional vectors.
		    batch_shape: A shape tuple (integer), including the batch size.
		        For instance, `batch_shape=(10, 32)` indicates that
		        the expected input will be batches of 10 32-dimensional vectors.
		        `batch_shape=(None, 32)` indicates batches of an arbitrary number
		        of 32-dimensional vectors.
		    name: An optional name string for the layer.
		        Should be unique in a model (do not reuse the same name twice).
		        It will be autogenerated if it isn't provided.
		    dtype: The data type expected by the input, as a string
		        (`float32`, `float64`, `int32`...)
		    sparse: A boolean specifying whether the placeholder
		        to be created is sparse.
		    tensor: Optional existing tensor to wrap into the `Input` layer.
		        If set, the layer will not create a placeholder tensor.
		
		Returns:
		    A tensor.
		
		Example:
		
		    ```python
		    # this is a logistic regression in Keras
		    x = Input(shape=(32,))
		    y = Dense(16, activation='softmax')(x)
		    model = Model(x, y)
		    ```
	**/
	static public function Input(?shape:Dynamic, ?batch_shape:Dynamic, ?name:Dynamic, ?dtype:Dynamic, ?sparse:Dynamic, ?tensor:Dynamic):Dynamic;
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
		Functional interface to the `Add` layer.
		
		Arguments:
		    inputs: A list of input tensors (at least 2).
		    **kwargs: Standard layer keyword arguments.
		
		Returns:
		    A tensor, the sum of the inputs.
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
		Serializes a user defined function.
		
		Arguments:
		    func: the function to serialize.
		
		Returns:
		    A tuple `(code, defaults, closure)`.
	**/
	static public function func_dump(func:Dynamic):Dynamic;
	/**
		Deserializes a user defined function.
		
		Arguments:
		    code: bytecode of the function.
		    defaults: defaults of the function.
		    closure: closure of the function.
		    globs: dictionary of global objects.
		
		Returns:
		    A function object.
	**/
	static public function func_load(code:Dynamic, ?defaults:Dynamic, ?closure:Dynamic, ?globs:Dynamic):Dynamic;
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
}