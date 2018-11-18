/* This file is generated, do not edit! */
package tensorflow.contrib.data.python.ops.prefetching_ops;
@:pythonImport("tensorflow.contrib.data.python.ops.prefetching_ops") extern class Prefetching_ops_Module {
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
		A transformation that copies dataset elements to the given `target_device`. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.experimental.copy_to_device(...)`.
		
		Args:
		  target_device: The name of a device to which elements will be copied.
		  source_device: The original device on which `input_dataset` will be placed.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function copy_to_device(target_device:Dynamic, ?source_device:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		A transformation that prefetches dataset values to the given `device`. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.experimental.prefetch_to_device(...)`.
		
		NOTE: Although the transformation creates a `tf.data.Dataset`, the
		transformation must be the final `Dataset` in the input pipeline.
		
		Args:
		  device: A string. The name of a device to which elements will be prefetched.
		  buffer_size: (Optional.) The number of elements to buffer on `device`.
		    Defaults to an automatically chosen value.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function prefetch_to_device(device:Dynamic, ?buffer_size:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}