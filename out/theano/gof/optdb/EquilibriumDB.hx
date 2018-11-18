/* This file is generated, do not edit! */
package theano.gof.optdb;
@:pythonImport("theano.gof.optdb", "EquilibriumDB") extern class EquilibriumDB {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __contains__(name:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
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
	public function __getitem__(name:Dynamic):Dynamic;
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
	public function ___init__(?ignore_newtrees:Dynamic, ?tracks_on_change_inputs:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?ignore_newtrees:Dynamic, ?tracks_on_change_inputs:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __query__(q:Dynamic):Dynamic;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function add_tags(name:Dynamic, ?tags:python.VarArgs<Dynamic>):Dynamic;
	public function print_summary(?stream:Dynamic):Dynamic;
	public function query(?tags:python.VarArgs<Dynamic>, ?kwtags:python.KwArgs<Dynamic>):Dynamic;
	/**
		Parameters
		----------
		name : str
		    Name of the optimizer.
		obj
		    The optimizer to register.
		tags
		    Tag name that allow to select the optimizer.
		kwargs
		    If non empty, should contain only use_db_name_as_tag=False.
		    By default, all optimizations registered in EquilibriumDB
		    are selected when the EquilibriumDB name is used as a
		    tag. We do not want this behavior for some optimizer like
		    local_remove_all_assert. use_db_name_as_tag=False remove
		    that behavior. This mean only the optimizer name and the
		    tags specified will enable that optimization.
	**/
	public function register(name:Dynamic, obj:Dynamic, ?tags:python.VarArgs<Dynamic>, ?kwtags:python.KwArgs<Dynamic>):Dynamic;
	public function remove_tags(name:Dynamic, ?tags:python.VarArgs<Dynamic>):Dynamic;
}