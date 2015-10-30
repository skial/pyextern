/* This file is generated, do not edit! */
package pandas.index;
@:pythonImport("pandas.index", "IndexEngine") extern class IndexEngine {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return key in self.
	**/
	public function __contains__(key:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
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
	public function ___init__(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public var __pyx_vtable__ : Dynamic;
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
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _call_monotonic(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clear_mapping(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function get_indexer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		return an indexer suitable for takng from a non unique index
		return the labels in the same order ast the target
		and a missing indexer into the targets (which correspond
		to the -1 indicies in the results 
	**/
	public function get_indexer_non_unique(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function get_loc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		arr : 1-dimensional ndarray
	**/
	public function get_value(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var is_monotonic_decreasing : Dynamic;
	public var is_monotonic_increasing : Dynamic;
	public var is_unique : Dynamic;
	public var mapping : Dynamic;
	public var over_size_threshold : Dynamic;
	/**
		arr : 1-dimensional ndarray
	**/
	public function set_value(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var vgetter : Dynamic;
}