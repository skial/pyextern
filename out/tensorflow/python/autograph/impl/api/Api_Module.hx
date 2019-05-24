/* This file is generated, do not edit! */
package tensorflow.python.autograph.impl.api;
@:pythonImport("tensorflow.python.autograph.impl.api") extern class Api_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _is_not_callable(obj:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
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
	static public var division : Dynamic;
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
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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