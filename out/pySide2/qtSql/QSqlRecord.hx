/* This file is generated, do not edit! */
package pySide2.qtSql;
@:pythonImport("PySide2.QtSql", "QSqlRecord") extern class QSqlRecord {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __copy__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
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
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function append(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clear(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clearValues(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function contains(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function count(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function field(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function fieldName(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function indexOf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function insert(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isEmpty(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isGenerated(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isNull(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function keyValues(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function remove(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function replace(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setGenerated(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setNull(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function setValue(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function value(args:haxe.extern.Rest<Dynamic>):Dynamic;
}