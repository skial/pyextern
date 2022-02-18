/* This file is generated, do not edit! */
package tensorflow.python.util.keras_deps;
@:pythonImport("tensorflow.python.util.keras_deps") extern class Keras_deps_Module {
	/**
		Returns currently active `CallContext`.
	**/
	static public function _KERAS_CALL_CONTEXT_FUNCTION():Dynamic;
	/**
		Resets all state generated by Keras.
		
		Keras manages a global state, which it uses to implement the Functional
		model-building API and to uniquify autogenerated layer names.
		
		If you are creating many models in a loop, this global state will consume
		an increasing amount of memory over time, and you may want to clear it.
		Calling `clear_session()` releases the global state: this helps avoid clutter
		from old models and layers, especially when memory is limited.
		
		Example 1: calling `clear_session()` when creating models in a loop
		
		```python
		for _ in range(100):
		  # Without `clear_session()`, each iteration of this loop will
		  # slightly increase the size of the global state managed by Keras
		  model = tf.keras.Sequential([tf.keras.layers.Dense(10) for _ in range(10)])
		
		for _ in range(100):
		  # With `clear_session()` called at the beginning,
		  # Keras starts with a blank state at each iteration
		  # and memory consumption is constant over time.
		  tf.keras.backend.clear_session()
		  model = tf.keras.Sequential([tf.keras.layers.Dense(10) for _ in range(10)])
		```
		
		Example 2: resetting the layer name generation counter
		
		>>> import tensorflow as tf
		>>> layers = [tf.keras.layers.Dense(10) for _ in range(10)]
		>>> new_layer = tf.keras.layers.Dense(10)
		>>> print(new_layer.name)
		dense_10
		>>> tf.keras.backend.set_learning_phase(1)
		>>> print(tf.keras.backend.learning_phase())
		1
		>>> tf.keras.backend.clear_session()
		>>> new_layer = tf.keras.layers.Dense(10)
		>>> print(new_layer.name)
		dense
	**/
	static public function _KERAS_CLEAR_SESSION_FUNCTION():Dynamic;
	/**
		Returns the TF session to be used by the backend.
		
		If a default TensorFlow session is available, we will return it.
		
		Else, we will return the global Keras session assuming it matches
		the current graph.
		
		If no global Keras session exists at this point:
		we will create a new global session.
		
		Note that you can manually set the global session
		via `K.set_session(sess)`.
		
		Args:
		    op_input_list: An option sequence of tensors or ops, which will be used
		      to determine the current graph. Otherwise the default graph will be
		      used.
		
		Returns:
		    A TensorFlow session.
	**/
	static public function _KERAS_GET_SESSION_FUNCTION(?op_input_list:Dynamic):Dynamic;
	/**
		Loads a model saved via `model.save()`.
		
		Usage:
		
		>>> model = tf.keras.Sequential([
		...     tf.keras.layers.Dense(5, input_shape=(3,)),
		...     tf.keras.layers.Softmax()])
		>>> model.save('/tmp/model')
		>>> loaded_model = tf.keras.models.load_model('/tmp/model')
		>>> x = tf.random.uniform((10, 3))
		>>> assert np.allclose(model.predict(x), loaded_model.predict(x))
		
		Note that the model weights may have different scoped names after being
		loaded. Scoped names include the model/layer names, such as
		`"dense_1/kernel:0"`. It is recommended that you use the layer properties to
		access specific variables, e.g. `model.get_layer("dense_1").kernel`.
		
		Args:
		    filepath: One of the following:
		        - String or `pathlib.Path` object, path to the saved model
		        - `h5py.File` object from which to load the model
		    custom_objects: Optional dictionary mapping names
		        (strings) to custom classes or functions to be
		        considered during deserialization.
		    compile: Boolean, whether to compile the model
		        after loading.
		    options: Optional `tf.saved_model.LoadOptions` object that specifies
		      options for loading from SavedModel.
		
		Returns:
		    A Keras model instance. If the original model was compiled, and saved with
		    the optimizer, then the returned model will be compiled. Otherwise, the
		    model will be left uncompiled. In the case that an uncompiled model is
		    returned, a warning is displayed if the `compile` argument is set to
		    `True`.
		
		Raises:
		    ImportError: if loading from an hdf5 file and h5py is not available.
		    IOError: In case of an invalid savefile.
	**/
	static public function _KERAS_LOAD_MODEL_FUNCTION(filepath:Dynamic, ?custom_objects:Dynamic, ?compile:Dynamic, ?options:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public function get_call_context_function():Dynamic;
	static public function get_clear_session_function():Dynamic;
	static public function get_get_session_function():Dynamic;
	static public function get_load_model_function():Dynamic;
	static public var print_function : Dynamic;
	static public function register_call_context_function(func:Dynamic):Dynamic;
	static public function register_clear_session_function(func:Dynamic):Dynamic;
	static public function register_get_session_function(func:Dynamic):Dynamic;
	static public function register_load_model_function(func:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}