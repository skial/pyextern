/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.datasets.text_datasets;
@:pythonImport("tensorflow.contrib.learn.python.learn.datasets.text_datasets") extern class Text_datasets_Module {
	static public var DBPEDIA_URL : Dynamic;
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
		Decorator for marking functions or methods deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called. It has the following format:
		
		  <function> (from <module>) is deprecated and will be removed after <date>.
		  Instructions for updating:
		  <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated)' is appended
		to the first line of the docstring and a deprecation notice is prepended
		to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None.
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  warn_once: Boolean. Set to `True` to warn only the first time the decorated
		    function is called. Otherwise, every call will log a warning.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, or instructions are
		    empty.
	**/
	static public function deprecated(date:Dynamic, instructions:Dynamic, ?warn_once:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Get DBpedia datasets from CSV files. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		See contrib/learn/README.md
	**/
	static public function load_dbpedia(?size:Dynamic, ?test_with_fake_data:Dynamic):Dynamic;
	/**
		Download if DBpedia data is not present. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		See contrib/learn/README.md
	**/
	static public function maybe_download_dbpedia(data_dir:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}