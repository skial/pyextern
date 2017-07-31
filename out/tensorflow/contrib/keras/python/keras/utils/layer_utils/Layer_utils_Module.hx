/* This file is generated, do not edit! */
package tensorflow.contrib.keras.python.keras.utils.layer_utils;
@:pythonImport("tensorflow.contrib.keras.python.keras.utils.layer_utils") extern class Layer_utils_Module {
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
		Converts all convolution kernels in a model from Theano to TensorFlow.
		
		Also works from TensorFlow to Theano.
		
		Arguments:
		    model: target model for the conversion.
	**/
	static public function convert_all_kernels_in_model(model:Dynamic):Dynamic;
	/**
		Utility useful when changing a convnet's `data_format`.
		
		When porting the weights of a convnet from one data format to the other,
		if the convnet includes a `Flatten` layer
		(applied to the last convolutional feature map)
		followed by a `Dense` layer, the weights of that `Dense` layer
		should be updated to reflect the new dimension ordering.
		
		Arguments:
		    dense: The target `Dense` layer.
		    previous_feature_map_shape: A shape tuple of 3 integers,
		        e.g. `(512, 7, 7)`. The shape of the convolutional
		        feature map right before the `Flatten` layer that
		        came before the target `Dense` layer.
		    target_data_format: One of "channels_last", "channels_first".
		        Set it "channels_last"
		        if converting a "chnnels_first" model to "channels_last",
		        or reciprocally.
	**/
	static public function convert_dense_weights_data_format(dense:Dynamic, previous_feature_map_shape:Dynamic, ?target_data_format:Dynamic):Dynamic;
	/**
		Converts a Numpy kernel matrix from Theano format to TensorFlow format.
		
		Also works reciprocally, since the transformation is its own inverse.
		
		Arguments:
		    kernel: Numpy array (4D or 5D).
		
		Returns:
		    The converted kernel.
		
		Raises:
		    ValueError: in case of invalid kernel shape or invalid data_format.
	**/
	static public function convert_kernel(kernel:Dynamic):Dynamic;
	/**
		Counts the number of parameters in a list of layers.
		
		Arguments:
		    layers: list of layers.
		    layer_set: set of layers already seen
		        (so that we don't count their weights twice).
		
		Returns:
		    A tuple (count of trainable weights, count of non-trainable weights.)
	**/
	static public function count_total_params(layers:Dynamic, ?layer_set:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Prints a summary of a model.
		
		Arguments:
		    model: Keras model instance.
		    line_length: total length of printed lines
		    positions: relative or absolute positions of log elements in each line.
		        If not provided, defaults to `[.33, .55, .67, 1.]`.
	**/
	static public function print_summary(model:Dynamic, ?line_length:Dynamic, ?positions:Dynamic):Dynamic;
}