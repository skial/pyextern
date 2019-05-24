/* This file is generated, do not edit! */
package tensorflow.python.autograph;
@:pythonImport("tensorflow.python.autograph") extern class Autograph_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _allowed_symbols : Dynamic;
	/**
		Decorator that compiles a function to use TensorFlow ops.
		
		The decorator is dynamic - it recompiles the target whenever the decorated
		function is called. This means the parameter values are known at conversion.
		It also means that repeated calls with different types of parameters will be
		correctly processed.
		
		Args:
		  recursive: bool, whether to recursively convert any functions or classes
		    that the converted function may use.
		  verbose: converter.Verbosity, the level of verbosity.
		  optional_features: converted.Feature, allows toggling optional or
		    experimental features. When set to None, only the core features are
		    enabled.
		
		Returns:
		  Callable, a decorator that converts the given function into an equivalent
		  function that uses TensorFlow ops.
	**/
	static public function convert(?recursive:Dynamic, ?verbose:Dynamic, ?optional_features:Dynamic):Dynamic;
	/**
		Compiles a function call inline. For internal use only.
	**/
	static public function converted_call(f:Dynamic, owner:Dynamic, options:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Decorator that suppresses the conversion of a function.
		
		See also: docs/pyfunc_dtypes.md
		
		Args:
		  run_as: RunMode, specifies how to use the function in TensorFlow.
		  return_dtypes: Optional[Iterable[ Union[tf.DType,
		    utils.py_func.MatchDType]]], the return data types of the converted
		    function, if run_as is RunMode.PY_FUNC. Ignored otherwise. May be set to
		    None if the function has no return values.
		
		Returns:
		  Callable, a decorator that wraps the original function.
	**/
	static public function do_not_convert(?run_as:Dynamic, ?return_dtypes:Dynamic):Dynamic;
	/**
		Context manager that rewrites runtime errors.
		
		This context manager will rewrite runtime errors so that their traceback
		is relative to the original code before conversion.
		
		Use with the output of to_graph, and wrap the execution of respective ops.
		Example:
		
		  converted_my_func = ag.to_graph(my_func)
		  ops = converted_my_func(...)
		
		  with ag.improved_errors(converted_my_func):
		    sess.run(ops)
		
		Args:
		  converted_function: Callable[..., Any], the output of a to_graph call
		
		Yields:
		  None
		
		Raises:
		  TfRuntimeError: if any OpError originates in the converted code, it will
		      be wrapped into a TfRuntimeError
		  ValueError: If converted_function is not generated by AutoGraph
	**/
	static public function improved_errors(converted_function:Dynamic):Dynamic;
	/**
		Indicates that the entity is expected hold items of specified type/shape.
		
		The staged TensorFlow ops will reflect and assert this data type. Ignored
		otherwise.
		
		Args:
		  entity: The entity to annotate.
		  dtype: TensorFlow dtype value to assert for entity.
		  shape: Optional shape to assert for entity.
	**/
	static public function set_element_type(entity:Dynamic, dtype:Dynamic, ?shape:Dynamic):Dynamic;
	/**
		Specifies additional arguments to be passed to the enclosing while_loop.
		
		The parameters apply to and only to the immediately enclosing loop. It only
		has effect if the loop is staged as a TF while_loop; otherwise the parameters
		have no effect.
		
		Args:
		  parallel_iterations: See tf.while_loop.
		  back_prop: See tf.while_loop.
		  swap_memory: See tf.while_loop.
		  maximum_iterations: See tf.while_loop.
	**/
	static public function set_loop_options(?parallel_iterations:Dynamic, ?back_prop:Dynamic, ?swap_memory:Dynamic, ?maximum_iterations:Dynamic):Dynamic;
	/**
		Stacks the input, if it admits the notion of stacking.
		
		For example, a list of tensors can be stacked into a larger tensor. This
		function is similar to tf.stack, but it accepts non-lists and lists of
		non-tensors as arguments. In the latter case, the function does nothing.
		
		Args:
		  list_or_tensor: Any
		  element_dtype: tf.DType, optional dtypedtype for the elements in the list.
		      Required if the input is stackable, and the list is untyped.
		  strict: bool, if True an error is raised if the input is not stackable.
		      Otherwise the function is a no-op.
		
		Returns:
		  Any, if the input is stackable, the result will be a tf.Tensor. Otherwise,
		  if strict=False, the result will be list_or_tensor.
		
		Raises:
		  ValueError: if strict=True and the input is not stackable.
	**/
	static public function stack(list_or_tensor:Dynamic, ?element_dtype:Dynamic, ?strict:Dynamic):Dynamic;
	/**
		Creates an tensor list and populates it with the given elements.
		
		This function provides a more uniform access to tensor lists and tensor
		arrays, and allows optional initialization.
		
		Note: this function is a simplified wrapper. If you need greater control,
		it is recommended to use the underlying implementation directly.
		
		Args:
		  elements: Iterable[tf.Tensor, ...], the elements to initially fill the list
		      with
		  element_dtype: Optional[tf.DType], data type for the elements in the list;
		      required if the list is empty
		  element_shape: Optional[tf.TensorShape], shape for the elements in the list;
		      required if the list is empty
		  use_tensor_array: bool, whether to use the more compatible but restrictive
		      tf.TensorArray implementation
		Returns:
		  Union[tf.Tensor, tf.TensorArray], the new list.
		Raises:
		  ValueError: for invalid arguments
	**/
	static public function tensor_list(elements:Dynamic, ?element_dtype:Dynamic, ?element_shape:Dynamic, ?use_tensor_array:Dynamic):Dynamic;
	/**
		Similar to `to_graph`, but returns Python source code as a string.
		
		Also see: `tf.autograph.to_graph`.
		
		`to_graph` returns the Python source code that can be used to generate a
		TensorFlow graph that is functionally identical to the input Python code.
		
		Args:
		  entity: Python callable or class to convert.
		  recursive: Whether to recursively convert any functions that the
		    converted function may call.
		  arg_values: Optional dict of value hints for symbols including
		    function arguments mapping string names to actual values. For example,
		    `arg_values={'a': 1}` will map the variable `a` to the value `1`.
		  arg_types: Optional dict of type hints for symbols including function
		    arguments. Type hints allow specifying just the type of a variable, rather
		    than a specific value.
		  indentation: The string to use for indenting. Typically two or four spaces,
		    or just the tab character.
		  experimental_optional_features: `None`, a tuple of, or a single
		    `tf.autograph.experimental.Feature` value. Controls the use of
		    optional features in the conversion process.
		  experimental_partial_types: A `set` of `type` values, reserved for internal
		    use.
		
		Returns:
		  The converted code as string.
	**/
	static public function to_code(entity:Dynamic, ?recursive:Dynamic, ?arg_values:Dynamic, ?arg_types:Dynamic, ?indentation:Dynamic, ?experimental_optional_features:Dynamic, ?experimental_partial_types:Dynamic):Dynamic;
	/**
		Converts a Python entity into a TensorFlow graph.
		
		Also see: `tf.autograph.to_code`, `tf.function`.
		
		Unlike `tf.function`, `to_graph` is a low-level transpiler that converts
		Python code to TensorFlow graph code. It does not implement any caching,
		variable management or create any actual ops, and is best used where greater
		control over the generated TensorFlow graph is desired. Another difference
		from `tf.function` is that `to_graph` will not wrap the graph into a
		TensorFlow function or a Python callable. Internally, `tf.function` uses
		`to_graph`.
		
		_Example Usage_
		
		```python
		  def foo(x):
		    if x > 0:
		      y = x * x
		    else:
		      y = -x
		    return y
		
		  converted_foo = to_graph(foo)
		
		  x = tf.constant(1)
		  y = converted_foo(x)  # converted_foo is a TensorFlow Op-like.
		  assert is_tensor(y)
		```
		
		Supported Python entities include:
		  * functions
		  * classes
		  * object methods
		
		Functions are converted into new functions with converted code.
		
		Classes are converted by generating a new class whose methods use converted
		code.
		
		Methods are converted into unbound function that have an additional first
		argument called `self`.
		
		Args:
		  entity: Python callable or class to convert.
		  recursive: Whether to recursively convert any functions that the
		    converted function may call.
		  arg_values: Optional dict of value hints for symbols including
		    function arguments mapping string names to actual values. For example,
		    `arg_values={'a': 1}` will map the variable `a` to the value `1`.
		  arg_types: Optional dict of type hints for symbols including function
		    arguments. Type hints allow specifying just the type of a variable, rather
		    than a specific value.
		  experimental_optional_features: `None`, a tuple of, or a single
		    `tf.autograph.experimental.Feature` value. Controls the use of
		    optional features in the conversion process.
		  experimental_strip_decorators: A tuple specifying decorators that should be
		    excluded from the compiled output. By default, when converting a function
		    before the decorators are applied, the compiled output will include those
		    decorators.
		  experimental_verbose: The level of printing verbosity to use, as a
		    `tf.autograph.experimental.Verbosity` value.
		  experimental_partial_types: A `set` of `type` values, reserved for internal
		    use.
		
		Returns:
		  Same as `entity`, the converted Python function or class.
		
		Raises:
		  ValueError: If the entity could not be converted.
	**/
	static public function to_graph(entity:Dynamic, ?recursive:Dynamic, ?arg_values:Dynamic, ?arg_types:Dynamic, ?experimental_optional_features:Dynamic, ?experimental_strip_decorators:Dynamic, ?experimental_verbose:Dynamic, ?experimental_partial_types:Dynamic):Dynamic;
}