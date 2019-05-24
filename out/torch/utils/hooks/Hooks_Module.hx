/* This file is generated, do not edit! */
package torch.utils.hooks;
@:pythonImport("torch.utils.hooks") extern class Hooks_Module {
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
	static public var unicode_literals : Dynamic;
	/**
		Decorator which marks a function as an unserializable hook.
		This suppresses warnings that would otherwise arise if you attempt
		to serialize a tensor that has a hook.
	**/
	static public function unserializable_hook(f:Dynamic):Dynamic;
	static public function warn_if_has_hooks(tensor:Dynamic):Dynamic;
}