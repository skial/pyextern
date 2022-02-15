/* This file is generated, do not edit! */
package spacy.errors;
@:pythonImport("spacy.errors") extern class Errors_Module {
	static public var OLD_MODEL_SHORTCUTS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		To filter with warnings.filterwarnings, the [] brackets need to be escaped
	**/
	static public function _escape_warning_msg(msg:Dynamic):Dynamic;
	/**
		Customize how spaCy should handle a certain warning.
		
		error_msg (str): e.g. "W006", or a full error message
		action (str): "default", "error", "ignore", "always", "module" or "once"
	**/
	static public function filter_warning(action:Dynamic, error_msg:Dynamic):Dynamic;
	static public function setup_default_warnings():Dynamic;
}