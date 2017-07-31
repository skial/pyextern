/* This file is generated, do not edit! */
package tensorflow.python.ops.distributions.distribution;
@:pythonImport("tensorflow.python.ops.distributions.distribution", "_DistributionMeta") extern class _DistributionMeta {
	public var __abstractmethods__ : Dynamic;
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __base__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __bases__ : Dynamic;
	static public var __basicsize__ : Dynamic;
	/**
		Call self as a function.
	**/
	public function __call__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	static public var __dictoffset__ : Dynamic;
	/**
		__dir__() -> list
		specialized __dir__ implementation for types
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	static public var __flags__ : Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Override for isinstance(instance, cls).
	**/
	public function __instancecheck__(instance:Dynamic):Dynamic;
	static public var __itemsize__ : Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	static public var __mro__ : Dynamic;
	static public var __name__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Control the creation of subclasses of the Distribution class.
		
		The main purpose of this method is to properly propagate docstrings
		from private Distribution methods, like `_log_prob`, into their
		public wrappers as inherited by the Distribution base class
		(e.g. `log_prob`).
		
		Args:
		  classname: The name of the subclass being created.
		  baseclasses: A tuple of parent classes.
		  attrs: A dict mapping new attributes to their values.
		
		Returns:
		  The class object.
		
		Raises:
		  TypeError: If `Distribution` is not a subclass of `BaseDistribution`, or
		    the new class is derived via multiple inheritance and the first
		    parent class is not a subclass of `BaseDistribution`.
		  AttributeError:  If `Distribution` does not implement e.g. `log_prob`.
		  ValueError:  If a `Distribution` public method lacks a docstring.
	**/
	static public function __new__(mcs:Dynamic, classname:Dynamic, baseclasses:Dynamic, attrs:Dynamic):Dynamic;
	/**
		__prepare__() -> dict
		used to create the namespace for the class statement
	**/
	static public function __prepare__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __qualname__ : Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		return memory consumption of the type object
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Override for issubclass(subclass, cls).
	**/
	public function __subclasscheck__(subclass:Dynamic):Dynamic;
	/**
		__subclasses__() -> list of immediate subclasses
	**/
	public function __subclasses__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __text_signature__ : Dynamic;
	static public var __weakrefoffset__ : Dynamic;
	static public var _abc_invalidation_counter : Dynamic;
	/**
		Debug helper to print the ABC registry.
	**/
	public function _dump_registry(?file:Dynamic):Dynamic;
	/**
		mro() -> list
		return a type's method resolution order
	**/
	public function mro(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Register a virtual subclass of an ABC.
		
		Returns the subclass, to allow usage as a class decorator.
	**/
	public function register(subclass:Dynamic):Dynamic;
}