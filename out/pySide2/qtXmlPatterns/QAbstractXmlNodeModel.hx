/* This file is generated, do not edit! */
package pySide2.qtXmlPatterns;
@:pythonImport("PySide2.QtXmlPatterns", "QAbstractXmlNodeModel") extern class QAbstractXmlNodeModel {
	static public var FirstChild : Dynamic;
	static public var InheritNamespaces : Dynamic;
	static public var NextSibling : Dynamic;
	public function NodeCopySetting(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var Parent : Dynamic;
	static public var PreserveNamespaces : Dynamic;
	static public var PreviousSibling : Dynamic;
	public function SimpleAxis(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function attributes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function baseUri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function compareOrder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function createIndex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function documentUri(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function elementById(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function isDeepEqual(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function kind(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function name(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function namespaceBindings(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function namespaceForPrefix(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function nextFromSimpleAxis(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function nodesByIdref(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function root(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sendNamespaces(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function sourceLocation(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function stringValue(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function typedValue(args:haxe.extern.Rest<Dynamic>):Dynamic;
}