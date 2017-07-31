/* This file is generated, do not edit! */
package tensorflow.contrib.keras.api.keras.applications.inception_v3;
@:pythonImport("tensorflow.contrib.keras.api.keras.applications.inception_v3") extern class Inception_v3_Module {
	/**
		Instantiates the Inception v3 architecture.
		
		Optionally loads weights pre-trained
		on ImageNet. Note that when using TensorFlow,
		for best performance you should set
		`image_data_format="channels_last"` in your Keras config
		at ~/.keras/keras.json.
		The model and the weights are compatible with both
		TensorFlow and Theano. The data format
		convention used by the model is the one
		specified in your Keras config file.
		Note that the default input image size for this model is 299x299.
		
		Arguments:
		    include_top: whether to include the fully-connected
		        layer at the top of the network.
		    weights: one of `None` (random initialization)
		        or "imagenet" (pre-training on ImageNet).
		    input_tensor: optional Keras tensor (i.e. output of `layers.Input()`)
		        to use as image input for the model.
		    input_shape: optional shape tuple, only to be specified
		        if `include_top` is False (otherwise the input shape
		        has to be `(299, 299, 3)` (with `channels_last` data format)
		        or `(3, 299, 299)` (with `channels_first` data format).
		        It should have exactly 3 inputs channels,
		        and width and height should be no smaller than 139.
		        E.g. `(150, 150, 3)` would be one valid value.
		    pooling: Optional pooling mode for feature extraction
		        when `include_top` is `False`.
		        - `None` means that the output of the model will be
		            the 4D tensor output of the
		            last convolutional layer.
		        - `avg` means that global average pooling
		            will be applied to the output of the
		            last convolutional layer, and thus
		            the output of the model will be a 2D tensor.
		        - `max` means that global max pooling will
		            be applied.
		    classes: optional number of classes to classify images
		        into, only to be specified if `include_top` is True, and
		        if no `weights` argument is specified.
		
		Returns:
		    A Keras model instance.
		
		Raises:
		    ValueError: in case of invalid argument for `weights`,
		        or invalid input shape.
	**/
	static public function InceptionV3(?include_top:Dynamic, ?weights:Dynamic, ?input_tensor:Dynamic, ?input_shape:Dynamic, ?pooling:Dynamic, ?classes:Dynamic):Dynamic;
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
		
		Arguments:
		    preds: Numpy tensor encoding a batch of predictions.
		    top: integer, how many top-guesses to return.
		
		Returns:
		    A list of lists of top class prediction tuples
		    `(class_name, class_description, score)`.
		    One list of tuples per sample in batch input.
		
		Raises:
		    ValueError: in case of invalid shape of the `pred` array
		        (must be 2D).
	**/
	static public function decode_predictions(preds:Dynamic, ?top:Dynamic):Dynamic;
	static public function preprocess_input(x:Dynamic):Dynamic;
}