/* This file is generated, do not edit! */
package tensorflow.keras.applications.nasnet;
@:pythonImport("tensorflow.keras.applications.nasnet") extern class Nasnet_Module {
	/**
		Instantiates a NASNet model in ImageNet mode.
		
		Reference:
		- [Learning Transferable Architectures for Scalable Image Recognition](
		    https://arxiv.org/abs/1707.07012) (CVPR 2018)
		
		Optionally loads weights pre-trained on ImageNet.
		Note that the data format convention used by the model is
		the one specified in your Keras config at `~/.keras/keras.json`.
		
		Note: each Keras Application expects a specific kind of input preprocessing.
		For NASNet, call `tf.keras.applications.nasnet.preprocess_input` on your
		inputs before passing them to the model.
		
		Args:
		    input_shape: Optional shape tuple, only to be specified
		        if `include_top` is False (otherwise the input shape
		        has to be `(331, 331, 3)` for NASNetLarge.
		        It should have exactly 3 inputs channels,
		        and width and height should be no smaller than 32.
		        E.g. `(224, 224, 3)` would be one valid value.
		    include_top: Whether to include the fully-connected
		        layer at the top of the network.
		    weights: `None` (random initialization) or
		        `imagenet` (ImageNet weights)
		        For loading `imagenet` weights, `input_shape` should be (331, 331, 3)
		    input_tensor: Optional Keras tensor (i.e. output of
		        `layers.Input()`)
		        to use as image input for the model.
		    pooling: Optional pooling mode for feature extraction
		        when `include_top` is `False`.
		        - `None` means that the output of the model
		            will be the 4D tensor output of the
		            last convolutional layer.
		        - `avg` means that global average pooling
		            will be applied to the output of the
		            last convolutional layer, and thus
		            the output of the model will be a
		            2D tensor.
		        - `max` means that global max pooling will
		            be applied.
		    classes: Optional number of classes to classify images
		        into, only to be specified if `include_top` is True, and
		        if no `weights` argument is specified.
		
		Returns:
		    A Keras model instance.
		
		Raises:
		    ValueError: in case of invalid argument for `weights`,
		        or invalid input shape.
		    RuntimeError: If attempting to run this model with a
		        backend that does not support separable convolutions.
	**/
	static public function NASNetLarge(?input_shape:Dynamic, ?include_top:Dynamic, ?weights:Dynamic, ?input_tensor:Dynamic, ?pooling:Dynamic, ?classes:Dynamic):Dynamic;
	/**
		Instantiates a Mobile NASNet model in ImageNet mode.
		
		Reference:
		- [Learning Transferable Architectures for Scalable Image Recognition](
		    https://arxiv.org/abs/1707.07012) (CVPR 2018)
		
		Optionally loads weights pre-trained on ImageNet.
		Note that the data format convention used by the model is
		the one specified in your Keras config at `~/.keras/keras.json`.
		
		Note: each Keras Application expects a specific kind of input preprocessing.
		For NASNet, call `tf.keras.applications.nasnet.preprocess_input` on your
		inputs before passing them to the model.
		
		Args:
		    input_shape: Optional shape tuple, only to be specified
		        if `include_top` is False (otherwise the input shape
		        has to be `(224, 224, 3)` for NASNetMobile
		        It should have exactly 3 inputs channels,
		        and width and height should be no smaller than 32.
		        E.g. `(224, 224, 3)` would be one valid value.
		    include_top: Whether to include the fully-connected
		        layer at the top of the network.
		    weights: `None` (random initialization) or
		        `imagenet` (ImageNet weights)
		        For loading `imagenet` weights, `input_shape` should be (224, 224, 3)
		    input_tensor: Optional Keras tensor (i.e. output of
		        `layers.Input()`)
		        to use as image input for the model.
		    pooling: Optional pooling mode for feature extraction
		        when `include_top` is `False`.
		        - `None` means that the output of the model
		            will be the 4D tensor output of the
		            last convolutional layer.
		        - `avg` means that global average pooling
		            will be applied to the output of the
		            last convolutional layer, and thus
		            the output of the model will be a
		            2D tensor.
		        - `max` means that global max pooling will
		            be applied.
		    classes: Optional number of classes to classify images
		        into, only to be specified if `include_top` is True, and
		        if no `weights` argument is specified.
		
		Returns:
		    A Keras model instance.
		
		Raises:
		    ValueError: In case of invalid argument for `weights`,
		        or invalid input shape.
		    RuntimeError: If attempting to run this model with a
		        backend that does not support separable convolutions.
	**/
	static public function NASNetMobile(?input_shape:Dynamic, ?include_top:Dynamic, ?weights:Dynamic, ?input_tensor:Dynamic, ?pooling:Dynamic, ?classes:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Decodes the prediction of an ImageNet model.
		
		Args:
		  preds: Numpy array encoding a batch of predictions.
		  top: Integer, how many top-guesses to return. Defaults to 5.
		
		Returns:
		  A list of lists of top class prediction tuples
		  `(class_name, class_description, score)`.
		  One list of tuples per sample in batch input.
		
		Raises:
		  ValueError: In case of invalid shape of the `pred` array
		    (must be 2D).
	**/
	static public function decode_predictions(preds:Dynamic, ?top:Dynamic):Dynamic;
	/**
		Preprocesses a tensor or Numpy array encoding a batch of images.
		
		Usage example with `applications.MobileNet`:
		
		```python
		i = tf.keras.layers.Input([None, None, 3], dtype = tf.uint8)
		x = tf.cast(i, tf.float32)
		x = tf.keras.applications.mobilenet.preprocess_input(x)
		core = tf.keras.applications.MobileNet()
		x = core(x)
		model = tf.keras.Model(inputs=[i], outputs=[x])
		
		image = tf.image.decode_png(tf.io.read_file('file.png'))
		result = model(image)
		```
		
		Args:
		  x: A floating point `numpy.array` or a `tf.Tensor`, 3D or 4D with 3 color
		    channels, with values in the range [0, 255].
		    The preprocessed data are written over the input data
		    if the data types are compatible. To avoid this
		    behaviour, `numpy.copy(x)` can be used.
		  data_format: Optional data format of the image tensor/array. Defaults to
		    None, in which case the global setting
		    `tf.keras.backend.image_data_format()` is used (unless you changed it,
		    it defaults to "channels_last").
		
		Returns:
		    Preprocessed `numpy.array` or a `tf.Tensor` with type `float32`.
		    
		    The inputs pixel values are scaled between -1 and 1, sample-wise.
		
		Raises:
		    
		  ValueError: In case of unknown `data_format` argument.
	**/
	static public function preprocess_input(x:Dynamic, ?data_format:Dynamic):Dynamic;
}