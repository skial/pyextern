/* This file is generated, do not edit! */
package tensorflow.python.autograph.pyct.static_analysis.reaching_fndefs;
@:pythonImport("tensorflow.python.autograph.pyct.static_analysis.reaching_fndefs") extern class Reaching_fndefs_Module {
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
	static public var print_function : Dynamic;
	/**
		Resolves reaching definitions for each symbol.
		
		Args:
		  node: ast.AST
		  source_info: transformer.SourceInfo
		  graphs: Dict[ast.FunctionDef, cfg.Graph]
		Returns:
		  ast.AST
	**/
	static public function resolve(node:Dynamic, source_info:Dynamic, graphs:Dynamic):Dynamic;
}