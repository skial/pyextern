/* This file is generated, do not edit! */
package tensorflow.python.util.decorator_utils;
@:pythonImport("tensorflow.python.util.decorator_utils") extern class Decorator_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Normalizes the docstring.
		
		Replaces tabs with spaces, removes leading and trailing blanks lines, and
		removes any indentation.
		
		Copied from PEP-257:
		https://www.python.org/dev/peps/pep-0257/#handling-docstring-indentation
		
		Args:
		  docstring: the docstring to normalize
		
		Returns:
		  The normalized docstring
	**/
	static public function _normalize_docstring(docstring:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Adds a deprecation notice to a docstring.
	**/
	static public function add_notice_to_docstring(doc:Dynamic, instructions:Dynamic, no_doc_str:Dynamic, suffix_str:Dynamic, notice:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function get_qualified_name(_function:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function validate_callable(func:Dynamic, decorator_name:Dynamic):Dynamic;
}