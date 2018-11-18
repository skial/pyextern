/* This file is generated, do not edit! */
package tensorflow.python.keras.models;
@:pythonImport("tensorflow.python.keras.models") extern class Models_Module {
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
	/**
		Clone a functional `Model` instance.
		
		Model cloning is similar to calling a model on new inputs,
		except that it creates new layers (and thus new weights) instead
		of sharing the weights of the existing layers.
		
		Arguments:
		    model: Instance of `Model`.
		    input_tensors: optional list of input tensors
		        to build the model upon. If not provided,
		        placeholders will be created.
		
		Returns:
		    An instance of `Model` reproducing the behavior
		    of the original model, on top of new inputs tensors,
		    using newly instantiated weights.
		
		Raises:
		    ValueError: in case of invalid `model` argument value.
	**/
	static public function _clone_functional_model(model:Dynamic, ?input_tensors:Dynamic):Dynamic;
	/**
		Clone a `Sequential` model instance.
		
		Model cloning is similar to calling a model on new inputs,
		except that it creates new layers (and thus new weights) instead
		of sharing the weights of the existing layers.
		
		Arguments:
		    model: Instance of `Sequential`.
		    input_tensors: optional list of input tensors
		        to build the model upon. If not provided,
		        placeholders will be created.
		
		Returns:
		    An instance of `Sequential` reproducing the behavior
		    of the original model, on top of new inputs tensors,
		    using newly instantiated weights.
		
		Raises:
		    ValueError: in case of invalid `model` argument value.
	**/
	static public function _clone_sequential_model(model:Dynamic, ?input_tensors:Dynamic):Dynamic;
	/**
		Substitute for model cloning that works for subclassed models.
		
		Subclassed models cannot be cloned because their topology is not serializable.
		To "instantiate" an identical model in a new TF graph, we reuse the original
		model object, but we clear its state.
		
		After calling this function on a model instance, you can use the model
		instance as if it were a model clone (in particular you can use it in a new
		graph).
		
		This method clears the state of the input model. It is thus destructive.
		However the original state can be restored fully by calling
		`_in_place_subclassed_model_state_restoration`.
		
		Args:
		  model: Instance of a Keras model created via subclassing.
		
		Raises:
		  ValueError: In case the model uses a subclassed model as inner layer.
	**/
	static public function _in_place_subclassed_model_reset(model:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Clone a `Model` and build/compile it with the same settings used before.
		
		This function can be be run in the same graph or in a separate graph from the
		model. When using a separate graph, `in_place_reset` must be `False`.
		
		Args:
		  model: `tf.keras.Model` object. Can be Functional, Sequential, or
		    sub-classed.
		  input_tensors: Optional list of input tensors to build the model upon. If
		    not provided, placeholders will be created.
		  target_tensors: Optional list of target tensors for compiling the model. If
		    not provided, placeholders will be created.
		  custom_objects: Optional dictionary mapping string names to custom classes
		    or functions.
		  compile_clone: Boolean, whether to compile model clone (default `True`).
		  in_place_reset: Boolean, whether to reset the model in place. Only used if
		    the model is not a graph network. If the model is a subclassed model, then
		    this argument must be set to `True` (default `False`). To restore the
		    original model, use the function
		    `in_place_subclassed_model_state_restoration(model)`.
		  optimizer_iterations: An iterations variable that will be incremented by the
		    optimizer if the clone is compiled. This argument is used when a Keras
		    model is cloned into an Estimator model function, because Estimators
		    create their own global step variable.
		
		Returns:
		  Clone of the model.
		
		Raises:
		  ValueError: if trying to clone a subclassed model, and `in_place_reset` is
		    set to False.
	**/
	static public function clone_and_build_model(model:Dynamic, ?input_tensors:Dynamic, ?target_tensors:Dynamic, ?custom_objects:Dynamic, ?compile_clone:Dynamic, ?in_place_reset:Dynamic, ?optimizer_iterations:Dynamic):Dynamic;
	/**
		Clone any `Model` instance.
		
		Model cloning is similar to calling a model on new inputs,
		except that it creates new layers (and thus new weights) instead
		of sharing the weights of the existing layers.
		
		Arguments:
		    model: Instance of `Model`
		        (could be a functional model or a Sequential model).
		    input_tensors: optional list of input tensors
		        to build the model upon. If not provided,
		        placeholders will be created.
		
		Returns:
		    An instance of `Model` reproducing the behavior
		    of the original model, on top of new inputs tensors,
		    using newly instantiated weights.
		
		Raises:
		    ValueError: in case of invalid `model` argument value.
	**/
	static public function clone_model(model:Dynamic, ?input_tensors:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Restores the original state of a model after it was "reset".
		
		This undoes this action of `_in_place_subclassed_model_reset`, which is called
		in `clone_and_build_model` if `in_place_reset` is set to True.
		
		Args:
		  model: Instance of a Keras model created via subclassing, on which
		    `_in_place_subclassed_model_reset` was previously called.
	**/
	static public function in_place_subclassed_model_state_restoration(model:Dynamic):Dynamic;
	/**
		Loads a model saved via `save_model`.
		
		Arguments:
		    filepath: One of the following:
		        - String, path to the saved model
		        - `h5py.File` object from which to load the model
		    custom_objects: Optional dictionary mapping names
		        (strings) to custom classes or functions to be
		        considered during deserialization.
		    compile: Boolean, whether to compile the model
		        after loading.
		
		Returns:
		    A Keras model instance. If an optimizer was found
		    as part of the saved model, the model is already
		    compiled. Otherwise, the model is uncompiled and
		    a warning will be displayed. When `compile` is set
		    to False, the compilation is omitted without any
		    warning.
		
		Raises:
		    ImportError: if h5py is not available.
		    ValueError: In case of an invalid savefile.
	**/
	static public function load_model(filepath:Dynamic, ?custom_objects:Dynamic, ?compile:Dynamic):Dynamic;
	/**
		Instantiates a Keras model from its config.
		
		Arguments:
		    config: Configuration dictionary.
		    custom_objects: Optional dictionary mapping names
		        (strings) to custom classes or functions to be
		        considered during deserialization.
		
		Returns:
		    A Keras model instance (uncompiled).
		
		Raises:
		    TypeError: if `config` is not a dictionary.
	**/
	static public function model_from_config(config:Dynamic, ?custom_objects:Dynamic):Dynamic;
	/**
		Parses a JSON model configuration file and returns a model instance.
		
		Arguments:
		    json_string: JSON string encoding a model configuration.
		    custom_objects: Optional dictionary mapping names
		        (strings) to custom classes or functions to be
		        considered during deserialization.
		
		Returns:
		    A Keras model instance (uncompiled).
	**/
	static public function model_from_json(json_string:Dynamic, ?custom_objects:Dynamic):Dynamic;
	/**
		Parses a yaml model configuration file and returns a model instance.
		
		Arguments:
		    yaml_string: YAML string encoding a model configuration.
		    custom_objects: Optional dictionary mapping names
		        (strings) to custom classes or functions to be
		        considered during deserialization.
		
		Returns:
		    A Keras model instance (uncompiled).
		
		Raises:
		    ImportError: if yaml module is not found.
	**/
	static public function model_from_yaml(yaml_string:Dynamic, ?custom_objects:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Saves a model to a HDF5 file.
		
		The saved model contains:
		    - the model's configuration (topology)
		    - the model's weights
		    - the model's optimizer's state (if any)
		
		Thus the saved model can be reinstantiated in
		the exact same state, without any of the code
		used for model definition or training.
		
		Arguments:
		    model: Keras model instance to be saved.
		    filepath: One of the following:
		        - String, path where to save the model
		        - `h5py.File` object where to save the model
		    overwrite: Whether we should overwrite any existing
		        model at the target location, or instead
		        ask the user with a manual prompt.
		    include_optimizer: If True, save optimizer's state together.
		
		Raises:
		    ImportError: if h5py is not available.
	**/
	static public function save_model(model:Dynamic, filepath:Dynamic, ?overwrite:Dynamic, ?include_optimizer:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}