/* This file is generated, do not edit! */
package matplotlib.backends.backend_qt5agg;
@:pythonImport("matplotlib.backends.backend_qt5agg") extern class Backend_qt5agg_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var backend_version : Dynamic;
	static public function draw_if_interactive():Dynamic;
	/**
		Create a new figure manager instance.
	**/
	static public function new_figure_manager(num:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a new figure manager instance for the given figure.
	**/
	static public function new_figure_manager_given_figure(num:Dynamic, figure:Dynamic):Dynamic;
	/**
		Show all figures.
		
		`show` blocks by calling `mainloop` if *block* is ``True``, or if it
		is ``None`` and we are neither in IPython's ``%pylab`` mode, nor in
		`interactive` mode.
	**/
	static public function show(?block:Dynamic):Dynamic;
}